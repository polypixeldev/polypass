import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/pages/vault/home/vault_home_bloc/vault_home_bloc.dart';
import 'package:polypass/pages/vault/home/component_bloc/component_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:polypass/components/master_password_dialog/master_password_dialog.dart';

class Tree extends StatelessWidget {
  const Tree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .25) - 21,
      child: BlocBuilder<VaultBloc, VaultState>(builder: (context, state) {
        final unlockedState =
            state.maybeMap(unlocked: (state) => state, orElse: () => null);

        if (unlockedState == null) {
          return Container();
        }

        final decryptedContents = unlockedState.vault.contents.maybeMap(
            decrypted: (contents) => contents, orElse: () => throw Error());

        final groups =
            decryptedContents.data.components.whereType<Group>().toList();
        groups.sort((a, b) =>
            a.group.name.toLowerCase().compareTo(b.group.name.toLowerCase()));

        if (unlockedState.selectedGroup?[0] == 'Search Results') {
          final components = context
              .read<VaultHomeBloc>()
              .state
              .results
              .map((path) => unlockedState.vault.getComponent(path));

          groups.add(Group(VaultGroup(
              name: 'Search Results', components: components.toList())));
        }

        return ListView(primary: false, children: [
          ...groups.map((group) =>
              TreeGroup(group: group.group, path: [group.group.name]))
        ]);
      }),
    );
  }
}

class TreeGroup extends StatelessWidget {
  const TreeGroup({Key? key, required this.group, this.path = const []})
      : super(key: key);

  final VaultGroup group;
  final List<String> path;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (_context) => ComponentBloc(),
      child: BlocBuilder<ComponentBloc, ComponentState>(
        builder: (context, componentState) {
          return BlocBuilder<VaultBloc, VaultState>(
              builder: (context, vaultState) {
            final unlockedState = vaultState.maybeMap(
                unlocked: (state) => state, orElse: () => throw Error());
            final Widget textWidget;
            if (componentState.mode == ComponentMode.normal) {
              textWidget = Text(group.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: theme.textTheme.bodySmall!.fontSize));
            } else {
              textWidget = TextFormField(
                initialValue: group.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: theme.textTheme.bodySmall!.fontSize),
                onFieldSubmitted: (newName) async {
                  if (newName.contains(RegExp(r'\.'))) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            'Invalid character - "." is not allowed in names')));
                    return;
                  }

                  if (newName == 'Search Results') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('This group name is reserved')));
                    return;
                  }

                  final vaultBloc = context.read<VaultBloc>();

                  var selectedPath = unlockedState.selectedGroup;

                  if (selectedPath != null) {
                    if (selectedPath.join('.') == path.join('.')) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content:
                              Text('You cannot rename the selected group')));
                      return;
                    }
                  }

                  final parentGroup = path.length == 1
                      ? unlockedState.vault.toGroup()
                      : unlockedState.vault
                          .getComponent(path.take(path.length - 1).toList())
                          .maybeWhen(
                              group: (group) => group,
                              orElse: () => throw Error());

                  if (parentGroup.components
                      .where((component) =>
                          component.when(
                              group: (group) => group.name,
                              item: (item) => item.name) ==
                          newName)
                      .isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                            'A group or item with this name already exists in the selected group')));
                    return;
                  }

                  final component = unlockedState.vault
                      .getComponent(path)
                      .maybeMap(
                          group: (group) => group, orElse: () => throw Error());
                  final updatedComponent = component.copyWith(
                      group: component.group.copyWith(name: newName));

                  final newVault = unlockedState.vault
                      .updateComponent(path: path, component: updatedComponent);

                  var masterKey = (await getMasterKey(context)).masterKey;

                  if (masterKey == null) {
                    return;
                  }

                  vaultBloc.add(VaultEvent.updated(newVault, masterKey));

                  context
                      .read<ComponentBloc>()
                      .add(const ComponentEvent.modeToggled());
                },
              );
            }

            var groups = <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 3),
                  decoration: BoxDecoration(
                      color: path[0] == 'Search Results'
                          ? Colors.orange
                          : unlockedState.selectedGroup?.join('.') ==
                                  path.join('.')
                              ? theme.colorScheme.tertiary
                              : componentState.inArea
                                  ? theme.colorScheme.primaryContainer
                                  : theme.cardColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: GestureDetector(
                    child: MouseRegion(
                        child: Row(children: [
                          IconButton(
                            icon: Icon(
                                componentState.expand == ExpandMode.collapsed
                                    ? Icons.expand_more_sharp
                                    : Icons.expand_less_sharp),
                            onPressed: () {
                              context
                                  .read<ComponentBloc>()
                                  .add(const ComponentEvent.expandToggled());
                            },
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 3),
                              child: textWidget,
                            ),
                          )
                        ]),
                        onEnter: (_event) {
                          context
                              .read<ComponentBloc>()
                              .add(const ComponentEvent.entered());
                        },
                        onExit: (_event) {
                          context
                              .read<ComponentBloc>()
                              .add(const ComponentEvent.exited());
                        }),
                    onTap: () {
                      context.read<VaultBloc>().add(VaultEvent.groupSelected(
                          path,
                          unlockedState.selectedGroup?.join('.') ==
                              path.join('.')));
                    },
                    onDoubleTap: () {
                      context
                          .read<ComponentBloc>()
                          .add(const ComponentEvent.modeToggled());
                    },
                  ),
                ),
              )
            ];

            final selectedPath = unlockedState.selectedGroup;

            if ((selectedPath?.join('.') == path.join('.') ||
                    path.length < (selectedPath?.length ?? -1)) ||
                componentState.expand == ExpandMode.expanded) {
              final childGroups = group.components.whereType<Group>().toList();
              childGroups.sort((a, b) => a.group.name
                  .toLowerCase()
                  .compareTo(b.group.name.toLowerCase()));
              for (final childGroup in childGroups) {
                groups.add(Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TreeGroup(
                      group: childGroup.group,
                      path: [...path, childGroup.group.name]),
                ));
              }
            }

            return Column(children: groups);
          });
        },
      ),
    );
  }
}