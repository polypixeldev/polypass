import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/db_bloc.dart';

import 'appbar.dart';

class AppWrapper extends StatelessWidget {
  const AppWrapper({Key? key, required this.child, this.actions = true, this.icon = true}) : super(key: key);

  final Widget child;
  final bool actions;
  final bool icon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, context.read<DatabaseBloc>().state.status, actions, icon),
      body: SizedBox.expand(
        child: Container(
          color: const Color(0xFF4b4e53),
          child: child
        ),
      )
    );
  }
}