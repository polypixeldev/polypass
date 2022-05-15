import 'dart:convert';

import 'vault_providers.dart';
import '../blocs/vault_bloc.dart';

// Vault file schema (.ppv.json)
//
// {
//    header: {
//        name: String,
//        description: String
//    },
//    contents: String
// }

class VaultFile {
  VaultFile({
    required this.header,
    required this.contents,
    required this.path
  });

  factory VaultFile.fromJson(String json, String path) {
    final map = jsonDecode(json);
    final header = map['header'];
    final name = header['name'] as String;
    final description = header['description'] as String;
    final contents = VaultContents.fromEncoded(map['contents'] as String);

    return VaultFile(
      header: VaultHeader(
        description: description,
        name: name
      ),
      contents: contents,
      path: path
    );
  }

  VaultHeader header;
  VaultContents contents;
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

class VaultHeader {
  const VaultHeader({
    required this.name,
    required this.description
  });

  final String name;
  final String description;
}

class VaultContents {
  const VaultContents({
    required this.items
  });

  factory VaultContents.fromEncoded(String encoded) {
    // TODO: Decrypt contents
    return const VaultContents(
      items: []
    );
  }

  final List<VaultComponent> items;

  String encrypt() {
    // TODO: Encrypt items
    return '';
  }
}

class VaultRepository {
  const VaultRepository();
  final FileProvider fileProvider = const FileProvider();

  Future<void> createFile(String path, VaultFile? file) async {
    // TODO: Transform contents into raw string
    final raw = file?.toJson() ?? '';
    await fileProvider.updateFile(path, raw);
  }

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