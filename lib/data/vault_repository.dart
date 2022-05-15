import 'vault_providers.dart';
import 'vault_file.dart';

class VaultRepository {
  const VaultRepository();
  final FileProvider fileProvider = const FileProvider();

  Future<VaultFile> getFile(String path) async {
    final raw = await fileProvider.readFile(path);
    return VaultFile.fromJson(raw, path);
  }

  Future<void> updateFile(VaultFile file) async {
    final raw = file.toJson();
    await fileProvider.updateFile(file.path, raw);
  }

  Future<void> deleteFile(String path) async {
    await fileProvider.deleteFile(path);
  }
}