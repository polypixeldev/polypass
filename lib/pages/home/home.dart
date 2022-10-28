import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/components/open_dialog/open_dialog.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return AppWrapper(
        actions: false,
        icon: false,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Center(
                  child: Column(
                children: [
                  const Icon(Icons.key, size: 200, color: Colors.green),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: BlocBuilder<VaultBloc, VaultState>(
                        builder: ((context, state) {
                      return Column(
                        children: [
                          const Text('PolyPass',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white)),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          ElevatedButton(
                            child: const Padding(
                                child: Text('Create a vault',
                                    style: TextStyle(fontSize: 25)),
                                padding: EdgeInsets.all(5)),
                            onPressed: state.maybeWhen(
                              opening: (errorCount) => null,
                              orElse: () => () => router.go('/create'),
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          ElevatedButton(
                              child: const Padding(
                                  child: Text('Open a vault',
                                      style: TextStyle(fontSize: 25)),
                                  padding: EdgeInsets.all(5)),
                              onPressed: state.maybeWhen(
                                  opening: (errorCount) => null,
                                  orElse: () => () async {
                                        final String? path =
                                            await pickFileLocation(
                                                context, 'open');

                                        if (path != null) {
                                          context.read<VaultBloc>().add(
                                              VaultEvent.opened(
                                                  VaultUrl.file(path)));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content:
                                                      Text('Opening vault...'),
                                                  duration:
                                                      Duration(days: 365)));
                                        }
                                      })),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          ElevatedButton(
                            child: const Padding(
                                child: Text('Global Settings',
                                    style: TextStyle(fontSize: 25)),
                                padding: EdgeInsets.all(5)),
                            onPressed: state.maybeWhen(
                                opening: (errorCount) => null,
                                orElse: () => () async {
                                      router.go('/settings');
                                    }),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      );
                    })),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              )),
            ],
          ),
        ));
  }
}
