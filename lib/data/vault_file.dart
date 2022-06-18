import 'dart:convert';
import 'package:encrypt/encrypt.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_file.freezed.dart';
part 'vault_file.g.dart';

// Vault file schema (.ppv.json)
//
// {
//    header: {
//        name: String,
//        description: String
//    },
//    contents: {
//        data: String,
//        iv: String
//    },
// TODO: Remove the path field
//    path: String
// }


abstract class ToJsonAble<T> {
  Map<String, dynamic> toJson();
}

@unfreezed
class EncryptedData<T extends ToJsonAble> with _$EncryptedData<T> {
  EncryptedData._();
  factory EncryptedData.encrypted(String data, IV iv) = _Encrypted;
  factory EncryptedData.decrypted(@EncTypeConverter() T data, IV iv) = _Decrypted;

  static final Map<Type, dynamic Function(Map<String, dynamic>)> fromJsonRegistry = {
    VaultContents: VaultContents.fromJson,
    VaultPassword: VaultPassword.fromJson
  };

  EncryptedData<T> encrypt(String rawKey) {
    var decryptedData = map(
      decrypted: (data) => jsonEncode(data.toJson()),
      encrypted: (data) => throw Error()
    );

    final key = Key.fromBase64(rawKey);
    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(decryptedData, iv: iv);
    return EncryptedData<T>.encrypted(encrypted.base64, iv);
  }

  EncryptedData<T> decrypt(String rawKey) {
    var encryptedData = when(
      decrypted: (data, iv) => throw Error(),
      encrypted: (data, iv) => data
    );

    final key = Key.fromBase64(rawKey);
    final encrypter = Encrypter(AES(key));
    final rawDecrypted = encrypter.decrypt(Encrypted.fromBase64(encryptedData), iv: iv);
    
    var decryptedMap = jsonDecode(rawDecrypted);

    if (!EncryptedData.fromJsonRegistry.containsKey(T)) {
      throw Exception('No fromJson for encrypted data type $T');
    }

    var decrypted = EncryptedData.fromJsonRegistry[T]!(decryptedMap);

    return EncryptedData<T>.decrypted(decrypted, iv);
  }

  factory EncryptedData.fromJson(Map<String, dynamic> map) {
    return EncryptedData<T>.encrypted(map['data'], IV.fromBase64(map['iv']));
  }

  Map<String, dynamic> toJson() {
    return when(
      decrypted: (data, iv) => data.toJson(),
      encrypted: (data, iv) => { 'data': data, 'iv': iv.base64 }
    );
  }
}

class EncTypeConverter<T extends ToJsonAble> extends JsonConverter<T, Map<String, dynamic>> {
  const EncTypeConverter();

  @override
  T fromJson(Map<String, dynamic> json) {
    if (!EncryptedData.fromJsonRegistry.containsKey(T)) {
      throw Exception('No fromJson for encrypted data type $T');
    }
    return EncryptedData.fromJsonRegistry[T]!(json);
  }

  @override
  Map<String, dynamic> toJson(T object) {
    return object.toJson();
  }
}

@unfreezed
class VaultFile with _$VaultFile {
  VaultFile._();
  
  factory VaultFile({
    required VaultHeader header,
    required EncryptedData<VaultContents> contents,
    required String path
  }) = _VaultFile;

  factory VaultFile.fromJson(Map<String, dynamic> json) => _$VaultFileFromJson(json);
}

@unfreezed
class VaultHeader with _$VaultHeader {
  VaultHeader._();
  factory VaultHeader({
    required String name,
    required String description
  }) = _VaultHeader;

  factory VaultHeader.fromJson(Map<String, dynamic> json) => _$VaultHeaderFromJson(json);
}

@unfreezed
class VaultContents extends ToJsonAble with _$VaultContents {
  factory VaultContents({
    required List<VaultComponent> components
  }) = _VaultContents;

  factory VaultContents.fromJson(Map<String, dynamic> json) => _$VaultContentsFromJson(json);
}

@unfreezed
class VaultComponent with _$VaultComponent {
  factory VaultComponent.group(VaultGroup group) = Group;
  factory VaultComponent.item(VaultItem item) = Item;

  factory VaultComponent.fromJson(Map<String, dynamic> json) => _$VaultComponentFromJson(json);
}

@unfreezed
class VaultGroup with _$VaultGroup {
  factory VaultGroup({
    required String name,
    @Default([]) List<VaultComponent> components
  }) = _VaultGroup;

  factory VaultGroup.fromJson(Map<String, dynamic> json) => _$VaultGroupFromJson(json);
}

@unfreezed
class VaultItem with _$VaultItem {
  factory VaultItem({
    required String name,
    required String username,
    required EncryptedData<VaultPassword> password,
    required String notes
  }) = _VaultItem;

  factory VaultItem.fromJson(Map<String, dynamic> json) => _$VaultItemFromJson(json);
}

@unfreezed
class VaultPassword extends ToJsonAble with _$VaultPassword {
  factory VaultPassword(String password) = _VaultPassword;

  factory VaultPassword.fromJson(Map<String, dynamic> json) => _$VaultPasswordFromJson(json);
}