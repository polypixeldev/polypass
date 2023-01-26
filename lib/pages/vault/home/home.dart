import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

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
          child: LayoutBuilder(builder: (context, constraints) {
            final size = MediaQuery.of(context).size;
            final noDividerWidth = constraints.maxWidth - 20;

            return Row(children: [
              BlocBuilder<VaultHomeBloc, VaultHomeState>(
                  builder: (context, state) {
                return SizedBox(
                  width: size.width < 600 && state.treeVisible
                      ? noDividerWidth
                      : size.width >= 600 && state.treeVisible
                          ? noDividerWidth * 0.25
                          : 0,
                  child: BlocBuilder<VaultHomeBloc, VaultHomeState>(
                      builder: (context, state) {
                    return state.treeVisible ? const Tree() : Container();
                  }),
                );
              }),
              const SizedBox(width: 20, child: TreeDivider()),
              BlocBuilder<VaultHomeBloc, VaultHomeState>(
                  builder: (context, state) {
                return SizedBox(
                  width: size.width < 600 && !state.treeVisible
                      ? noDividerWidth
                      : size.width >= 600 && state.treeVisible
                          ? noDividerWidth * 0.75
                          : size.width >= 600 && !state.treeVisible
                              ? noDividerWidth
                              : 0,
                  child: BlocBuilder<VaultHomeBloc, VaultHomeState>(
                      builder: (context, state) {
                    if (MediaQuery.of(context).size.width < 600) {
                      return !state.treeVisible
                          ? const FolderList()
                          : Container();
                    } else {
                      return const FolderList();
                    }
                  }),
                );
              })
            ]);
          })),
    );
  }
}

class TreeDivider extends StatelessWidget {
  const TreeDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: constraints.maxHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: BlocBuilder<VaultHomeBloc, VaultHomeState>(
                      builder: (context, state) {
                    return Text(
                      state.treeVisible ? '<' : '>',
                      style: TextStyle(fontSize: 10.sp),
                      textAlign: TextAlign.center,
                    );
                  }),
                  onTap: () => context
                      .read<VaultHomeBloc>()
                      .add(const VaultHomeEvent.treeToggled()),
                ),
              ),
            ),
            SizedBox(
                width: 20,
                height: constraints.maxHeight - 20,
                child: const VerticalDivider()),
          ],
        ),
      );
    });
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
          onSubmitted: (query) {
            vaultHomeBloc.add(const VaultHomeEvent.searchSubmitted());
          },
        ),
      ),
    );
  }
}
