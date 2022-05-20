import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc.dart';

AppBar createAppBar(BuildContext context, VaultState state, bool actions, bool icon) {
  final vaultBloc = context.read<VaultBloc>();

  Widget? appBarIcon;
  List<IconButton>? appBarActions;

  state.whenOrNull(
    locked: (_vault) {
      appBarIcon = const Icon(Icons.lock);

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Close vault',
          onPressed: () {
            vaultBloc.add(const VaultEvent.closed());
          }
        )
      ];
    },
    unlocked: (_vault, _masterKey) {
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock_open),
        tooltip: 'Lock vault',
        onPressed: () {
          vaultBloc.add(const VaultEvent.locked());
        }
      );

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Create an item',
          onPressed: () {
            // TODO: Create a vault item
          }
        ),
        IconButton(
          icon: const Icon(Icons.edit),
          tooltip: 'Edit the selected item',
          onPressed: () {
            // TODO: Edit a vault item
          }
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          tooltip: 'Delete the selected item',
          onPressed: () {
            // TODO: Delete a vault item
          }
        ),
        IconButton(
          icon: const Icon(Icons.preview_outlined),
          tooltip: 'View the selected item',
          onPressed: () {
            // TODO: View a vault item
          }
        )
      ];
    }
  );

  final polyPassAppBar = AppBar(
    title: const Text('PolyPass'),
    centerTitle: true,
    leading: icon == true && appBarIcon != null ? appBarIcon : null,
    actions: actions == true && appBarActions != null ? appBarActions : null
  );

  return polyPassAppBar;
}