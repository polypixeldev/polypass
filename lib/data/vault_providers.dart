import 'dart:io';
import 'package:ftpconnect/ftpconnect.dart';
import 'package:path_provider/path_provider.dart';

import 'package:polypass/data/vault_file/vault_file.dart';

class FileProvider {
  const FileProvider();

  Future<String> readFile(FileVaultUrl url) async {
    final file = File(url.path);
    final exists = await file.exists();

    if (!exists) {
      throw Exception('NONEXISTENT_FILE: ${url.path}');
    }

    final contents = await file.readAsString();

    return contents;
  }

  Future<void> updateFile(FileVaultUrl url, String contents) async {
    final file = File(url.path);
    await file.writeAsString(contents);
  }

  Future<void> deleteFile(FileVaultUrl url) async {
    final file = File(url.path);
    final exists = await file.exists();

    if (!exists) {
      throw Exception('NONEXISTENT_FILE: ${url.path}');
    }

    await file.delete();
  }

  Future<bool> fileExists(FileVaultUrl url) async {
    final file = File(url.path);
    return await file.exists();
  }
}

class FtpProvider {
  const FtpProvider();

  Future<String> readFile(FtpVaultUrl url) async {
    final connection =
        FTPConnect(url.host, user: url.user, pass: url.password, timeout: 10);

    await connection.connect();

    final localFile =
        File('${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
    final successful =
        await connection.downloadFileWithRetry(url.path, localFile);
    await connection.disconnect();

    if (successful) {
      final contents = await localFile.readAsString();
      await localFile.delete();

      return contents;
    } else {
      throw Exception('FTP_DOWNLOAD_FAILED');
    }
  }

  Future<void> updateFile(FtpVaultUrl url, String contents) async {
    final connection =
        FTPConnect(url.host, user: url.user, pass: url.password, timeout: 10);

    await connection.connect();

    final localFile =
        File('${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
    await localFile.writeAsString(contents);
    final successful =
        await connection.uploadFileWithRetry(localFile, pRemoteName: url.path);
    await connection.disconnect();

    if (!successful) {
      throw Exception('FTP_UPLOAD_FAILED');
    }
  }

  Future<void> deleteFile(FtpVaultUrl url) async {
    final connection =
        FTPConnect(url.host, user: url.user, pass: url.password, timeout: 10);

    await connection.connect();
    final successful = await connection.deleteFile(url.path);
    await connection.disconnect();

    if (successful) {
      final localFile = File(
          '${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
      await localFile.delete();
    } else {
      throw Exception('FTP_DELETE_FAILED');
    }
  }

  Future<bool> fileExists(FtpVaultUrl url) async {
    final connection =
        FTPConnect(url.host, user: url.user, pass: url.password, timeout: 10);

    await connection.connect();
    final exists = await connection.existFile(url.path);
    await connection.disconnect();

    if (exists) {
      return true;
    } else {
      return false;
    }
  }
}
