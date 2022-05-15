import './db_providers.dart';
import '../blocs/db_bloc.dart';

class DatabaseFile {
  DatabaseFile({
    required this.header,
    required this.contents,
    required this.path
  });

  DatabaseHeader header;
  List<DatabaseComponent> contents;
  String path;
}

class DatabaseHeader {
  const DatabaseHeader({
    required this.name,
    required this.description
  });

  final String name;
  final String description;
}

class DatabaseRepository {
  const DatabaseRepository();
  final FileProvider fileProvider = const FileProvider();

  Future<void> createFile(String path, DatabaseFile? contents) async {
    // TODO: Transform contents into raw string
    final raw = '';
    await fileProvider.createFile(path, raw);
  }

  Future<DatabaseFile> getFile(String path) async {
    final raw = await fileProvider.readFile();
    // TODO: Transform raw file into DatabaseFile
  }

  Future<void> updateFile(String path, DatabaseFile contents) async {
    // TODO: Transform contents into raw string
    final raw = '';
    await fileProvider.updateFile(path, raw);
  }

  Future<void> deleteFile(String path) async {
    await fileProvider.deleteFile(path);
  }
}