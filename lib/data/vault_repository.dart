import 'dart:convert';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_providers.dart';
import 'package:polypass/data/vault_file.dart';

class VaultRepository {
  const VaultRepository();
  final FileProvider fileProvider = const FileProvider();

  Future<VaultFile> getFile(String path) async {
    final raw = await fileProvider.readFile(path);
    return VaultFile.fromJson(jsonDecode(raw));
  }

  Future<void> updateFile(VaultFile file, Key key) async {
    var encryptedContents = file.contents.encrypt(key);
    final raw = file.copyWith(contents: encryptedContents).toJson();
    await fileProvider.updateFile(file.path, jsonEncode(raw));
  }

  Future<void> deleteFile(String path) async {
    await fileProvider.deleteFile(path);
  }
}