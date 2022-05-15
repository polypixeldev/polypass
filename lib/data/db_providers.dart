abstract class DatabaseProvider {
  const DatabaseProvider();

  Future<void> createFile(String path, String? contents);

  Future<String> readFile(String path);

  Future<void> updateFile(String path, String contents);
  
  Future<void> deleteFile(String path);
}

class FileProvider extends DatabaseProvider {
  const FileProvider();

  @override
  Future<void> createFile(String path, String? contents) async {
    // TODO: Create database file
  }

  @override
  Future<String> readFile(String path) async {
    // TODO: Read database file
  }

  @override
  Future<void> updateFile(String path, String contents) async {
    // TODO: Update database file
  }

  @override
  Future<void> deleteFile(String path) async {
    // TODO: Delete database file
  }
}