import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc.dart';
import 'package:polypass/data/vault_file.dart';

AppBar createAppBar(BuildContext context, VaultState state, bool actions, bool icon) {
  final vaultBloc = context.read<VaultBloc>();
  final router = GoRouter.of(context);

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
          },
          splashRadius: 20,
        )
      ];
    },
    unlocked: (_vault, _selectedGroup, _selectedItem, _masterKey) {
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock_open),
        tooltip: 'Lock vault',
        onPressed: () {
          vaultBloc.add(const VaultEvent.locked());
        },
        splashRadius: 20,
      );

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.create_new_folder_sharp),
          tooltip: 'Create a group',
          onPressed: () {
            // TODO: Create new group in selected group
            final vaultBloc = context.read<VaultBloc>();
            final vaultState= vaultBloc.state.maybeMap(
              unlocked: (state) => state,
              orElse: () => throw Error()
            );
            final decryptedContents = vaultState.vault.contents.maybeMap(
              decrypted: (contents) => contents,
              orElse: () => throw Error()
            );

            var testName = 'New Group';
            var number = 2;
            while(decryptedContents.data.components.whereType<Group>().where((group) => group.group.name == testName).toList().isNotEmpty) {
              testName = 'New Group $number';
              number++;
            }

            vaultBloc.add(VaultEvent.updated(vaultState.vault.copyWith(
              contents: EncryptedData<VaultContents>.decrypted(decryptedContents.data.copyWith(
                components: [...decryptedContents.data.components, VaultComponent.group(VaultGroup(
                  name: testName,
                  components: [],
                ))]
              ), decryptedContents.iv)
            // TODO: Prompt user for masterPassword and derive masterKey if masterKey is not saved
            ), vaultState.masterKey!));
          },
          splashRadius: 20
        ),
        IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Create an item',
          onPressed: () {
            router.go('/vault/new');
          },
          splashRadius: 20,
        ),
        IconButton(
          icon: const Icon(Icons.edit),
          tooltip: 'Edit the selected item',
          onPressed: () {
            // TODO: Edit a vault item
          },
          splashRadius: 20,
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          tooltip: 'Delete the selected item',
          onPressed: () {
            // TODO: Delete a vault item
          },
          splashRadius: 20,
        ),
        IconButton(
          icon: const Icon(Icons.preview_outlined),
          tooltip: 'View the selected item',
          onPressed: () {
            // TODO: View a vault item
          },
          splashRadius: 20,
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