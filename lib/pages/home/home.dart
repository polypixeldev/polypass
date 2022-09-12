import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/components/android_picker_dialog/android_picker_dialog.dart';

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
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
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
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5)),
                          ElevatedButton(
                            child: const Padding(
                                child: Text('Create a vault',
                                    style: TextStyle(fontSize: 25)),
                                padding: EdgeInsets.all(5)),
                            onPressed: state.maybeWhen(
                              opening: () => null,
                              orElse: () => () => router.go('/create'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5)),
                          ElevatedButton(
                              child: const Padding(
                                  child: Text('Open a vault',
                                      style: TextStyle(fontSize: 25)),
                                  padding: EdgeInsets.all(5)),
                              onPressed: state.maybeWhen(
                                  opening: () => null,
                                  orElse: () => () async {
                                        final String? path;

                                        if (Platform.isAndroid) {
                                          path = await pickFileAndroid(context);
                                        } else {
                                          final result = await FilePicker
                                              .platform
                                              .pickFiles(
                                                  initialDirectory:
                                                      '${(await AppSettings.documentsDir)?.absolute.path}/polypass',
                                                  dialogTitle: 'Open vault',
                                                  type: Platform.isAndroid
                                                      ? FileType.any
                                                      : FileType.custom,
                                                  allowedExtensions:
                                                      Platform.isAndroid
                                                          ? null
                                                          : ['ppv.json']);

                                          path = result?.paths.first;
                                        }

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
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5)),
                          ElevatedButton(
                            child: const Padding(
                                child: Text('Global Settings',
                                    style: TextStyle(fontSize: 25)),
                                padding: EdgeInsets.all(5)),
                            onPressed: state.maybeWhen(
                                opening: () => null,
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
