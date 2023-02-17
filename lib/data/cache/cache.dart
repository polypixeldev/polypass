import 'dart:io';
import 'dart:convert';

import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

void addToCache(VaultFile vaultFile) {
  final cacheDir = Directory('${AppSettings.polypassDir}/.cache');

  if (!cacheDir.existsSync()) {
    cacheDir.createSync();
  }

  final file =
      File('${cacheDir.absolute.path}/${vaultFile.header.uuid}.ppv.json');

  file.writeAsStringSync(jsonEncode(vaultFile.toJson()));
}

Future<VaultFile?> getFromCache(String uuid) async {
  final cacheDir = Directory('${AppSettings.polypassDir}/.cache');

  if (!(await cacheDir.exists())) {
    await cacheDir.create();
    return null;
  }

  final cachedFiles = await cacheDir.list().toList();

  final File cachedFile;
  try {
    cachedFile = cachedFiles.firstWhere(
        (file) => file.path.endsWith('$uuid.ppv.json') && file is File) as File;
  } catch (e) {
    return null;
  }

  final contents = await cachedFile.readAsString();

  final result = initVaultFile(jsonDecode(contents));

  if (result.migrated) {
    await cachedFile.writeAsString(jsonEncode(result.vaultFile.toJson()));
  }

  return result.vaultFile;
}

FileVaultUrl cachedUrltoFileUrl(CachedVaultUrl cachedUrl) {
  final cachedFile =
      File('${AppSettings.polypassDir}/.cache/${cachedUrl.uuid}.ppv.json');

  if (!(cachedFile.existsSync())) {
    throw Exception('FILE_NOT_IN_CACHE');
  }

  return VaultUrl.file(cachedFile.absolute.path).mapOrNull(file: (url) => url)!;
}

VaultFile syncCachedAndRemote(
    {required VaultFile localFile,
    required VaultFile remoteFile,
    required Map<String, DateTime> lastSyncMap,
    required String uuid}) {
  var lastSync = lastSyncMap[uuid];

  if (lastSync == null) {
    return remoteFile;
  }

  final localUpdated = localFile.header.lastUpdate.isAfter(lastSync);
  final remoteUpdated = remoteFile.header.lastUpdate.isAfter(lastSync);

  if (localUpdated) {
    if (remoteUpdated) {
      throw MergeException(local: localFile, remote: remoteFile);
    } else {
      return localFile;
    }
  } else {
    return remoteFile;
  }
}

class MergeException implements Exception {
  const MergeException({required this.local, required this.remote});

  final VaultFile local;
  final VaultFile remote;
}
