import 'dart:io';

import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/ffi.dart';

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
  FtpProvider();

  RwLockFtpProvider providerLock = api.initializeLockedProvider();

  Future<void> checkConnection(FtpVaultUrl url) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    await api.checkConnection(providerLock: providerLock, url: ftpUrl);
    ftpUrl.dispose();
  }

  Future<void> connect(FtpVaultUrl url) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    await api.connect(providerLock: providerLock, url: ftpUrl);
    ftpUrl.dispose();
  }

  Future<void> disconnect() async {
    await api.disconnect(providerLock: providerLock);
  }

  Future<String> readFile(FtpVaultUrl url) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    final contents =
        await api.readFile(providerLock: providerLock, url: ftpUrl);
    ftpUrl.dispose();
    return contents;
  }

  Future<void> updateFile(FtpVaultUrl url, String contents) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    await api.updateFile(
        providerLock: providerLock, url: ftpUrl, contents: contents);
    ftpUrl.dispose();
  }

  Future<void> deleteFile(FtpVaultUrl url) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    await api.deleteFile(providerLock: providerLock, url: ftpUrl);
    ftpUrl.dispose();
  }

  Future<bool> fileExists(FtpVaultUrl url) async {
    final ftpUrl = api.initializeFtpUrl(
        path: url.path, host: url.host, user: url.user, pass: url.password);
    final exists =
        await api.fileExists(providerLock: providerLock, url: ftpUrl);
    ftpUrl.dispose();
    return exists;
  }
}
