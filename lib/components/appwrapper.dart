import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/vault_bloc.dart';

import 'appbar.dart';

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
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        if (state.status == VaultStatus.locked) {
          router.go('/vault/locked');
        } else if (state.status == VaultStatus.unlocked) {
          router.go('/vault/home');
        } else if (state.status == VaultStatus.none) {
          router.go('/');
        }
      },
      child: Scaffold(
        appBar: createAppBar(context, context.read<VaultBloc>().state.status, actions, icon),
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