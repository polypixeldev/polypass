import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/blocs/vault_bloc.dart';

import 'package:polypass/components/appbar.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key, required this.child, this.actions = true, this.icon = true}) : super(key: key);

  final Widget child;
  final bool actions;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return BlocListener<VaultBloc, VaultState>(
      listener: (context, state) {
        final router = GoRouter.of(context);
        ScaffoldMessenger.of(context).clearSnackBars();

        state.whenOrNull(
          locked: (_vault) => router.go('/vault/locked'),
          unlocked: (_vault, _selectedGroup, _selectedItem, _viewingSelectedItem, _masterKey) => router.go('/vault/home'),
          none: () => router.go('/')
        );
      },
      child: Scaffold(
        appBar: createAppBar(context, context.watch<VaultBloc>().state, actions, icon),
        body: SizedBox.expand(
          child: Container(
            color: Theme.of(context).backgroundColor,
            child: child
          ),
        )
      ),
    );
  }
}