import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/pages/vault/home/vault_home_bloc.dart';
import 'package:polypass/data/vault_file.dart';
import 'package:polypass/blocs/vault_bloc.dart';
import 'package:polypass/pages/vault/home/list_item_bloc.dart';

import 'package:polypass/components/appwrapper.dart';

class VaultHome extends StatelessWidget {
  const VaultHome({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context.read<VaultBloc>().state.whenOrNull(unlocked: (vault, _masterKey) => vault.toJson()));
    return AppWrapper(
      child: BlocProvider(
        create: (context) => VaultHomeBloc(),
        child: Column(
          children: const [
            SearchBar(),
            PasswordsView()
          ]
        ),
      )
    );
  }
}

class PasswordsView extends StatelessWidget {
  const PasswordsView({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).cardColor
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            Tree(),
            SizedBox(
              width: 3,
              child: VerticalDivider()
            ),
            FolderList()
          ]
        )
      ),
    );
  }
}

class Tree extends StatelessWidget {
  const Tree({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .25) - 21,
      child: BlocBuilder<VaultBloc, VaultState>(
        builder: (context, state) {
          final unlockedState = state.maybeMap(
            unlocked: (state) => state,
            orElse: () => null
          );

          if (unlockedState == null) {
            return Container();
          }

          final decryptedContents = unlockedState.vault.contents.maybeMap(
            decrypted: (contents) => contents,
            orElse: () => throw Error()
          );

          final groups = [...decryptedContents.data.components.whereType<Group>()];

          return Column(
            children: [...groups.map((group) => 
              TreeGroup(
                group: group.group
              )
            )]
          );
        }
      ),
    );
  }
}

class TreeGroup extends StatelessWidget {
  const TreeGroup({ Key? key, required this.group}): super(key: key);

  final VaultGroup group;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // TODO: Update vault home bloc focusedGroup on click
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(
            group.icon ?? '🔑',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodySmall!.fontSize
            )
          ),
          Text(
            ' ${group.name}',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodySmall!.fontSize
            )
          )
        ]
      ),
    );
  }
}

class FolderList extends StatelessWidget {
  const FolderList({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .75) - 22,
      child: BlocBuilder<VaultHomeBloc, VaultHomeState>(
        builder: (context, state) {
          var components = state.focusedGroup?.components;
          if (components == null) {
            final unlockedState = context.read<VaultBloc>().state.maybeMap(
              unlocked: (state) => state,
              orElse: () => throw Error()
            );

            final decryptedContents = unlockedState.vault.contents.maybeMap(
              decrypted: (contents) => contents,
              orElse: () => throw Error()
            );

            components = decryptedContents.data.components;
          }

          final items = components.whereType<Item>();

          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                const ListHeader(),
                ...items.map((item) => ListItem(
                  item: item.item
                ))
              ]
            ),
          );
        },
      ),
    );
  }
}

class BaseRow extends StatelessWidget {
  const BaseRow({
    Key? key,
    required this.name,
    required this.username,
    required this.actions,
    this.hoverEffect = true
  }) : super(key: key);

  final Widget Function(ListItemState state) name;
  final Widget Function(ListItemState state) username;
  final Widget? Function(ListItemState state) actions;
  final bool hoverEffect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocProvider(
      create: (_context) => ListItemBloc(),
      child: BlocBuilder<ListItemBloc, ListItemState>(
        builder: (context, state) {
          final bloc = context.read<ListItemBloc>();
          final rowWidth = (MediaQuery.of(context).size.width * .75) - 22 - 15 - 20 - 80;

          return Column(
            children: [
              MouseRegion(
                onEnter: (_event) {
                  bloc.add(const ListItemEvent.entered());
                },
                onExit: (_event) {
                  bloc.add(const ListItemEvent.exited());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: state.inArea && hoverEffect ? theme.colorScheme.primaryContainer : theme.cardColor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: rowWidth * .35,
                            child: name(state)
                          ),
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                          SizedBox(
                            width: rowWidth * .35,
                            child: username(state)
                          ),
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                          SizedBox(
                            width: rowWidth * .3,
                            child: actions(state)
                          )
                        ]
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              )
            ],
          );
        }
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({ Key? key, required this.item }) : super(key: key);

  final VaultItem item;

  @override
  Widget build(BuildContext context) {  
    final theme = Theme.of(context);

    return BaseRow(
      name: (state) {
        return Text(
          item.name,
          style: TextStyle(
            color: Colors.white,
            fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.2,
            fontWeight: FontWeight.w300
          )
        );
      },
      username: (state) {
        return Text(
          item.username,
          style: TextStyle(
            color: Colors.white,
            fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.2,
            fontWeight: FontWeight.w300
          ),
        );
      },
      actions: (state) {
        if (state.inArea) {
          return Row(
            children: [
              RichText(
                text: TextSpan(
                  text: 'View',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: theme.textTheme.bodySmall!.fontSize,
                    decoration: TextDecoration.underline
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    // TODO: Handle view item
                  }
                )
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              RichText(
                text: TextSpan(
                  text: 'Edit',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: theme.textTheme.bodySmall!.fontSize,
                    decoration: TextDecoration.underline
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    // TODO: Handle edit item
                  }
                )
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              RichText(
                text: TextSpan(
                  text: 'Delete',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: theme.textTheme.bodySmall!.fontSize,
                    decoration: TextDecoration.underline
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {
                    // TODO: Handle delete item
                  }
                )
              ),
            ]
          );
        }
      }
    );
  }
}

class ListHeader extends StatelessWidget {
  const ListHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: BaseRow(
        name: (_state) {
          return Text(
            'Item Name',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.3,
              fontWeight: FontWeight.w400
            )
          );
        },
        username: (_state) {
          return Text(
            'Item Username',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodyMedium!.fontSize! * 1.3,
              fontWeight: FontWeight.w400
            )
          );
        },
        actions: (_state) {
          return null;
        },
        hoverEffect: false
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final vaultHomeBloc = context.read<VaultHomeBloc>();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: theme.cardColor
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary
        ),
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          decoration: InputDecoration(
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                vaultHomeBloc.add(const VaultHomeEvent.searchSubmitted());
              },
            ),
            label: const Text('Search passwords'),
            floatingLabelStyle: theme.textTheme.bodySmall,
            labelStyle: theme.textTheme.bodySmall,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
          ),
          style: theme.textTheme.bodySmall,
          onChanged: (query) {
            vaultHomeBloc.add(VaultHomeEvent.queryChanged(query));
          },
          onSubmitted: (_query) {
            vaultHomeBloc.add(const VaultHomeEvent.searchSubmitted());
          },
        ),
      ),
    );
  }
}