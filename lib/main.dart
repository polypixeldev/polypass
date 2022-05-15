import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/db_repository.dart';
import 'blocs/db_bloc.dart';

import 'pages/home/home.dart';
import 'pages/create/create.dart';
import 'pages/db/home/home.dart';
import 'package:polypass/pages/db/locked/locked.dart';

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
        path: '/db/home',
        builder: (context, state) => const DbHome()
      ),
      GoRoute(
        path: '/db/locked',
        builder: (context, state) => const DbLocked()
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DatabaseBloc(
        repository: const DatabaseRepository()
      ),
      child: MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'PolyPass',
        debugShowCheckedModeBanner: false,
        theme: appTheme
      ),
    );
  }
}