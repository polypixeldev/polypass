import 'dart:convert';

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
//    contents: String,
// TODO: Remove the path field
//    path: String
// }

abstract class ToJsonAble<T> {
  Map<String, dynamic> toJson();
}

@freezed
class EncryptedData<T extends ToJsonAble> with _$EncryptedData<T> {
  const EncryptedData._();
  const factory EncryptedData.encrypted(String data) = Encrypted;
  const factory EncryptedData.decrypted(@EncTypeConverter() T data) = Decrypted;

  static final Map<Type, dynamic Function(Map<String, dynamic>)> fromJsonRegistry = {
    VaultContents: VaultContents.fromJson
  };

  EncryptedData<T> encrypt(String key) {
    var decryptedData = map(
      decrypted: (data) => data.toJson(),
      encrypted: (data) => throw Error()
    );

    // TODO: Encrypt data with key
    
    return EncryptedData<T>.encrypted(jsonEncode(decryptedData));
  }

  EncryptedData<T> decrypt(String key) {
    var encryptedData = when(
      decrypted: (data) => throw Error(),
      encrypted: (data) => EncryptedData<T>.fromJson(data).whenOrNull(encrypted: (data) => data)
    );

    // TODO: Decrypt data with key
    var decryptedMap = jsonDecode(encryptedData!);

    if (!EncryptedData.fromJsonRegistry.containsKey(T)) {
      throw Exception('No fromJson for encrypted data type $T');
    }

    var decrypted = EncryptedData.fromJsonRegistry[T]!(decryptedMap);

    return EncryptedData<T>.decrypted(decrypted);
  }

  factory EncryptedData.fromJson(String data) {
    return EncryptedData<T>.encrypted(data);
  }

  Map<String, dynamic> toJson() {
    return when(
      decrypted: (data) => data.toJson(),
      encrypted: (data) => { 'data': data }
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
  const VaultFile._();
  
  factory VaultFile({
    required VaultHeader header,
    @VaultContentsConverter() required EncryptedData<VaultContents> contents,
    required String path
  }) = _VaultFile;

  // factory VaultFile.fromJson(String json, String path) {
  //   final map = jsonDecode(json);
  //   final header = map['header'];
  //   final name = header['name'] as String;
  //   final description = header['description'] as String;
  //   final contents = EncryptedData<VaultContents>.encrypted(map['contents'] as String);

  //   return VaultFile(
  //     header: VaultHeader(
  //       description: description,
  //       name: name
  //     ),
  //     contents: contents,
  //     path: path
  //   );
  // }

  factory VaultFile.fromJson(Map<String, dynamic> json) => _$VaultFileFromJson(json);

  // String toJson(String key) {
  //   final map = {
  //     'header': {
  //       'name': header.name,
  //       'description': header.description
  //     },
  //     'contents': contents.encrypt(key).whenOrNull(encrypted: (data, _serializer) => data)
  //   };

  //   return jsonEncode(map);
  // }
}

@freezed
class VaultHeader with _$VaultHeader {
  const factory VaultHeader({
    required String name,
    required String description
  }) = _VaultHeader;

  factory VaultHeader.fromJson(Map<String, dynamic> json) => _$VaultHeaderFromJson(json);
}

@freezed
class VaultContents extends ToJsonAble with _$VaultContents {
  const factory VaultContents({
    required List<VaultComponent> components
  }) = _VaultContents;

  factory VaultContents.fromJson(Map<String, dynamic> json) => _$VaultContentsFromJson(json);
}

class VaultContentsConverter implements JsonConverter<EncryptedData<VaultContents>, String> {
  const VaultContentsConverter();

  @override
  EncryptedData<VaultContents> fromJson(String json) {
    return EncryptedData<VaultContents>.encrypted(json);
  }

  @override
  String toJson(EncryptedData<VaultContents> data) {
    var contents =  data.when(
      encrypted: (data) => data,
      decrypted: (data) => jsonEncode(data.components)
    );

    return contents;
  }
}

@freezed
class VaultComponent with _$VaultComponent {
  const factory VaultComponent.category(VaultCategory category) = Category;
  const factory VaultComponent.item(VaultItem item) = Item;

  factory VaultComponent.fromJson(Map<String, dynamic> json) => _$VaultComponentFromJson(json);
}

@freezed
class VaultCategory with _$VaultCategory {
  const factory VaultCategory({
    required String name,
    String? icon,
    @Default([]) List<VaultComponent> components
  }) = _VaultCategory;

  factory VaultCategory.fromJson(Map<String, dynamic> json) => _$VaultCategoryFromJson(json);
}

@freezed
class VaultItem with _$VaultItem {
  const factory VaultItem() = _VaultItem;

  factory VaultItem.fromJson(Map<String, dynamic> json) => _$VaultItemFromJson(json);
}