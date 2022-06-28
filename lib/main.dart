import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/blocs/vault_bloc.dart';
import 'package:polypass/data/app_settings.dart';

import 'package:polypass/pages/home/home.dart';
import 'package:polypass/pages/recent/recent.dart';
import 'package:polypass/pages/create/create.dart';
import 'package:polypass/pages/settings/settings.dart';
import 'package:polypass/pages/vault/home/home.dart';
import 'package:polypass/pages/vault/locked/locked.dart';
import 'package:polypass/pages/vault/new/new.dart';
import 'package:polypass/pages/vault/edit/edit.dart';
import 'package:polypass/pages/vault/settings/settings.dart';

import 'package:polypass/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settings = await AppSettings.load();
  runApp(App( settings: settings ));
}

class App extends StatelessWidget {
  const App({ Key? key, required this.settings }) : super(key: key);

  final AppSettings settings;

  @override
  Widget build(BuildContext context) {
    final _router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const Home()
        ),
        GoRoute(
          path: '/recent',
          builder: (context, state) => Recent( settings: settings )
        ),
        GoRoute(
          path: '/create',
          builder: (context, state) => Create( settings: settings )
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => Settings( settings: settings )
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
        ),
        GoRoute(
          path: '/vault/settings',
          builder: (context, state) => const VaultSettingsPage()
        )
      ],
      initialLocation: '/recent'
    );

    return RepositoryProvider(
      create: (context) => const VaultRepository(),
        child: BlocProvider(
          create: (context) => VaultBloc(
            repository: context.read<VaultRepository>(),
            settings: settings
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