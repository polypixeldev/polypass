import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/pages/vault/home/vault_home_bloc/vault_home_bloc.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/pages/vault/home/tree.dart';
import 'package:polypass/pages/vault/home/folder_list.dart';

class VaultHome extends StatelessWidget {
  const VaultHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        child: BlocProvider(
      create: (context) => VaultHomeBloc(vaultBloc: context.read<VaultBloc>()),
      child: Column(children: const [SearchBar(), PasswordsView()]),
    ));
  }
}

class PasswordsView extends StatelessWidget {
  const PasswordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Theme.of(context).cardColor),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Row(children: const [
            Tree(),
            SizedBox(width: 3, child: VerticalDivider()),
            FolderList()
          ])),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final vaultHomeBloc = context.read<VaultHomeBloc>();

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: theme.cardColor),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: theme.colorScheme.secondary),
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
