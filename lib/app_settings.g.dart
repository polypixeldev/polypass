// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map json) => _$_AppSettings(
      defaultVaultSettings: DefaultVaultSettings.fromJson(
          Map<String, dynamic>.from(json['defaultVaultSettings'] as Map)),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'defaultVaultSettings': instance.defaultVaultSettings.toJson(),
    };

_$_DefaultVaultSettings _$$_DefaultVaultSettingsFromJson(Map json) =>
    _$_DefaultVaultSettings(
      saveKeyInMemory: json['saveKeyInMemory'] as bool,
    );

Map<String, dynamic> _$$_DefaultVaultSettingsToJson(
        _$_DefaultVaultSettings instance) =>
    <String, dynamic>{
      'saveKeyInMemory': instance.saveKeyInMemory,
    };
