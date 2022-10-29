import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';

import 'package:polypass/components/app_wrapper/app_bar.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper(
      {Key? key, required this.child, this.actions = true, this.icon = true})
      : super(key: key);

  final Widget child;
  final bool actions;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<VaultBloc, VaultState>(
          listener: (context, state) {
            final router = GoRouter.of(context);
            ScaffoldMessenger.of(context).clearSnackBars();

            state.whenOrNull(
                locked: (_vault) => router.go('/vault/locked'),
                unlocked: (_vault, _selectedGroup, _selectedItem,
                        _viewingSelectedItem, _masterKey, _errorCount) =>
                    router.go('/vault/home'),
                none: () => router.go('/'));
          },
        ),
        BlocListener<VaultBloc, VaultState>(
            listener: (context, state) {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();

              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                      'Failed to save changes to vault - please try again')));
            },
            listenWhen: (previous, current) =>
                previous.maybeWhen(
                    unlocked: (_vault, _selectedGroup, _selectedItem,
                            _viewingSelectedItem, _masterKey, errorCount) =>
                        errorCount,
                    orElse: () => 0) <
                current.maybeWhen(
                    unlocked: (_vault, _selectedGroup, _selectedItem,
                            _viewingSelectedItem, _masterKey, errorCount) =>
                        errorCount,
                    orElse: () => 0))
      ],
      child: Scaffold(
          appBar: createAppBar(
              context, context.watch<VaultBloc>().state, actions, icon),
          body: SizedBox.expand(
            child: Container(
                color: Theme.of(context).backgroundColor, child: child),
          )),
    );
  }
}
