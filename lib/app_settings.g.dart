// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map json) => _$_AppSettings(
      defaultVaultSettings: VaultSettings.fromJson(
          Map<String, dynamic>.from(json['defaultVaultSettings'] as Map)),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'defaultVaultSettings': instance.defaultVaultSettings.toJson(),
    };
