import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'dart:io';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/api.dart';
import 'package:pointycastle/key_derivators/api.dart';
import 'package:pointycastle/key_derivators/argon2_native_int_impl.dart';
import 'package:pointycastle/random/fortuna_random.dart';
import 'package:hash/hash.dart';

import 'package:polypass/main.dart' show polypassMajorVersion;
import 'package:polypass/data/migration.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_file.freezed.dart';
part 'vault_file.g.dart';

abstract class ToJsonAble<T> {
  Map<String, dynamic> toJson();
}

@unfreezed
class EncryptedData<T extends ToJsonAble> with _$EncryptedData<T> {
  EncryptedData._();
  factory EncryptedData.encrypted(String data, IV iv, int version) = _Encrypted;
  factory EncryptedData.decrypted(T data, IV iv, int version) = _Decrypted;

  static final Map<Type, dynamic Function(Map<String, dynamic>, int, int)>
      fromJsonRegistry = {
    VaultContents: migrateContents,
    VaultPassword: migratePassword,
    MagicValue: migrateMagicValue,
    VaultUrl: migrateUrl
  };

  EncryptedData<T> encrypt(Key key) {
    var decryptedData = map(
        decrypted: (data) => jsonEncode(data.toJson()),
        encrypted: (data) => throw Error());

    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(decryptedData, iv: iv);
    return EncryptedData<T>.encrypted(encrypted.base64, iv, version);
  }

  EncryptedData<T> decrypt(Key key) {
    var encryptedData = when(
        decrypted: (data, iv, version) => throw Error(),
        encrypted: (data, iv, version) => data);

    final encrypter = Encrypter(AES(key));
    final rawDecrypted =
        encrypter.decrypt(Encrypted.fromBase64(encryptedData), iv: iv);

    var decryptedMap = jsonDecode(rawDecrypted);

    if (!EncryptedData.fromJsonRegistry.containsKey(T)) {
      throw Exception('No fromJson for encrypted data type $T');
    }

    var decrypted = EncryptedData.fromJsonRegistry[T]!(
        decryptedMap, version, polypassMajorVersion);

    return EncryptedData<T>.decrypted(decrypted, iv, version);
  }

  factory EncryptedData.fromJson(Map<String, dynamic> map) {
    return EncryptedData<T>.encrypted(
        map['data'], IV.fromBase64(map['iv']), map['version'] ?? 1);
  }

  Map<String, dynamic> toJson() {
    return when(
        decrypted: (data, iv, version) => data.toJson(),
        encrypted: (data, iv, version) =>
            {'data': data, 'iv': iv.base64, 'version': version});
  }

  static Key deriveDerivedKey(
      String masterPassword, Uint8List salt, VaultSettings settings) {
    final argon = Argon2BytesGenerator();
    argon.init(Argon2Parameters(
        Argon2Parameters.ARGON2_id, Uint8List.fromList(salt),
        desiredKeyLength: 32,
        iterations: settings.iterations,
        lanes: settings.threads,
        memory: settings.memory));

    final derivedKey = Uint8List(32);
    argon.deriveKey(
        Uint8List.fromList(utf8.encode(masterPassword)), 0, derivedKey, 0);

    final rawKey = base64Encode(derivedKey);
    return Key.fromBase64(rawKey);
  }

  static Key deriveMasterKey(
      String masterPassword, Uint8List salt, VaultSettings settings) {
    final derivedKey = SHA256().update(utf8.encode(masterPassword)).digest();
    final rawKey = base64Encode(derivedKey);
    return Key.fromBase64(rawKey);
  }

  static Uint8List generateSalt() {
    final fortuna = FortunaRandom();
    final seedSource = Random.secure();
    final seeds = <int>[];
    for (int i = 0; i < 32; i++) {
      seeds.add(seedSource.nextInt(255));
    }
    fortuna.seed(KeyParameter(Uint8List.fromList(seeds)));

    final salts = <int>[];
    for (int i = 0; i < 32; i++) {
      salts.add(fortuna.nextUint8());
    }

    return Uint8List.fromList(salts);
  }
}

class InitResult {
  const InitResult(this.vaultFile, this.migrated);

  final VaultFile vaultFile;
  final bool migrated;
}

InitResult initVaultFile(Map<String, dynamic> json) {
  if (json['header'] == null) {
    throw Exception('Invalid vault file');
  } else {
    int? majorVersion = json['header']['majorVersion'];
    majorVersion ??= 1;

    if (majorVersion != polypassMajorVersion) {
      return InitResult(
          migrateFile(json, majorVersion, polypassMajorVersion), true);
    } else {
      return InitResult(VaultFile.fromJson(json), false);
    }
  }
}

@unfreezed
class VaultFile with _$VaultFile {
  VaultFile._();

  factory VaultFile(
      {required VaultHeader header,
      required EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) VaultUrl? url}) = _VaultFile;

  factory VaultFile.fromJson(Map<String, dynamic> json) =>
      _$VaultFileFromJson(json);

  VaultGroup toGroup() {
    final decryptedContents = contents.maybeMap(
        decrypted: (contents) => contents, orElse: () => throw Error());

    return VaultGroup(
        name: header.name, components: decryptedContents.data.components);
  }

  VaultFile updateComponent(
      {required List<String> path, required VaultComponent component}) {
    final decryptedContents = contents.maybeMap(
        decrypted: (contents) => contents, orElse: () => throw Error());
    var currentGroup = toGroup();
    int index = 0;
    for (var i = 0; i < path.length; i++) {
      final pathPart = path[i];
      if (i == path.length - 1) {
        index = currentGroup.components.toList().indexWhere((component) =>
            component.map(
                group: (groupComponent) => groupComponent.group.name,
                item: (itemComponent) => itemComponent.item.name) ==
            pathPart);
        break;
      }
      currentGroup = currentGroup.components
          .whereType<Group>()
          .where((group) => group.group.name == pathPart)
          .toList()[0]
          .group;
    }

    if (index == -1) {
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
        currentPathedGroup = currentPathedGroup.components
            .whereType<Group>()
            .where((group) => group.group.name == pathPart)
            .toList()[0]
            .group;
      }

      if (path.length - depth == 0) {
        currentPathedGroup = toGroup();
      }

      final pathedIndex = currentPathedGroup.components.toList().indexWhere(
          (component) =>
              component.map(
                  group: (groupComponent) => groupComponent.group.name,
                  item: (itemComponent) => itemComponent.item.name) ==
              updatedComponent.map(
                  group: (groupComponent) => groupComponent.group.name,
                  item: (itemComponent) => itemComponent.item.name));

      currentPathedGroup.components[pathedIndex] = updatedComponent;
      updatedComponent = VaultComponent.group(currentPathedGroup);

      depth++;
    }

    final newVault = copyWith(
        contents: decryptedContents.copyWith(
            data: decryptedContents.data.copyWith(
                components: updatedComponent.maybeMap(
                    group: (groupComponent) => groupComponent.group.components,
                    orElse: () => throw Error()))));

    return newVault;
  }

  VaultFile deleteComponent(List<String> path) {
    if (path.length == 1) {
      final decryptedContents = contents.maybeMap(
          decrypted: (contents) => contents, orElse: () => throw Error());

      final root = toGroup();

      root.components.removeWhere((component) =>
          component.map(
              group: (groupComponent) => groupComponent.group.name,
              item: (itemComponent) => itemComponent.item.name) ==
          path.last);

      final newVault = copyWith(
          contents: decryptedContents.copyWith(
              data: decryptedContents.data
                  .copyWith(components: root.components)));

      return newVault;
    }

    var currentGroup = toGroup();
    for (var i = 0; i < path.length - 1; i++) {
      currentGroup = currentGroup.components
          .whereType<Group>()
          .where((group) => group.group.name == path[i])
          .toList()[0]
          .group;
    }

    currentGroup.components.removeWhere((component) =>
        component.map(
            group: (groupComponent) => groupComponent.group.name,
            item: (itemComponent) => itemComponent.item.name) ==
        path.last);

    return updateComponent(
        path: path.take(path.length - 1).toList(),
        component: VaultComponent.group(currentGroup));
  }

  VaultComponent getComponent(List<String> path) {
    var component = VaultComponent.group(toGroup());

    for (final pathPart in path) {
      final result = component.map(
          group: (group) {
            component = group.group.components
                .where((component) =>
                    component.map(
                        group: (groupComponent) => groupComponent.group.name,
                        item: (itemComponent) => itemComponent.item.name) ==
                    pathPart)
                .toList()[0];
            return null;
          },
          item: (item) => item);

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
  factory VaultHeader(
      {required String name,
      required int majorVersion,
      required String uuid,
      required EncryptedData<VaultUrl>? remoteUrl,
      required VaultSettings settings,
      required DateTime lastUpdate,
      required MagicValue magic,
      required String key,
      required List<int> salt}) = _VaultHeader;

  factory VaultHeader.fromJson(Map<String, dynamic> json) =>
      _$VaultHeaderFromJson(json);

  bool testMagic(Key derivedKey, IV iv) {
    final encrypter = Encrypter(AES(derivedKey));
    var rawDecrypted = '';
    try {
      rawDecrypted =
          encrypter.decrypt(Encrypted.fromBase64(magic.value), iv: iv);
    } catch (e) {
      return false;
    }

    return rawDecrypted == MagicValue.decryptedValue.value;
  }

  Key decryptMasterKey(Key derivedKey, IV iv) {
    return Key.fromBase64(
        Encrypter(AES(derivedKey)).decrypt(Encrypted.fromBase64(key), iv: iv));
  }
}

@unfreezed
class MagicValue extends ToJsonAble with _$MagicValue {
  factory MagicValue(String value) = _MagicValue;

  static final decryptedValue = MagicValue(
      '9TGSiAeFCpsokSts2GzEIABOv6cURDGM6eW3wLGmNWE3C+MKX5TCdRltnKvE3MIxOOJG2AiMu7UkqoTA4ggEJg==');

  factory MagicValue.fromJson(Map<String, dynamic> json) =>
      _$MagicValueFromJson(json);
}

@unfreezed
class VaultSettings with _$VaultSettings {
  factory VaultSettings(
      {required bool saveKeyInMemory,
      required int iterations,
      required int threads,
      required int memory,
      required int clipboardClearSeconds,
      required int vaultAutoLockSeconds}) = _VaultSettings;

  factory VaultSettings.empty() => VaultSettings(
      saveKeyInMemory: true,
      iterations: 30,
      threads: 2,
      memory: 1024,
      clipboardClearSeconds: 10,
      vaultAutoLockSeconds: 120);
  factory VaultSettings.fromJson(Map<String, dynamic> json) =>
      _$VaultSettingsFromJson(json);
}

@unfreezed
class VaultContents extends ToJsonAble with _$VaultContents {
  factory VaultContents({required List<VaultComponent> components}) =
      _VaultContents;

  factory VaultContents.fromJson(Map<String, dynamic> json) =>
      _$VaultContentsFromJson(json);
}

@unfreezed
class VaultComponent with _$VaultComponent {
  factory VaultComponent.group(VaultGroup group) = Group;
  factory VaultComponent.item(VaultItem item) = Item;

  factory VaultComponent.fromJson(Map<String, dynamic> json) =>
      _$VaultComponentFromJson(json);
}

@unfreezed
class VaultGroup with _$VaultGroup {
  factory VaultGroup(
      {required String name,
      @Default(false) expanded,
      @Default([]) List<VaultComponent> components}) = _VaultGroup;

  factory VaultGroup.fromJson(Map<String, dynamic> json) =>
      _$VaultGroupFromJson(json);
}

@unfreezed
class VaultItem with _$VaultItem {
  factory VaultItem(
      {required String name,
      required String username,
      required EncryptedData<VaultPassword> password,
      required String notes}) = _VaultItem;

  factory VaultItem.fromJson(Map<String, dynamic> json) =>
      _$VaultItemFromJson(json);
}

@unfreezed
class VaultPassword extends ToJsonAble with _$VaultPassword {
  factory VaultPassword(String password) = _VaultPassword;

  factory VaultPassword.fromJson(Map<String, dynamic> json) =>
      _$VaultPasswordFromJson(json);
}

@unfreezed
class VaultUrl extends ToJsonAble with _$VaultUrl {
  VaultUrl._();

  factory VaultUrl.file(String path) = FileVaultUrl;
  factory VaultUrl.ftp(
      {required String host,
      required String user,
      required String password,
      required String path}) = FtpVaultUrl;
  factory VaultUrl.cached({required String uuid}) = CachedVaultUrl;

  factory VaultUrl.fromJson(Map<String, dynamic> json) =>
      _$VaultUrlFromJson(json);

  String toHumanUrl() {
    return map(
        file: (url) => 'Local file ${Platform.isAndroid ? '' : url.path}',
        ftp: (url) => 'Remote file on ${url.host} at ${url.path}',
        cached: (url) => 'Cached file ${url.uuid}');
  }
}
