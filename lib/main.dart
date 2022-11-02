import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/blocs/create_form/create_form_bloc.dart';
import 'package:polypass/blocs/activity_bloc/activity_bloc.dart';

import 'package:polypass/pages/home/home.dart';
import 'package:polypass/pages/ftp/ftp.dart';
import 'package:polypass/pages/recent/recent.dart';
import 'package:polypass/pages/create/create.dart';
import 'package:polypass/pages/settings/settings.dart';
import 'package:polypass/pages/vault/home/home.dart';
import 'package:polypass/pages/vault/locked/locked.dart';
import 'package:polypass/pages/vault/new/new.dart';
import 'package:polypass/pages/vault/edit/edit.dart';
import 'package:polypass/pages/vault/settings/settings.dart';
import 'package:polypass/components/activity_listener/activity_listener.dart';

import 'package:polypass/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settings = await AppSettings.load();
  runApp(App(initialSettings: settings));
}

class App extends StatefulWidget {
  const App({super.key, required this.initialSettings});

  final AppSettings initialSettings;

  @override
  // ignore: no_logic_in_create_state
  State<App> createState() => _AppState(initialSettings: initialSettings);
}

class _AppState extends State<App> with TickerProviderStateMixin {
  _AppState({required this.initialSettings});

  final AppSettings initialSettings;

  late final fadeController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..forward();

  late final Animation<double> fadeAnimation = CurvedAnimation(
    parent: fadeController,
    curve: Curves.ease,
  );

  @override
  void dispose() {
    fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _router = GoRouter(routes: [
      GoRoute(
          path: '/',
          pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: const Home(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(child: child, opacity: fadeAnimation),
              )),
      GoRoute(
          path: '/ftp',
          builder: (context, state) => FtpInput(routerState: state)),
      GoRoute(path: '/recent', builder: (context, state) => const Recent()),
      GoRoute(path: '/create', builder: (context, state) => const Create()),
      GoRoute(path: '/settings', builder: (context, state) => const Settings()),
      GoRoute(
          path: '/vault/home', builder: (context, state) => const VaultHome()),
      GoRoute(
          path: '/vault/locked',
          builder: (context, state) => const VaultLocked()),
      GoRoute(path: '/vault/new', builder: (context, state) => const NewItem()),
      GoRoute(
          path: '/vault/edit/:path',
          builder: (context, state) => EditItem(routerState: state)),
      GoRoute(
          path: '/vault/settings',
          builder: (context, state) => const VaultSettingsPage())
    ], initialLocation: '/recent');

    return Sizer(builder: (context, orientation, deviceType) {
      return RepositoryProvider(
        create: (context) => const VaultRepository(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => AppSettingsBloc(initialSettings),
            ),
            BlocProvider(
                create: (context) => CreateFormBloc(
                      vaultRepository: context.read<VaultRepository>(),
                      appSettings:
                          context.read<AppSettingsBloc>().state.settings,
                    )),
            BlocProvider(create: (context) => VaultBloc(read: context.read)),
            BlocProvider(
                create: (context) => ActivityBloc(read: context.read)
                  ..add(const ActivityEvent.started()))
          ],
          child: ActivityListener(
            child: MaterialApp.router(
                routeInformationParser: _router.routeInformationParser,
                routerDelegate: _router.routerDelegate,
                title: 'PolyPass',
                debugShowCheckedModeBanner: false,
                theme: appTheme),
          ),
        ),
      );
    });
  }
}
