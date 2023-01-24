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

  static FTPConnect? _connection;
  static String? _host;
  static String? _path;

  Future<void> checkConnection(FtpVaultUrl? url) async {
    if (_connection == null) {
      await connect(url!);
    } else if (_path != url!.path || _host != url.host) {
      await disconnect();
      await connect(url);
    }
  }

  Future<void> connect(FtpVaultUrl url) async {
    if (_connection != null) {
      await disconnect();
    }

    _connection =
        FTPConnect(url.host, user: url.user, pass: url.password, timeout: 10);
    _host = url.host;
    _path = url.path;

    await _connection!.connect();
  }

  Future<void> disconnect() async {
    await _connection!.disconnect();
    _connection = null;
    _host = null;
    _path = null;
  }

  Future<String> readFile(FtpVaultUrl? url) async {
    await checkConnection(url);

    final localFile =
        File('${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
    final successful =
        await _connection!.downloadFileWithRetry(_path!, localFile);

    if (successful) {
      final contents = await localFile.readAsString();
      await localFile.delete();

      return contents;
    } else {
      throw Exception('FTP_DOWNLOAD_FAILED');
    }
  }

  Future<void> updateFile(FtpVaultUrl? url, String contents) async {
    await checkConnection(url);

    final localFile =
        File('${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
    await localFile.writeAsString(contents);
    final successful =
        await _connection!.uploadFileWithRetry(localFile, pRemoteName: _path!);

    if (!successful) {
      throw Exception('FTP_UPLOAD_FAILED');
    }
  }

  Future<void> deleteFile(FtpVaultUrl? url) async {
    await checkConnection(url);

    final successful = await _connection!.deleteFile(_path!);

    if (successful) {
      final localFile = File(
          '${(await getTemporaryDirectory()).absolute.path}/vault.ppv.json');
      await localFile.delete();
    } else {
      throw Exception('FTP_DELETE_FAILED');
    }
  }

  Future<bool> fileExists(FtpVaultUrl? url) async {
    await checkConnection(url);

    final exists = await _connection!.existFile(_path!);

    if (exists) {
      return true;
    } else {
      return false;
    }
  }
}
