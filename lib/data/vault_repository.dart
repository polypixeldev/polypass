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
    const contents = const VaultContents.encrypted(map['contents'] as String);

    return VaultFile(
      header: VaultHeader(
        description: description,
        name: name
      ),
      contents: contents,
      path: path
    );
  }

  static final VaultFile empty = VaultFile(
    header: const VaultHeader(
      name: '',
      description: ''
    ),
    path: '',
    contents: const VaultContents.encrypted('')
  );

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

  VaultFile copyWith({
    VaultHeader? header,
    VaultContents? contents,
    String? path
  }) {
    return VaultFile(
      header: header ?? this.header,
      contents: contents ?? this.contents,
      path: path ?? this.path
    );
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

enum VaultContents {
  encrypted(String),
  decrypted(List<VaultComponent>);
  const VaultContents(contents);

  VaultContents decrypt() {
    // TODO: Decrypt contents
    return const VaultContents.decrypted([]);
  }

  VaultContents encrypt() {
    // TODO: Encrypt items
    return const VaultContents.encrypted('');
  }
}

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