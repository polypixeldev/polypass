import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/create_form/create_form_bloc.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/components/location_dialog/location_dialog.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final theme = Theme.of(context);

    return AppWrapper(
        child: MultiBlocListener(
          listeners: [
            BlocListener<CreateFormBloc, CreateFormState>(
              listener: (context, state) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();

                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Creating vault...'),
                    duration: Duration(days: 365)));
              },
              listenWhen: (previous, current) =>
                  previous.submitted != current.submitted &&
                  current.submitted == true,
            ),
            BlocListener<CreateFormBloc, CreateFormState>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Opening vault...'),
                      duration: Duration(days: 365)));

                  context.read<VaultBloc>().add(VaultEvent.opened(state.url!));
                },
                listenWhen: (previous, current) =>
                    previous.created != current.created &&
                    current.created == true),
            BlocListener<CreateFormBloc, CreateFormState>(
              listener: (context, state) {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();

                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text(
                        'Error creating vault - make sure the vault location is correct'),
                    duration: Duration(days: 365)));
              },
              listenWhen: (previous, current) =>
                  previous.error != current.error && current.error == true,
            )
          ],
          child: Center(
            child: ListView(shrinkWrap: true, children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Text('Create a vault',
                          style: theme.textTheme.titleMedium),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                      Column(
                        children: [
                          const NameInput(),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          const MasterPasswordInput(),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
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
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              ),
            ]),
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

    return Column(
      children: [
        BlocBuilder<CreateFormBloc, CreateFormState>(builder: (context, state) {
          return Text(
              "Current path: ${state.url != null ? state.url?.toHumanUrl() : 'None'}",
              style: theme.textTheme.bodyMedium);
        }),
        const Padding(padding: EdgeInsets.only(bottom: 10)),
        const PathInput(),
        const Padding(padding: EdgeInsets.only(bottom: 30))
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

                final url =
                    await saveFileLocation(context, 'create', bloc.state.name);

                if (url == null) {
                  return;
                }

                bloc.add(CreateFormEvent.urlChanged(url));
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

    final controller = TextEditingController()
      ..text = context.read<CreateFormBloc>().state.masterPassword;
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));

    return BlocBuilder<CreateFormBloc, CreateFormState>(
      builder: ((context, state) {
        return Container(
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: theme.colorScheme.secondary),
            child: TextField(
              enabled: !state.submitted,
              controller: controller,
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

    final controller = TextEditingController()
      ..text = context.read<CreateFormBloc>().state.name;
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));

    return BlocBuilder<CreateFormBloc, CreateFormState>(
        builder: ((context, state) {
      return Container(
          width: 500,
          decoration: BoxDecoration(
              color: theme.colorScheme.secondary,
              borderRadius: BorderRadius.circular(5)),
          child: TextField(
            enabled: !state.submitted,
            controller: controller,
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
