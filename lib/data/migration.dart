import 'package:uuid/uuid.dart';
import 'dart:io';
import 'dart:convert';

import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/app_settings/app_settings.dart';

const fileMigrationMap = {2: migrateFileV1ToV2};
const contentsMigrationMap = {2: migrateContentsV1ToV2};
const passwordMigrationMap = {2: migratePasswordV1ToV2};
const magicValueMigrationMap = {2: migrateMagicValueV1ToV2};
const urlMigrationMap = {2: migrateUrlV1ToV2};

VaultFile migrateFile(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  final backupFile = File('${AppSettings.polypassDir}/.backup.ppv.json');
  backupFile.writeAsString(jsonEncode(originalJson));

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = fileMigrationMap[i + 1]!(json);
  }

  return VaultFile.fromJson(json);
}

VaultContents migrateContents(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = contentsMigrationMap[i + 1]!(json);
  }

  return VaultContents.fromJson(json);
}

VaultPassword migratePassword(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = contentsMigrationMap[i + 1]!(json);
  }

  return VaultPassword.fromJson(json);
}

MagicValue migrateMagicValue(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = contentsMigrationMap[i + 1]!(json);
  }

  return MagicValue.fromJson(json);
}

VaultUrl migrateUrl(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = contentsMigrationMap[i + 1]!(json);
  }

  return VaultUrl.fromJson(json);
}

Map<String, dynamic> migrateFileV1ToV2(Map<String, dynamic> json) {
  final migratedJson = json;

  migratedJson['header']['majorVersion'] = 2;
  migratedJson['header']['uuid'] = const Uuid().v4();
  migratedJson['header']['remoteUrl'] = null;
  migratedJson['header']['lastUpdate'] = DateTime.now().toIso8601String();
  migratedJson['header']['settings']['vaultAutoLockSeconds'] = 120;
  migratedJson['header']['settings']['clipboardClearSeconds'] = 10;

  return migratedJson;
}

Map<String, dynamic> migrateContentsV1ToV2(Map<String, dynamic> json) {
  final migratedJson = json;

  final mapList = (migratedJson['components'] as List<dynamic>)
      .map((e) => e as Map<String, dynamic>)
      .toList();

  migratedJson['components'] = addOpenToGroup(mapList);

  return migratedJson;
}

List<Map<String, dynamic>> addOpenToGroup(
    List<Map<String, dynamic>> groupContents) {
  final migratedContents = groupContents;

  for (int i = 0; i < migratedContents.length; i++) {
    if (migratedContents[i].containsKey('components')) {
      migratedContents[i]['expanded'] = false;
      migratedContents[i]['components'] =
          addOpenToGroup(migratedContents[i]['components']);
    }
  }

  return migratedContents;
}

Map<String, dynamic> migratePasswordV1ToV2(Map<String, dynamic> json) {
  return json;
}

Map<String, dynamic> migrateMagicValueV1ToV2(Map<String, dynamic> json) {
  return json;
}

Map<String, dynamic> migrateUrlV1ToV2(Map<String, dynamic> json) {
  return json;
}
