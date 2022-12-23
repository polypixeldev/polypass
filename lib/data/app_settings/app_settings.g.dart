// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppSettings _$$_AppSettingsFromJson(Map json) => _$_AppSettings(
      defaultVaultSettings: VaultSettings.fromJson(
          Map<String, dynamic>.from(json['defaultVaultSettings'] as Map)),
      recentUrl: json['recentUrl'] == null
          ? null
          : VaultUrl.fromJson(
              Map<String, dynamic>.from(json['recentUrl'] as Map)),
      lastSyncMap: (json['lastSyncMap'] as Map).map(
        (k, e) => MapEntry(k as String, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$$_AppSettingsToJson(_$_AppSettings instance) =>
    <String, dynamic>{
      'defaultVaultSettings': instance.defaultVaultSettings.toJson(),
      'recentUrl': instance.recentUrl?.toJson(),
      'lastSyncMap':
          instance.lastSyncMap.map((k, e) => MapEntry(k, e.toIso8601String())),
    };
