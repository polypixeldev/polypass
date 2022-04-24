import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/home.dart';
import 'pages/create.dart';

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
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'PolyPass',
      debugShowCheckedModeBanner: false
    );
  }
}