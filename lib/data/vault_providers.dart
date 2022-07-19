import 'dart:io';

abstract class VaultProvider {
  const VaultProvider();

  Future<String> readFile(String path);

  Future<void> updateFile(String path, String contents);

  Future<void> deleteFile(String path);
}

class FileProvider extends VaultProvider {
  const FileProvider();

  @override
  Future<String> readFile(String path) async {
    final file = File(path);
    final exists = await file.exists();

    if (!exists) {
      throw Exception('NONEXISTENT_FILE');
    }

    final contents = await file.readAsString();

    return contents;
  }

  @override
  Future<void> updateFile(String path, String contents) async {
    final file = File(path);
    await file.writeAsString(contents);
  }

  @override
  Future<void> deleteFile(String path) async {
    final file = File(path);
    final exists = await file.exists();

    if (!exists) {
      throw Exception('NONEXISTENT_FILE');
    }

    await file.delete();
  }
}
