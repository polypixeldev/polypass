import 'dart:convert';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_providers.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/cache/cache.dart';

class VaultRepository {
  const VaultRepository();

  final FileProvider fileProvider = const FileProvider();
  final FtpProvider ftpProvider = const FtpProvider();

  Future<VaultFile> getFile(VaultUrl url) async {
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
        try {
          final file = await getFile(cachedFile.header.remoteUrl!);
          if (jsonEncode(file.toJson()) !=
              jsonEncode(cachedFile
                  .copyWith(header: cachedFile.header.copyWith(remoteUrl: null))
                  .toJson())) {
            // TODO: Merge files
            throw MergeException(local: cachedFile, remote: file);
          }
          return cachedFile;
        } catch (e) {
          return cachedFile;
        }
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
