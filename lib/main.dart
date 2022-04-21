import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'appbar.dart';

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
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'PolyPass'
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: polyPassAppBar,
      body: SizedBox.expand(
        child: Container(
          color: const Color(0xFF4b4e53)
        ),
      )
    );
  }
}