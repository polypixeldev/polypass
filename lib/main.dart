import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/vault_repository.dart';
import 'blocs/vault_bloc.dart' hide VaultLocked;

import 'pages/home/home.dart';
import 'pages/create/create.dart';
import 'pages/vault/home/home.dart';
import 'pages/vault/locked/locked.dart';

import 'theme.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Home()
      ),
      GoRoute(
        path: '/create',
        builder: (context, state) => const Create()
      ),
      GoRoute(
        path: '/vault/home',
        builder: (context, state) => const VaultHome()
      ),
      GoRoute(
        path: '/vault/locked',
        builder: (context, state) => const VaultLocked()
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => const VaultRepository(),
        child: BlocProvider(
          create: (context) => VaultBloc(
            repository: context.read<VaultRepository>()
          ),
          child: MaterialApp.router(
            routeInformationParser: _router.routeInformationParser,
            routerDelegate: _router.routerDelegate,
            title: 'PolyPass',
            debugShowCheckedModeBanner: false,
            theme: appTheme
          ),
        ),
    );
  }
}