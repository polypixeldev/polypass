import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/blocs/recent_bloc/recent_bloc.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/components/open_dialog/open_dialog.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    final recentUrl = context.read<RecentBloc>().state.recentUrl;
    if (recentUrl != null) {
      context.read<VaultBloc>().add(VaultEvent.opened(recentUrl, context));
      context.read<RecentBloc>().add(const RecentEvent.recentUrlChanged(null));
    }

    return AppWrapper(
        actions: false,
        icon: false,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                      image: AssetImage('assets/polypass.png'),
                      width: 175,
                      height: 175),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: BlocBuilder<VaultBloc, VaultState>(
                        builder: ((context, state) {
                      return SizedBox(
                        width: 285,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text('Polypass',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white)),
                            const Padding(padding: EdgeInsets.only(bottom: 10)),
                            ElevatedButton(
                              onPressed: state.maybeMap(
                                opening: (state) => null,
                                orElse: () => () => router.go('/create'),
                              ),
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 285,
                                  child: const Text('Create a vault',
                                      style: TextStyle(fontSize: 25),
                                      textAlign: TextAlign.center)),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 10)),
                            ElevatedButton(
                                onPressed: state.maybeMap(
                                    opening: (state) => null,
                                    orElse: () => () async {
                                          final vaultBloc =
                                              context.read<VaultBloc>();
                                          final scaffoldManager =
                                              ScaffoldMessenger.of(context);
                                          final url = await pickFileLocation(
                                              context, 'open');

                                          if (url != null) {
                                            vaultBloc.add(VaultEvent.opened(
                                                url,
                                                // ignore: use_build_context_synchronously
                                                context));

                                            scaffoldManager.showSnackBar(
                                                const SnackBar(
                                                    content: Text(
                                                        'Opening vault...'),
                                                    duration:
                                                        Duration(days: 365)));
                                          }
                                        }),
                                child: Container(
                                    padding: const EdgeInsets.all(5),
                                    width: 285,
                                    child: const Text('Open a vault',
                                        style: TextStyle(fontSize: 25),
                                        textAlign: TextAlign.center))),
                            const Padding(padding: EdgeInsets.only(bottom: 10)),
                            ElevatedButton(
                              onPressed: state.maybeMap(
                                  opening: (state) => null,
                                  orElse: () => () async {
                                        router.go('/generator');
                                      }),
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 285,
                                  child: const Text('Password Generator',
                                      style: TextStyle(fontSize: 25),
                                      textAlign: TextAlign.center)),
                            ),
                            const Padding(padding: EdgeInsets.only(bottom: 10)),
                            ElevatedButton(
                              onPressed: state.maybeMap(
                                  opening: (state) => null,
                                  orElse: () => () async {
                                        router.go('/settings');
                                      }),
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  width: 285,
                                  child: const Text(
                                    'Global Settings',
                                    style: TextStyle(fontSize: 25),
                                    textAlign: TextAlign.center,
                                  )),
                            )
                          ],
                        ),
                      );
                    })),
                  )
                ],
              )),
            ],
          ),
        ));
  }
}
