import 'dart:convert';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_providers.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/cache/cache.dart';
import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';

class VaultRepository {
  VaultRepository();

  final FileProvider fileProvider = const FileProvider();
  final FtpProvider ftpProvider = FtpProvider();

  Future<VaultFile> getFile(
      VaultUrl url, AppSettingsBloc appSettingsBloc) async {
    return await url.map(file: (fileUrl) async {
      final file = await fileProvider.readFile(fileUrl);

      final result = initVaultFile(jsonDecode(file));

      if (result.migrated) {
        await fileProvider.updateFile(
            fileUrl, jsonEncode(result.vaultFile.toJson()));
      }

      return result.vaultFile.copyWith(url: fileUrl);
    }, ftp: (ftpUrl) async {
      final file = await ftpProvider.readFile(ftpUrl);

      final result = initVaultFile(jsonDecode(file));

      if (result.migrated) {
        await ftpProvider.updateFile(
            ftpUrl, jsonEncode(result.vaultFile.toJson()));
      }

      return result.vaultFile.copyWith(url: ftpUrl);
    }, cached: (cachedUrl) async {
      final cachedFile = await getFromCache(cachedUrl.uuid);

      if (cachedFile == null) {
        throw Exception('FILE_NOT_IN_CACHE');
      } else {
        return cachedFile;
      }
    });
  }

  Future<VaultFile> syncFiles({
    required AppSettingsBloc appSettingsBloc,
    required CachedVaultUrl cachedUrl,
    required VaultUrl decryptedRemoteUrl,
    required VaultFile cachedFile,
    required VaultFile remoteFile,
  }) async {
    final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;

    var syncFile = syncCachedAndRemote(
        localFile: cachedFile,
        remoteFile: remoteFile,
        lastSyncMap: lastSyncMap,
        uuid: cachedUrl.uuid);

    syncFile = syncFile.copyWith(url: decryptedRemoteUrl);

    await updateEncryptedRemoteFile(syncFile, decryptedRemoteUrl);

    syncFile = syncFile.copyWith(
        url: cachedUrl,
        header:
            syncFile.header.copyWith(remoteUrl: cachedFile.header.remoteUrl));

    await updateEncryptedLocalFile(syncFile);

    lastSyncMap[cachedUrl.uuid] = DateTime.now();

    final newSettings =
        appSettingsBloc.state.settings.copyWith(lastSyncMap: lastSyncMap);

    appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
    newSettings.save();

    return syncFile;
  }

  Future<VaultFile> getLocalFile(VaultUrl url) async {
    return await url.maybeMap(file: (fileUrl) async {
      final file = await fileProvider.readFile(fileUrl);

      final result = initVaultFile(jsonDecode(file));

      if (result.migrated) {
        await fileProvider.updateFile(
            fileUrl, jsonEncode(result.vaultFile.toJson()));
      }

      return result.vaultFile.copyWith(url: fileUrl);
    }, cached: (cachedUrl) async {
      final cachedFile = await getFromCache(cachedUrl.uuid);

      if (cachedFile == null) {
        throw Exception('FILE_NOT_IN_CACHE');
      } else {
        return cachedFile;
      }
    }, orElse: () {
      throw Exception('NOT_LOCAL_URL');
    });
  }

  Future<void> updateFile(
      VaultFile file, Key key, AppSettingsBloc appSettingsBloc) async {
    var encryptedContents = file.contents.encrypt(key);
    final raw = file.copyWith(contents: encryptedContents).toJson();

    await file.url!.map(file: (fileUrl) async {
      await fileProvider.updateFile(fileUrl, jsonEncode(raw));
    }, ftp: (ftpUrl) async {
      await ftpProvider.updateFile(ftpUrl, jsonEncode(raw));
    }, cached: (cachedUrl) async {
      await fileProvider.updateFile(
          cachedUrltoFileUrl(cachedUrl), jsonEncode(raw));

      try {
        await updateFile(
            file.copyWith(
                url: file.header.remoteUrl!
                    .decrypt(key)
                    .mapOrNull(decrypted: (value) => value.data),
                header: file.header.copyWith(remoteUrl: null)),
            key,
            appSettingsBloc);

        final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;
        lastSyncMap[cachedUrl.uuid] = DateTime.now();
        final newSettings =
            appSettingsBloc.state.settings.copyWith(lastSyncMap: lastSyncMap);

        appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
        newSettings.save();
      } catch (e) {
        clearPoison(cachedUrl);
      }
    });
  }

  Future<void> updateEncryptedRemoteFile(
      VaultFile file, VaultUrl decryptedUrl) async {
    final raw = file.toJson();

    await decryptedUrl.mapOrNull(file: (fileUrl) async {
      await fileProvider.updateFile(fileUrl, jsonEncode(raw));
    }, ftp: (ftpUrl) async {
      await ftpProvider.updateFile(ftpUrl, jsonEncode(raw));
    });
  }

  Future<void> updateEncryptedLocalFile(VaultFile file) async {
    final raw = file.toJson();

    await file.url!.mapOrNull(file: (fileUrl) async {
      await fileProvider.updateFile(fileUrl, jsonEncode(raw));
    }, ftp: (ftpUrl) async {
      await ftpProvider.updateFile(ftpUrl, jsonEncode(raw));
    }, cached: (cachedUrl) async {
      await fileProvider.updateFile(
          cachedUrltoFileUrl(cachedUrl), jsonEncode(raw));
    });
  }

  Future<void> deleteFile(VaultUrl url) async {
    await url.map(file: (fileUrl) async {
      await fileProvider.deleteFile(fileUrl);
    }, ftp: (ftpUrl) async {
      await ftpProvider.deleteFile(ftpUrl);
    }, cached: (cachedUrl) async {
      await fileProvider.deleteFile(cachedUrltoFileUrl(cachedUrl));
    });
  }

  Future<bool> fileExists(VaultUrl url) async {
    return await url.map(file: (fileUrl) async {
      return await fileProvider.fileExists(fileUrl);
    }, ftp: (ftpUrl) async {
      return await ftpProvider.fileExists(ftpUrl);
    }, cached: (cachedUrl) async {
      return await fileProvider.fileExists(cachedUrltoFileUrl(cachedUrl));
    });
  }

  Future<void> clearPoison(VaultUrl url) async {
    await url.mapOrNull(cached: (url) async {
      // Assume ftp provider. Add support for other providers when they are added
      await ftpProvider.clearPoison();
    }, ftp: (url) async {
      await ftpProvider.clearPoison();
    });
  }

  Future<void> disconnect(VaultUrl url) async {
    await url.mapOrNull(cached: (url) async {
      // Assume ftp provider. Add support for other providers when they are added
      await ftpProvider.disconnect();
    }, ftp: (url) async {
      await ftpProvider.disconnect();
    });
  }
}
