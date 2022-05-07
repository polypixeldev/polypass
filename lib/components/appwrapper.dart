import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/db_bloc.dart';

import 'appbar.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key, required this.child, this.actions = true, this.icon = true}) : super(key: key);

  final Widget child;
  final bool actions;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DatabaseBloc, DatabaseState>(
      listener: (context, state) {
        final router = GoRouter.of(context);
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        if (state.status == DatabaseStatus.locked) {
          router.go('/db/locked');
        } else if (state.status == DatabaseStatus.unlocked) {
          router.go('/db/home');
        } else if (state.status == DatabaseStatus.none) {
          router.go('/');
        }
      },
      child: Scaffold(
        appBar: createAppBar(context, context.read<DatabaseBloc>().state.status, actions, icon),
        body: SizedBox.expand(
          child: Container(
            color: const Color(0xFF4b4e53),
            child: child
          ),
        )
      ),
    );
  }
}