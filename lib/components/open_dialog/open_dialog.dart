import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';

import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

class OpenDialog extends StatelessWidget {
  const OpenDialog(
      {Key? key,
      required this.onSuccess,
      required this.onCancel,
      required this.redirect})
      : super(key: key);

  final void Function(String path, bool cached) onSuccess;
  final void Function() onCancel;
  final String redirect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final dirWidgetsFuture = AppSettings.getPolyPassDir().then((dir) {
      final entries = Directory(dir).listSync();
      final cacheDir = Directory('$dir/.cache');
      if (!cacheDir.existsSync()) {
        cacheDir.createSync();
      }
      entries.addAll(cacheDir.listSync());
      final vaultFiles = entries
          .whereType<File>()
          .where((file) => file.path.endsWith('.ppv.json'));
      final vaults = vaultFiles.map((vaultFile) => {
            'path': vaultFile.absolute.path,
            'vault':
                VaultFile.fromJson(jsonDecode(vaultFile.readAsStringSync())),
            'cached': vaultFile.absolute.path.contains('.cache')
          });

      return vaults
          .map((vault) => VaultListItem(
              vault: vault['vault'] as VaultFile,
              path: vault['path'] as String,
              cached: vault['cached'] as bool,
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
            constraints: const BoxConstraints(maxHeight: 500, maxWidth: 700),
            padding: const EdgeInsets.all(10),
            child: FutureBuilder(
                future: dirWidgetsFuture,
                builder: (context, snap) {
                  return ListView(
                    shrinkWrap: true,
                    children: snap.hasData
                        ? [
                            LocalButton(
                                onCancel: onCancel, onSuccess: onSuccess),
                            FtpButton(onCancel: onCancel, redirect: redirect),
                            ...snap.data as List<Widget>,
                            CancelButton(onCancel: onCancel)
                          ]
                        : const [
                            Text('Loading...', textAlign: TextAlign.center)
                          ],
                  );
                })));
  }
}

class LocalButton extends StatelessWidget {
  const LocalButton({Key? key, required this.onCancel, required this.onSuccess})
      : super(key: key);

  final void Function() onCancel;
  final void Function(String path, bool cached) onSuccess;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        child:
            Text('Open locally', style: Theme.of(context).textTheme.bodyMedium),
        onPressed: () async {
          final result = await FilePicker.platform.pickFiles(
              dialogTitle: 'Open PolyPass Vault',
              type: FileType.custom,
              allowedExtensions: ['ppv.json']);

          final filePath = result?.files.first.path;

          if (filePath == null) {
            onCancel();
          } else {
            onSuccess(filePath, false);
          }
        },
      ),
    );
  }
}

class FtpButton extends StatelessWidget {
  const FtpButton({Key? key, required this.onCancel, required this.redirect})
      : super(key: key);

  final void Function() onCancel;
  final String redirect;

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        child:
            Text('Open via FTP', style: Theme.of(context).textTheme.bodyMedium),
        onPressed: () => router.go('/ftp?redirect=$redirect'),
      ),
    );
  }
}

class VaultListItem extends StatelessWidget {
  const VaultListItem(
      {Key? key,
      required this.vault,
      required this.path,
      required this.cached,
      required this.onSelect})
      : super(key: key);

  final VaultFile vault;
  final String path;
  final bool cached;
  final void Function(String path, bool cached) onSelect;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onSelect(path, cached),
        child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(5)),
          child: Row(
            children: [
              Text(vault.header.name,
                  style: Theme.of(context).textTheme.bodyMedium)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
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
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        child: Text('Cancel', style: Theme.of(context).textTheme.bodyMedium),
        onPressed: onCancel,
      ),
    );
  }
}

Future<VaultUrl?> pickFileLocation(
    BuildContext context, String redirect) async {
  String? path;
  bool cached = false;

  await showDialog(
      context: context,
      builder: (context) => OpenDialog(
          onSuccess: (dialogPath, dialogCached) {
            path = dialogPath;
            cached = dialogCached;
            Navigator.of(context, rootNavigator: true).pop();
          },
          onCancel: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          redirect: redirect));

  if (path == null) return null;

  final VaultUrl url;

  if (cached) {
    url = VaultUrl.cached(uuid: path!.split('/').last.split('.').first);
  } else {
    url = VaultUrl.file(path!);
  }

  return url;
}
