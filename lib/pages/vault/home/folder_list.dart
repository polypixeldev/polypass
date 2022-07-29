import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/pages/vault/home/vault_home_bloc/vault_home_bloc.dart';
import 'package:polypass/pages/vault/home/component_bloc/component_bloc.dart';
import 'package:polypass/pages/vault/home/list_item_bloc/list_item_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:polypass/components/master_password_dialog/master_password_dialog.dart';

class FolderList extends StatelessWidget {
  const FolderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .75) - 22,
      child: BlocBuilder<VaultBloc, VaultState>(
        builder: (context, state) {
          final unlockedState =
              state.maybeMap(unlocked: (state) => state, orElse: () => null);

          if (unlockedState == null) {
            // TODO: Switch from throwing errors to peacefully returning
            return Container();
          }

          final decryptedContents = unlockedState.vault.contents.maybeMap(
              decrypted: (contents) => contents, orElse: () => throw Error());
          final List<VaultComponent> components;
          final paths = unlockedState.selectedGroup;

          if (paths == null) {
            components = decryptedContents.data.components;
          } else if (paths[0] == 'Search Results') {
            components = context
                .read<VaultHomeBloc>()
                .state
                .results
                .map((path) => unlockedState.vault.getComponent(path))
                .toList();
          } else {
            components = unlockedState.vault.getComponent(paths).maybeWhen(
                group: (group) => group.components,
                orElse: () => throw Error());
          }

          final items = components.whereType<Item>().toList();
          items.sort((a, b) =>
              a.item.name.toLowerCase().compareTo(b.item.name.toLowerCase()));

          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListView(primary: false, children: [
              const ListHeader(),
              ...items.map((item) => ListItem(
                  item: item.item,
                  path: paths != null
                      ? [...paths, item.item.name]
                      : [item.item.name]))
            ]),
          );
        },
      ),
    );
  }
}

class BaseRow extends StatelessWidget {
  const BaseRow(
      {Key? key,
      required this.name,
      required this.username,
      required this.actions,
      required this.extra,
      this.hoverEffect = true,
      this.path})
      : super(key: key);

  final Widget Function(
      ComponentState state, bool isSelected, double columnWidth) name;
  final Widget Function(
      ComponentState state, bool isSelected, double columnWidth) username;
  final Widget? Function(
      ComponentState state, bool isSelected, double columnWidth) actions;
  final List<Widget>? Function(
      ComponentState state, bool isSelected, double columnWidth) extra;
  final bool hoverEffect;
  final List<String>? path;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (_context) => ComponentBloc(),
      child:
          BlocBuilder<ComponentBloc, ComponentState>(builder: (context, state) {
        final bloc = context.read<ComponentBloc>();
        final rowWidth =
            (MediaQuery.of(context).size.width * .75) - 22 - 15 - 20 - 80;

        final vaultBloc = context.read<VaultBloc>();
        final unlockedState = vaultBloc.state
            .maybeMap(unlocked: (state) => state, orElse: () => throw Error());

        final isSelected =
            path?.join('.') == unlockedState.selectedItem?.join('.');

        var extras = extra(state, isSelected, rowWidth);
        extras ??= [];

        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: GestureDetector(
                  child: MouseRegion(
                    onEnter: (_event) {
                      bloc.add(const ComponentEvent.entered());
                    },
                    onExit: (_event) {
                      bloc.add(const ComponentEvent.exited());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: path != null && isSelected
                              ? theme.colorScheme.tertiary
                              : (state.inArea && hoverEffect)
                                  ? theme.colorScheme.primaryContainer
                                  : theme.cardColor,
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Row(children: [
                                SizedBox(
                                    width: rowWidth * .35,
                                    child: name(
                                        state, isSelected, rowWidth * .35)),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20)),
                                SizedBox(
                                    width: rowWidth * .35,
                                    child: username(
                                        state, isSelected, rowWidth * .35)),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20)),
                                SizedBox(
                                    width: rowWidth * .3,
                                    child: actions(
                                        state, isSelected, rowWidth * .3))
                              ]),
                              const Spacer()
                            ],
                          ),
                          ...extras
                        ],
                      ),
                    ),
                  ),
                  onTap: path == null
                      ? null
                      : () {
                          vaultBloc
                              .add(VaultEvent.itemSelected(path, isSelected));
                        }),
            )
          ],
        );
      }),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.item, required this.path})
      : super(key: key);

  final VaultItem item;
  final List<String> path;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (_context) => ListItemBloc(),
      child: BlocBuilder<VaultBloc, VaultState>(builder: (context, vaultState) {
        final unlockedVaultState = vaultState.maybeMap(
            unlocked: (state) => state, orElse: () => throw Error());

        if (unlockedVaultState.viewingSelectedItem &&
            unlockedVaultState.selectedItem?.join('.') == path.join('.')) {
          context
              .read<ListItemBloc>()
              .add(const ListItemEvent.modeToggled(newMode: ListItemMode.view));
        }

        return BlocBuilder<ListItemBloc, ListItemState>(
            builder: (context, state) {
          var decryptedPassword = '';
          if (state.mode == ListItemMode.view) {
            final masterKey = state.masterKey;

            if (masterKey == null) {
              Future.delayed(Duration.zero, () => getMasterKey(context))
                  .then((k) {
                if (k.masterKey == null) {
                  context.read<ListItemBloc>().add(
                      const ListItemEvent.modeToggled(
                          newMode: ListItemMode.normal));
                } else {
                  context
                      .read<ListItemBloc>()
                      .add(ListItemEvent.masterKeyChanged(k.masterKey));
                }
              });
            }

            decryptedPassword = masterKey == null
                ? '-'
                : item.password
                    .decrypt(masterKey)
                    .maybeWhen(
                        decrypted: (data, _iv) => data,
                        orElse: () => throw Error())
                    .password;
          }

          return LongPressDraggable<String>(
            feedback: Container(
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(7),
                child: Text(item.name,
                    style: TextStyle(
                        fontSize: theme.textTheme.bodySmall!.fontSize,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        decoration: TextDecoration.none))),
            data: path.join('.'),
            dragAnchorStrategy: pointerDragAnchorStrategy,
            child: BaseRow(
                path: path,
                extra: (componentState, isSelected, columnWidth) {
                  final extra = <Widget>[];

                  if (state.mode == ListItemMode.view) {
                    extra.add(Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(children: [
                          SizedBox(
                            width: columnWidth * .35,
                            child: Row(
                              children: [
                                Text('Password: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: theme.textTheme.bodyMedium!
                                                .fontSize! *
                                            1.1,
                                        fontWeight: FontWeight.bold)),
                                Flexible(
                                  child: Text(decryptedPassword,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: theme.textTheme.bodyMedium!
                                                  .fontSize! *
                                              1.1,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          SizedBox(
                            width: columnWidth * .35,
                            child: Row(
                              children: [
                                Text('Notes: ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: theme.textTheme.bodyMedium!
                                                .fontSize! *
                                            1.1,
                                        fontWeight: FontWeight.bold)),
                                Flexible(
                                  child: Text(item.notes,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: theme.textTheme.bodyMedium!
                                                  .fontSize! *
                                              1.1,
                                          fontWeight: FontWeight.w300)),
                                ),
                              ],
                            ),
                          )
                        ])));
                  }

                  return extra;
                },
                name: (state, isSelected, columnWidth) {
                  return Text(item.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.2,
                          fontWeight: FontWeight.w300));
                },
                username: (state, isSelected, columnWidth) {
                  return Text(
                    item.username,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.2,
                        fontWeight: FontWeight.w300),
                  );
                },
                actions: (state, isSelected, columnWidth) {
                  if (state.inArea) {
                    final actions = <Widget>[
                      RichText(
                          text: TextSpan(
                              text: 'View',
                              style: TextStyle(
                                  color: isSelected
                                      ? Colors.white
                                      : Colors.lightBlue,
                                  fontSize: theme.textTheme.bodySmall!.fontSize,
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  context.read<ListItemBloc>().add(
                                      const ListItemEvent.masterKeyChanged(
                                          null));
                                  context
                                      .read<ListItemBloc>()
                                      .add(const ListItemEvent.modeToggled());
                                }))
                    ];

                    if (path[0] != 'Search Results') {
                      actions.addAll([
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        RichText(
                            text: TextSpan(
                                text: 'Edit',
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.lightBlue,
                                    fontSize:
                                        theme.textTheme.bodySmall!.fontSize,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    GoRouter.of(context)
                                        .go('/vault/edit/${path.join('.')}');
                                  })),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5)),
                        RichText(
                            text: TextSpan(
                                text: 'Delete',
                                style: TextStyle(
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.lightBlue,
                                    fontSize:
                                        theme.textTheme.bodySmall!.fontSize,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    final vaultBloc = context.read<VaultBloc>();
                                    final unlockedState = vaultBloc.state
                                        .maybeMap(
                                            unlocked: (state) => state,
                                            orElse: () => throw Error());

                                    final newVault = unlockedState.vault
                                        .deleteComponent(path);

                                    var masterKey =
                                        (await getMasterKey(context)).masterKey;

                                    if (masterKey == null) {
                                      return;
                                    }

                                    vaultBloc.add(VaultEvent.updated(
                                        newVault, masterKey));
                                  }))
                      ]);
                    }
                    return Row(children: actions);
                  }

                  return null;
                }),
          );
        });
      }),
    );
  }
}

class ListHeader extends StatelessWidget {
  const ListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: BaseRow(
          name: (_state, _isSelected, _columnWidth) {
            return Text('Item Name',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.3,
                    fontWeight: FontWeight.w400));
          },
          username: (_state, _isSelected, _columnWidth) {
            return Text('Item Username',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.3,
                    fontWeight: FontWeight.w400));
          },
          actions: (_state, _isSelected, _columnWidth) => null,
          extra: (_state, _isSelected, _columnWidth) => null,
          hoverEffect: false),
    );
  }
}
