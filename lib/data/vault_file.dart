import 'dart:convert';
import 'package:encrypt/encrypt.dart';
import 'package:hash/hash.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_file.freezed.dart';
part 'vault_file.g.dart';

// Vault file schema (.ppv.json)
//
// {
//    header: {
//        name: String,
//        description: String,
//        settings: VaultSettings,
//        magic: String
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
    VaultPassword: VaultPassword.fromJson,
    MagicValue: MagicValue.fromJson
  };

  EncryptedData<T> encrypt(Key key) {
    var decryptedData = map(
      decrypted: (data) => jsonEncode(data.toJson()),
      encrypted: (data) => throw Error()
    );

    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(decryptedData, iv: iv);
    return EncryptedData<T>.encrypted(encrypted.base64, iv);
  }

  EncryptedData<T> decrypt(Key key) {
    var encryptedData = when(
      decrypted: (data, iv) => throw Error(),
      encrypted: (data, iv) => data
    );

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

  static Key deriveKey(String masterPassword) {
    final rawKey = base64Encode(SHA256().update(utf8.encode(masterPassword)).digest());
    return Key.fromBase64(rawKey);
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

  VaultGroup toGroup() {
    final decryptedContents = contents.maybeMap(
      decrypted: (contents) => contents,
      orElse: () => throw Error()
    );

    return VaultGroup(name: header.name, components: decryptedContents.data.components);
  }

  VaultFile updateComponent({
    required List<String> path,
    required VaultComponent component
  }) {
    final decryptedContents = contents.maybeMap(
      decrypted: (contents) => contents,
      orElse: () => throw Error()
    );
    var currentGroup = toGroup();
    int index = 0;
    for (var i = 0; i < path.length; i++) {
      final pathPart = path[i];
      if (i == path.length - 1) {
        index = currentGroup.components.toList().indexWhere((component) => component.when(group: (group) => group.name, item: (item) => item.name) == pathPart);
        break;
      }
      currentGroup = currentGroup.components.whereType<Group>().where((group) => group.group.name == pathPart).toList()[0].group;
    }


    if(index == -1) {
      currentGroup.components.add(component);
      index = currentGroup.components.length - 1;
    } else {
      currentGroup.components[index] = component;
    }

    var updatedComponent = currentGroup.components[index];
    var depth = 1;
    var currentPathedGroup = toGroup();

    while (path.length - depth >= 0) {
      currentPathedGroup = toGroup();
      
      for (var i = 0; i < path.length - depth; i++) {
        final pathPart = path[i];
        currentPathedGroup = currentPathedGroup.components.whereType<Group>().where((group) => group.group.name == pathPart).toList()[0].group;
      }

      if (path.length - depth == 0) {
        currentPathedGroup = toGroup();
      }

      final pathedIndex = currentPathedGroup.components.toList().indexWhere((component) => component.when(group: (group) => group.name, item: (item) => item.name) == updatedComponent.when(group: (group) => group.name, item: (item) => item.name));

      currentPathedGroup.components[pathedIndex] = updatedComponent;
      updatedComponent = VaultComponent.group(currentPathedGroup);

      depth++;
    }

    final newVault = copyWith(
      contents: decryptedContents.copyWith(
        data: decryptedContents.data.copyWith(
          components: updatedComponent.maybeWhen(group: (group) => group.components, orElse: () => throw Error())
        )
      )
    );

    return newVault;
  }

  VaultFile deleteComponent(List<String> path) {
    if (path.length == 1) {
      final decryptedContents = contents.maybeMap(
        decrypted: (contents) => contents,
        orElse: () => throw Error()
      );

      final root = toGroup();

      root.components.removeWhere((component) => component.when(group: (group) => group.name, item: (item) => item.name) == path.last);

      final newVault = copyWith(
        contents: decryptedContents.copyWith(
          data: decryptedContents.data.copyWith(
            components: root.components
          )
        )
      );

      return newVault;
    }
    
    var currentGroup = toGroup();
    for (var i = 0; i < path.length - 1; i++) {
      currentGroup = currentGroup.components.whereType<Group>().where((group) => group.group.name == path[i]).toList()[0].group;
    }

    currentGroup.components.removeWhere((component) => component.when(group: (group) => group.name, item: (item) => item.name) == path.last);


    return updateComponent(path: path.take(path.length - 1).toList(), component: VaultComponent.group(currentGroup));
  }

  VaultComponent getComponent(List<String> path) {
    var component = VaultComponent.group(toGroup());

    for (final pathPart in path) {
      final result = component.map(
        group: (group) {
          component = group.group.components.where((component) => component.when(group: (group) => group.name, item: (item) => item.name) == pathPart).toList()[0];
          return null;
        },
        item: (item) => item
      );

      if (result != null) {
        return result;
      }
    }

    return component;
  }
}

@unfreezed
class VaultHeader with _$VaultHeader {
  VaultHeader._();
  factory VaultHeader({
    required String name,
    required String description,
    required VaultSettings settings,
    required MagicValue magic
  }) = _VaultHeader;

  factory VaultHeader.fromJson(Map<String, dynamic> json) => _$VaultHeaderFromJson(json);

  bool testMagic(Key key, IV iv) {
    final encrypter = Encrypter(AES(key));
    var rawDecrypted = '';
    try {
      rawDecrypted = encrypter.decrypt(Encrypted.fromBase64(magic.value), iv: iv);
    } catch (_e) {
      return false;
    }

    return rawDecrypted == MagicValue.decryptedValue.value;
  }
}

@unfreezed
class MagicValue extends ToJsonAble with _$MagicValue {
  factory MagicValue(String value) = _MagicValue;

  static final decryptedValue = MagicValue('9TGSiAeFCpsokSts2GzEIABOv6cURDGM6eW3wLGmNWE3C+MKX5TCdRltnKvE3MIxOOJG2AiMu7UkqoTA4ggEJg==');

  factory MagicValue.fromJson(Map<String, dynamic> json) => _$MagicValueFromJson(json);
}

@unfreezed
class VaultSettings with _$VaultSettings {
  factory VaultSettings({
    required bool saveKeyInMemory
  }) = _VaultSettings;

  factory VaultSettings.empty() => VaultSettings( saveKeyInMemory: true );
  factory VaultSettings.fromJson(Map<String, dynamic> json) => _$VaultSettingsFromJson(json);
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