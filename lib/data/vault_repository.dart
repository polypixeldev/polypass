import 'dart:convert';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_providers.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/cache/cache.dart';
import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';

class VaultRepository {
  const VaultRepository();

  final FileProvider fileProvider = const FileProvider();
  final FtpProvider ftpProvider = const FtpProvider();

  Future<VaultFile> getFile(
      VaultUrl url, AppSettingsBloc appSettingsBloc) async {
    return await url.map(file: (fileUrl) async {
      final file = await fileProvider.readFile(fileUrl);
      return VaultFile.fromJson(jsonDecode(file)).copyWith(url: fileUrl);
    }, ftp: (ftpUrl) async {
      final file = await ftpProvider.readFile(ftpUrl);
      return VaultFile.fromJson(jsonDecode(file)).copyWith(url: ftpUrl);
    }, cached: (cachedUrl) async {
      final cachedFile = await getFromCache(cachedUrl.uuid);

      if (cachedFile == null) {
        throw Exception('FILE_NOT_IN_CACHE');
      } else {
        VaultFile remoteFile;

        try {
          remoteFile =
              await getFile(cachedFile.header.remoteUrl!, appSettingsBloc);
        } catch (e) {
          return cachedFile;
        }

        final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;

        var syncFile = syncCachedAndRemote(
            localFile: cachedFile,
            remoteFile: remoteFile,
            lastSyncMap: lastSyncMap,
            uuid: cachedUrl.uuid);

        syncFile = syncFile.copyWith(
            url: cachedUrl,
            header: syncFile.header
                .copyWith(remoteUrl: cachedFile.header.remoteUrl));

        updateEncryptedRemoteFile(syncFile);
        updateEncryptedLocalFile(syncFile);

        lastSyncMap[cachedUrl.uuid] = DateTime.now();

        final newSettings =
            appSettingsBloc.state.settings.copyWith(lastSyncMap: lastSyncMap);

        appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
        newSettings.save();

        return syncFile;
      }
    });
  }

  Future<void> updateFile(VaultFile file, Key key) async {
    var encryptedContents = file.contents.encrypt(key);
    final raw = file.copyWith(contents: encryptedContents).toJson();

    await file.url!.map(file: (fileUrl) async {
      await fileProvider.updateFile(fileUrl, jsonEncode(raw));
    }, ftp: (ftpUrl) async {
      await ftpProvider.updateFile(ftpUrl, jsonEncode(raw));
    }, cached: (cachedUrl) async {
      await fileProvider.updateFile(
          await cachedUrltoFileUrl(cachedUrl), jsonEncode(raw));
      await updateFile(
          file.copyWith(
              url: file.header.remoteUrl,
              header: file.header.copyWith(remoteUrl: null)),
          key);
    });
  }

  Future<void> updateEncryptedRemoteFile(VaultFile file) async {
    final raw = file.toJson();

    await file.header.remoteUrl!.mapOrNull(file: (fileUrl) async {
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
    });
  }

  Future<void> deleteFile(VaultUrl url) async {
    await url.map(file: (fileUrl) async {
      await fileProvider.deleteFile(fileUrl);
    }, ftp: (ftpUrl) async {
      await ftpProvider.deleteFile(ftpUrl);
    }, cached: (cachedUrl) async {
      await fileProvider.deleteFile(await cachedUrltoFileUrl(cachedUrl));
    });
  }

  Future<bool> fileExists(VaultUrl url) async {
    return await url.map(file: (fileUrl) async {
      return await fileProvider.fileExists(fileUrl);
    }, ftp: (ftpUrl) async {
      return await ftpProvider.fileExists(ftpUrl);
    }, cached: (cachedUrl) async {
      return await fileProvider.fileExists(await cachedUrltoFileUrl(cachedUrl));
    });
  }
}
