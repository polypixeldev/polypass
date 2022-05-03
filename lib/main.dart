import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/db_bloc.dart';

import 'pages/home/home.dart';
import 'pages/create/create.dart';

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
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DatabaseBloc(),
      child: MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'PolyPass',
        debugShowCheckedModeBanner: false
      ),
    );
  }
}