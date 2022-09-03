import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:io';

import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:polypass/data/app_settings/app_settings.dart';
import 'package:polypass/pages/create/create_form_bloc.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_repository.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final theme = Theme.of(context);

    return AppWrapper(
        child: BlocProvider(
          create: (context) => CreateFormBloc(
              vaultRepository: context.read<VaultRepository>(),
              appSettings: context.read<AppSettingsBloc>().state.settings),
          child: MultiBlocListener(
            listeners: [
              BlocListener<CreateFormBloc, CreateFormState>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Creating vault...'),
                      duration: Duration(days: 365)));
                },
                listenWhen: (previous, current) =>
                    previous.submitted != current.submitted,
              ),
              BlocListener<CreateFormBloc, CreateFormState>(
                  listener: (context, state) {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();

                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Opening vault...'),
                        duration: Duration(days: 365)));

                    context
                        .read<VaultBloc>()
                        .add(VaultEvent.opened(state.path));
                  },
                  listenWhen: (previous, current) =>
                      previous.created != current.created)
            ],
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('Create a vault',
                          style: theme.textTheme.titleMedium),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Form(
                          child: Column(
                        children: [
                          const NameInput(),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5)),
                          const MasterPasswordInput(),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5)),
                          const FilePathWidget(),
                          Row(
                              children: [
                                BackButton(router: router),
                                const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5)),
                                const SubmitButton()
                              ],
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min)
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      )),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
        actions: false,
        icon: false);
  }
}

class FilePathWidget extends StatelessWidget {
  const FilePathWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Platform.isAndroid
        ? Container()
        : Column(
            children: [
              BlocBuilder<CreateFormBloc, CreateFormState>(
                  builder: (context, state) {
                return Text(
                    "Current path: ${state.path != '' ? state.path : 'None'}",
                    style: theme.textTheme.bodyMedium);
              }),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              const PathInput(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 15))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
          );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: (context, state) {
      return ElevatedButton(
        child: Text('Submit', style: Theme.of(context).textTheme.bodyMedium),
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        onPressed: state.submitted || !state.isFormValid
            ? null
            : () {
                context
                    .read<CreateFormBloc>()
                    .add(const CreateFormEvent.formSubmitted());
              },
      );
    });
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
    required this.router,
  }) : super(key: key);

  final GoRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: (context, state) {
      return ElevatedButton(
          child: Text('Back', style: Theme.of(context).textTheme.bodyMedium),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
          onPressed: state.submitted
              ? null
              : () {
                  router.go('/');
                });
    });
  }
}

class PathInput extends StatelessWidget {
  const PathInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: (context, state) {
      return ElevatedButton(
        child: Text('Set vault file location',
            style: Theme.of(context).textTheme.bodyMedium),
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        onPressed: state.submitted
            ? null
            : () async {
                final bloc = context.read<CreateFormBloc>();

                final path = await FilePicker.platform.saveFile(
                    initialDirectory:
                        '${(await AppSettings.documentsDir)?.absolute.path}/polypass',
                    dialogTitle: 'Set vault file location',
                    fileName: bloc.state.name == '' ? 'passwords.ppv.json' : '${bloc.state.name}.ppv.json',
                    type: FileType.custom,
                    allowedExtensions: ['ppv.json']);

                if (path == null) {
                  return;
                }

                bloc.add(CreateFormEvent.pathChanged(path));
              },
      );
    });
  }
}

class MasterPasswordInput extends StatelessWidget {
  const MasterPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: ((context, state) {
        return Container(
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.secondary),
            child: TextFormField(
              enabled: !state.submitted,
              decoration: InputDecoration(
                  labelText: 'Master Password',
                  contentPadding: const EdgeInsets.all(10),
                  floatingLabelStyle: theme.textTheme.bodySmall,
                  labelStyle: theme.textTheme.bodySmall,
                  border: InputBorder.none),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              style: theme.textTheme.bodySmall,
              onChanged: (masterPassword) {
                context
                    .read<CreateFormBloc>()
                    .add(CreateFormEvent.masterPasswordChanged(masterPassword));
              },
              cursorColor: Colors.black,
            ));
      }),
    );
  }
}

class NameInput extends StatelessWidget {
  const NameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: ((context, state) {
      return Container(
          width: 500,
          decoration: BoxDecoration(
              color: theme.colorScheme.secondary,
              borderRadius: BorderRadius.circular(5)),
          child: TextFormField(
            enabled: !state.submitted,
            decoration: InputDecoration(
                labelText: 'Name',
                contentPadding: const EdgeInsets.all(10),
                floatingLabelStyle: theme.textTheme.bodySmall,
                labelStyle: theme.textTheme.bodySmall,
                border: InputBorder.none),
            style: theme.textTheme.bodySmall,
            onChanged: (name) {
              context
                  .read<CreateFormBloc>()
                  .add(CreateFormEvent.nameChanged(name));
            },
            cursorColor: Colors.black,
          ));
    }));
  }
}
