import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/blocs/vault_bloc.dart';

import 'package:polypass/pages/home/home.dart';
import 'package:polypass/pages/create/create.dart';
import 'package:polypass/pages/vault/home/home.dart';
import 'package:polypass/pages/vault/locked/locked.dart';
import 'package:polypass/pages/vault/new/new.dart';
import 'package:polypass/pages/vault/edit/edit.dart';

import 'package:polypass/theme.dart';

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
      ),
      GoRoute(
        path: '/vault/new',
        builder: (context, state) => const NewItem()
      ),
      GoRoute(
        path: '/vault/edit/:path',
        builder: (context, state) => EditItem(routerState: state)
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