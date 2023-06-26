import 'package:flutter/material.dart';

import 'package:polypass/data/vault_file/vault_file.dart';

class MergeConflictDialog extends StatelessWidget {
  const MergeConflictDialog(
      {Key? key,
      required this.onResolve,
      required this.localFile,
      required this.remoteFile})
      : super(key: key);

  final void Function(VaultFile resolvedFile) onResolve;
  final VaultFile localFile;
  final VaultFile remoteFile;

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
            constraints: const BoxConstraints(maxHeight: 250, maxWidth: 700),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Merge Conflict', style: theme.textTheme.titleMedium),
                Text(
                  'There have been changes to this file on multiple devices since the last sync. Please select a version to keep.',
                  style: TextStyle(
                      fontSize: theme.textTheme.bodySmall!.fontSize,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LocalButton(onResolve: onResolve, localFile: localFile),
                      RemoteButton(onResolve: onResolve, remoteFile: remoteFile)
                    ])
              ],
            )));
  }
}

class LocalButton extends StatelessWidget {
  const LocalButton(
      {Key? key, required this.onResolve, required this.localFile})
      : super(key: key);

  final Function(VaultFile resolvedFile) onResolve;
  final VaultFile localFile;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Local',
          style: TextStyle(color: Colors.white, fontSize: 25)),
      onPressed: () {
        onResolve(localFile);
      },
    );
  }
}

class RemoteButton extends StatelessWidget {
  const RemoteButton(
      {Key? key, required this.onResolve, required this.remoteFile})
      : super(key: key);

  final Function(VaultFile resolvedFile) onResolve;
  final VaultFile remoteFile;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Remote',
          style: TextStyle(color: Colors.white, fontSize: 25)),
      onPressed: () {
        onResolve(remoteFile);
      },
    );
  }
}

Future<VaultFile> resolveConflict(BuildContext context,
    {required VaultFile local, required VaultFile remote}) async {
  VaultFile? resolvedFile;

  await showDialog<VaultFile>(
      context: context,
      builder: (context) => MergeConflictDialog(
          onResolve: (dialogResolvedFile) {
            resolvedFile = dialogResolvedFile;
            Navigator.of(context, rootNavigator: true).pop();
          },
          localFile: local,
          remoteFile: remote));

  return resolvedFile!;
}
