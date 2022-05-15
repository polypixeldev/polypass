import 'dart:convert';

import './db_providers.dart';
import '../blocs/db_bloc.dart';

// Database file schema
//
// {
//    header: {
//        name: String,
//        description: String
//    },
//    contents: String
// }

class DatabaseFile {
  DatabaseFile({
    required this.header,
    required this.contents,
    required this.path
  });

  factory DatabaseFile.fromJson(String json, String path) {
    final map = jsonDecode(json);
    final header = map['header'];
    final name = header['name'] as String;
    final description = header['description'] as String;
    final contents = DatabaseContents.fromEncoded(map['contents'] as String);

    return DatabaseFile(
      header: DatabaseHeader(
        description: description,
        name: name
      ),
      contents: contents,
      path: path
    );
  }

  DatabaseHeader header;
  DatabaseContents contents;
  String path;

  String toJson() {
    final map = {
      'header': {
        'name': header.name,
        'description': header.description
      },
      'contents': contents.encrypt()
    };

    return jsonEncode(map);
  }
}

class DatabaseHeader {
  const DatabaseHeader({
    required this.name,
    required this.description
  });

  final String name;
  final String description;
}

class DatabaseContents {
  const DatabaseContents({
    required this.items
  });

  factory DatabaseContents.fromEncoded(String encoded) {
    // TODO: Decrypt contents
    return const DatabaseContents(
      items: []
    );
  }

  final List<DatabaseComponent> items;

  String encrypt() {
    // TODO: Encrypt items
    return '';
  }
}

class DatabaseRepository {
  const DatabaseRepository();
  final FileProvider fileProvider = const FileProvider();

  Future<void> createFile(String path, DatabaseFile? file) async {
    // TODO: Transform contents into raw string
    final raw = file?.toJson() ?? '';
    await fileProvider.updateFile(path, raw);
  }

  Future<DatabaseFile> getFile(String path) async {
    final raw = await fileProvider.readFile(path);
    return DatabaseFile.fromJson(raw, path);
  }

  Future<void> updateFile(String path, DatabaseFile contents) async {
    final raw = contents.toJson();
    await fileProvider.updateFile(path, raw);
  }

  Future<void> deleteFile(String path) async {
    await fileProvider.deleteFile(path);
  }
}