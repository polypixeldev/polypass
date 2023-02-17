import 'package:uuid/uuid.dart';
import 'dart:io';
import 'dart:convert';

import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/app_settings/app_settings.dart';

const migrationMap = {2: migrateFileV1ToV2};

VaultFile migrateFile(
    Map<String, dynamic> originalJson, int fromVersion, int toVersion) {
  if (fromVersion > toVersion) {
    throw Exception('Cannot migrate from $fromVersion to $toVersion');
  }

  final backupFile = File('${AppSettings.polypassDir}/.backup.ppv.json');
  backupFile.writeAsString(jsonEncode(originalJson));

  Map<String, dynamic> json = originalJson;

  for (int i = fromVersion; i < toVersion; i++) {
    json = migrationMap[i + 1]!(json);
  }

  return VaultFile.fromJson(json);
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
