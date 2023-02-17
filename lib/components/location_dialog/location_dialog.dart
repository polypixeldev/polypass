import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/app_settings/app_settings.dart';

class LocationDialog extends StatelessWidget {
  const LocationDialog(
      {Key? key,
      required this.onSuccess,
      required this.onCancel,
      required this.redirect,
      required this.vaultName})
      : super(key: key);

  final void Function(VaultUrl path) onSuccess;
  final void Function() onCancel;
  final String redirect;
  final String vaultName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.background,
                border: Border.all(
                    color: theme.appBarTheme.backgroundColor!, width: 5),
                borderRadius: BorderRadius.circular(10)),
            constraints: const BoxConstraints(maxHeight: 200, maxWidth: 800),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                FtpButton(
                  redirect: redirect,
                ),
                LocalButton(
                  onSuccess: onSuccess,
                  vaultName: vaultName,
                ),
                CancelButton(onCancel: onCancel)
              ],
            )));
  }
}

class FtpButton extends StatelessWidget {
  const FtpButton({Key? key, required this.redirect}) : super(key: key);

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
            Text('Save via FTP', style: Theme.of(context).textTheme.bodyMedium),
        onPressed: () => router.go('/ftp?redirect=$redirect'),
      ),
    );
  }
}

class LocalButton extends StatelessWidget {
  const LocalButton(
      {Key? key, required this.onSuccess, required this.vaultName})
      : super(key: key);

  final void Function(VaultUrl path) onSuccess;
  final String vaultName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        child:
            Text('Save locally', style: Theme.of(context).textTheme.bodyMedium),
        onPressed: () async {
          final vaultDir = AppSettings.polypassDir;
          final VaultUrl path;

          if (Platform.isAndroid) {
            path = VaultUrl.file(
                '$vaultDir/${vaultName == '' ? 'Passwords' : vaultName}.ppv.json');
          } else {
            final result = await FilePicker.platform.saveFile(
                initialDirectory: vaultDir,
                dialogTitle: 'Set vault file location',
                fileName: vaultName == ''
                    ? 'Passwords.ppv.json'
                    : '$vaultName.ppv.json',
                type: FileType.custom,
                allowedExtensions: ['ppv.json']);

            if (result == null) {
              return;
            }

            path = VaultUrl.file(result);
          }

          onSuccess(path);
        },
      ),
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key, required this.onCancel}) : super(key: key);

  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
      onPressed: onCancel,
      child: Text('Cancel', style: Theme.of(context).textTheme.bodyMedium),
    );
  }
}

Future<VaultUrl?> saveFileLocation(
    BuildContext context, String redirect, String vaultName) async {
  VaultUrl? path;

  await showDialog(
      context: context,
      builder: (context) => LocationDialog(
          onSuccess: (dialogPath) {
            path = dialogPath;
            Navigator.of(context, rootNavigator: true).pop();
          },
          onCancel: () {
            Navigator.of(context, rootNavigator: true).pop();
          },
          redirect: redirect,
          vaultName: vaultName));

  return path;
}
