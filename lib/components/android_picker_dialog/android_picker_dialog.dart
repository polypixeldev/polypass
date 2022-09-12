import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:go_router/go_router.dart';

import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

class AndroidPickerDialog extends StatelessWidget {
  const AndroidPickerDialog(
      {Key? key, required this.onSuccess, required this.onCancel})
      : super(key: key);

  final void Function(String path) onSuccess;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final dirWidgetsFuture = AppSettings.documentsDir.then((dir) {
      final entries = Directory('${dir?.absolute.path}/polypass').listSync();
      final vaultFiles = entries
          .whereType<File>()
          .where((file) => file.path.endsWith('.ppv.json'));
      final vaults = vaultFiles.map((vaultFile) => {
            'path': vaultFile.absolute.path,
            'vault':
                VaultFile.fromJson(jsonDecode(vaultFile.readAsStringSync()))
          });

      return vaults
          .map((vault) => VaultListItem(
              vault: vault['vault'] as VaultFile,
              path: vault['path'] as String,
              onSelect: onSuccess))
          .toList();
    });

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.background,
                border: Border.all(
                    color: theme.appBarTheme.backgroundColor!, width: 5),
                borderRadius: BorderRadius.circular(10)),
            constraints: const BoxConstraints(maxHeight: 200, maxWidth: 700),
            padding: const EdgeInsets.all(10),
            child: FutureBuilder(
                future: dirWidgetsFuture,
                builder: (context, snap) {
                  return ListView(
                    children: snap.hasData
                        ? [
                            FtpButton(onCancel: onCancel),
                            ...snap.data as List<Widget>,
                            CancelButton(onCancel: onCancel)
                          ]
                        : [],
                  );
                })));
  }
}

class FtpButton extends StatelessWidget {
  const FtpButton({Key? key, required this.onCancel}) : super(key: key);

  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        child: const Text('Open via FTP'),
        onPressed: () => router.go('/ftp'),
      ),
    );
  }
}

class VaultListItem extends StatelessWidget {
  const VaultListItem(
      {Key? key,
      required this.vault,
      required this.path,
      required this.onSelect})
      : super(key: key);

  final VaultFile vault;
  final String path;
  final void Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(path),
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [Text(vault.header.name)],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key, required this.onCancel}) : super(key: key);

  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        child: const Text('Cancel'),
        onPressed: onCancel,
      ),
    );
  }
}

Future<String?> pickFileAndroid(BuildContext context) async {
  String? path;

  await showDialog(
      context: context,
      builder: (context) => AndroidPickerDialog(
            onSuccess: (dialogPath) {
              path = dialogPath;
              Navigator.of(context, rootNavigator: true).pop();
            },
            onCancel: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ));

  return path;
}
