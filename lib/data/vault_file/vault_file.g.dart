// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vault_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaultFile _$$_VaultFileFromJson(Map json) => _$_VaultFile(
      header: VaultHeader.fromJson(
          Map<String, dynamic>.from(json['header'] as Map)),
      contents: EncryptedData<VaultContents>.fromJson(
          Map<String, dynamic>.from(json['contents'] as Map)),
    );

Map<String, dynamic> _$$_VaultFileToJson(_$_VaultFile instance) =>
    <String, dynamic>{
      'header': instance.header.toJson(),
      'contents': instance.contents.toJson(),
    };

_$_VaultHeader _$$_VaultHeaderFromJson(Map json) => _$_VaultHeader(
      name: json['name'] as String,
      version: json['version'] as int,
      uuid: json['uuid'] as String,
      remoteUrl: json['remoteUrl'] == null
          ? null
          : EncryptedData<VaultUrl>.fromJson(
              Map<String, dynamic>.from(json['remoteUrl'] as Map)),
      settings: VaultSettings.fromJson(
          Map<String, dynamic>.from(json['settings'] as Map)),
      lastUpdate: DateTime.parse(json['lastUpdate'] as String),
      magic:
          MagicValue.fromJson(Map<String, dynamic>.from(json['magic'] as Map)),
      key: json['key'] as String,
      salt: (json['salt'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_VaultHeaderToJson(_$_VaultHeader instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'uuid': instance.uuid,
      'remoteUrl': instance.remoteUrl?.toJson(),
      'settings': instance.settings.toJson(),
      'lastUpdate': instance.lastUpdate.toIso8601String(),
      'magic': instance.magic.toJson(),
      'key': instance.key,
      'salt': instance.salt,
    };

_$_MagicValue _$$_MagicValueFromJson(Map json) => _$_MagicValue(
      json['value'] as String,
    );

Map<String, dynamic> _$$_MagicValueToJson(_$_MagicValue instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_VaultSettings _$$_VaultSettingsFromJson(Map json) => _$_VaultSettings(
      saveKeyInMemory: json['saveKeyInMemory'] as bool,
      iterations: json['iterations'] as int,
      threads: json['threads'] as int,
      memory: json['memory'] as int,
      clipboardClearSeconds: json['clipboardClearSeconds'] as int,
      vaultAutoLockSeconds: json['vaultAutoLockSeconds'] as int,
    );

Map<String, dynamic> _$$_VaultSettingsToJson(_$_VaultSettings instance) =>
    <String, dynamic>{
      'saveKeyInMemory': instance.saveKeyInMemory,
      'iterations': instance.iterations,
      'threads': instance.threads,
      'memory': instance.memory,
      'clipboardClearSeconds': instance.clipboardClearSeconds,
      'vaultAutoLockSeconds': instance.vaultAutoLockSeconds,
    };

_$_VaultContents _$$_VaultContentsFromJson(Map json) => _$_VaultContents(
      components: (json['components'] as List<dynamic>)
          .map((e) =>
              VaultComponent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_VaultContentsToJson(_$_VaultContents instance) =>
    <String, dynamic>{
      'components': instance.components.map((e) => e.toJson()).toList(),
    };

_$Group _$$GroupFromJson(Map json) => _$Group(
      VaultGroup.fromJson(Map<String, dynamic>.from(json['group'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GroupToJson(_$Group instance) => <String, dynamic>{
      'group': instance.group.toJson(),
      'runtimeType': instance.$type,
    };

_$Item _$$ItemFromJson(Map json) => _$Item(
      VaultItem.fromJson(Map<String, dynamic>.from(json['item'] as Map)),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ItemToJson(_$Item instance) => <String, dynamic>{
      'item': instance.item.toJson(),
      'runtimeType': instance.$type,
    };

_$_VaultGroup _$$_VaultGroupFromJson(Map json) => _$_VaultGroup(
      name: json['name'] as String,
      components: (json['components'] as List<dynamic>?)
              ?.map((e) =>
                  VaultComponent.fromJson(Map<String, dynamic>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VaultGroupToJson(_$_VaultGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'components': instance.components.map((e) => e.toJson()).toList(),
    };

_$_VaultItem _$$_VaultItemFromJson(Map json) => _$_VaultItem(
      name: json['name'] as String,
      username: json['username'] as String,
      password: EncryptedData<VaultPassword>.fromJson(
          Map<String, dynamic>.from(json['password'] as Map)),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_VaultItemToJson(_$_VaultItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'password': instance.password.toJson(),
      'notes': instance.notes,
    };

_$_VaultPassword _$$_VaultPasswordFromJson(Map json) => _$_VaultPassword(
      json['password'] as String,
    );

Map<String, dynamic> _$$_VaultPasswordToJson(_$_VaultPassword instance) =>
    <String, dynamic>{
      'password': instance.password,
    };

_$FileVaultUrl _$$FileVaultUrlFromJson(Map json) => _$FileVaultUrl(
      json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileVaultUrlToJson(_$FileVaultUrl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$FtpVaultUrl _$$FtpVaultUrlFromJson(Map json) => _$FtpVaultUrl(
      host: json['host'] as String,
      user: json['user'] as String,
      password: json['password'] as String,
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FtpVaultUrlToJson(_$FtpVaultUrl instance) =>
    <String, dynamic>{
      'host': instance.host,
      'user': instance.user,
      'password': instance.password,
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$CachedVaultUrl _$$CachedVaultUrlFromJson(Map json) => _$CachedVaultUrl(
      uuid: json['uuid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CachedVaultUrlToJson(_$CachedVaultUrl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'runtimeType': instance.$type,
    };
