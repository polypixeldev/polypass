import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/pages/vault/edit/edit_bloc.dart';

import 'package:polypass/components/master_password_dialog/master_password_dialog.dart';
import 'package:polypass/components/app_wrapper/app_wrapper.dart';

class EditItem extends StatelessWidget {
  const EditItem({Key? key, required this.routerState}) : super(key: key);

  final GoRouterState routerState;

  @override
  Widget build(BuildContext context) {
    final path = routerState.pathParameters['path']!.split('.');
    final unlockedState = context
        .read<VaultBloc>()
        .state
        .maybeMap(unlocked: (state) => state, orElse: () => throw Error());
    final component = unlockedState.vault.getComponent(path);
    final item = component.maybeMap(
        item: (state) => state.item, orElse: () => throw Error());

    Future<MasterKeys>? dialog;

    return AppWrapper(
        child: Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Center(
              child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF373b42),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  width: 700,
                  child: BlocProvider(
                    create: (context) => EditFormBloc(
                        name: item.name,
                        username: item.username,
                        password: '',
                        notes: item.notes),
                    child: FutureBuilder<MasterKeys>(
                      future: dialog ??
                          Future.delayed(
                              Duration.zero, () => getMasterKey(context)),
                      builder: (context, snapshot) {
                        final masterKey = snapshot.data?.masterKey;
                        if (masterKey != null) {
                          context.read<EditFormBloc>().add(
                              EditFormEvent.passwordChanged(item.password
                                  .decrypt(masterKey)
                                  .maybeMap(
                                      decrypted: (p) => p.data.password,
                                      orElse: () => throw Error())));
                        }

                        return MultiBlocListener(
                          listeners: [
                            BlocListener<EditFormBloc, EditFormState>(
                              listener: (context, state) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Updating item...'),
                                        duration: Duration(days: 365)));
                              },
                              listenWhen: (previous, current) =>
                                  previous.submitted == false &&
                                  current.submitted == true,
                            ),
                            BlocListener<EditFormBloc, EditFormState>(
                              listener: (context, state) {
                                if (state.editedItem!.name.contains('.')) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "You cannot use . in an item's name!")));

                                  context
                                      .read<EditFormBloc>()
                                      .add(const EditFormEvent.failed());

                                  return;
                                }

                                final vaultBloc = context.read<VaultBloc>();
                                final unlockedState = vaultBloc.state.maybeMap(
                                    unlocked: (state) => state,
                                    orElse: () => throw Error());

                                final parent = unlockedState.vault
                                    .getComponent(
                                        path.take(path.length - 1).toList())
                                    .maybeMap(
                                        group: (groupComponent) =>
                                            groupComponent.group,
                                        orElse: () => throw Error());
                                final exists =
                                    parent.components.where((component) {
                                  final componentName = component.map(
                                      group: (groupComponent) =>
                                          groupComponent.group.name,
                                      item: (itemComponent) =>
                                          itemComponent.item.name);
                                  return componentName ==
                                          state.editedItem!.name &&
                                      componentName != item.name;
                                });

                                if (exists.isNotEmpty) {
                                  ScaffoldMessenger.of(context)
                                      .clearSnackBars();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "A group or item with that name already exists in this item's group!")));

                                  context
                                      .read<EditFormBloc>()
                                      .add(const EditFormEvent.failed());

                                  return;
                                }

                                final newPath = [
                                  ...path.take(path.length - 1),
                                  state.editedItem!.name
                                ];

                                final newVault = unlockedState.vault
                                    .updateComponent(
                                        path: newPath,
                                        component: VaultComponent.item(
                                            state.editedItem!));

                                if (newPath.join('.') != path.join('.')) {
                                  unlockedState.vault.deleteComponent(path);
                                }

                                vaultBloc.add(VaultEvent.updated(
                                    newVault, state.masterKey!));
                                ScaffoldMessenger.of(context).clearSnackBars();
                                GoRouter.of(context).go('/vault/home');
                              },
                              listenWhen: (previous, current) =>
                                  previous.editedItem == null &&
                                  current.editedItem != null,
                            )
                          ],
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Edit Item',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30)),
                              ItemNameInput(item: item),
                              ItemUsernameInput(item: item),
                              ItemPasswordInput(item: item),
                              ItemNotesInput(item: item),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BackToHomeButton(),
                                  Padding(padding: EdgeInsets.only(left: 20)),
                                  SubmitButton()
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ))),
        ],
      ),
    ));
  }
}

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditFormBloc, EditFormState>(builder: (context, state) {
      return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        onPressed: state.submitted
            ? null
            : () {
                GoRouter.of(context).go('/vault/home');
              },
        child: const Text('Back',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      );
    });
  }
}

class ItemNameInput extends StatelessWidget {
  const ItemNameInput({Key? key, required this.item}) : super(key: key);

  final VaultItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<EditFormBloc, EditFormState>(
      builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TextFormField(
                initialValue: state.name,
                enabled: !context.read<EditFormBloc>().state.submitted,
                decoration: const InputDecoration(
                    labelText: 'Item Name',
                    contentPadding: EdgeInsets.all(10),
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none),
                style: theme.textTheme.bodySmall,
                cursorColor: Colors.black,
                onChanged: (name) {
                  context
                      .read<EditFormBloc>()
                      .add(EditFormEvent.nameChanged(name));
                }
                // onFieldSubmitted: (_name) {
                //   context.read<EditFormBloc>().add(const UnlockFormEvent.formSubmitted());
                // },
                ));
      },
    );
  }
}

class ItemUsernameInput extends StatelessWidget {
  const ItemUsernameInput({Key? key, required this.item}) : super(key: key);

  final VaultItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<EditFormBloc, EditFormState>(
      builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TextFormField(
                initialValue: state.username,
                enabled: !context.read<EditFormBloc>().state.submitted,
                decoration: const InputDecoration(
                    labelText: 'Item Username',
                    contentPadding: EdgeInsets.all(10),
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none),
                style: theme.textTheme.bodySmall,
                cursorColor: Colors.black,
                onChanged: (username) {
                  context
                      .read<EditFormBloc>()
                      .add(EditFormEvent.usernameChanged(username));
                }));
      },
    );
  }
}

class ItemPasswordInput extends StatelessWidget {
  const ItemPasswordInput({Key? key, required this.item}) : super(key: key);

  final VaultItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<EditFormBloc, EditFormState>(
      builder: (context, state) {
        final controller = TextEditingController();
        controller.text = state.password;
        controller.selection = TextSelection.fromPosition(
            TextPosition(offset: controller.text.length));

        return Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TextField(
                controller: controller,
                enabled: !context.read<EditFormBloc>().state.submitted,
                decoration: const InputDecoration(
                    labelText: 'Item Password',
                    contentPadding: EdgeInsets.all(10),
                    floatingLabelStyle: TextStyle(color: Colors.black),
                    labelStyle: TextStyle(color: Colors.black),
                    border: InputBorder.none),
                style: theme.textTheme.bodySmall,
                cursorColor: Colors.black,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                onChanged: (password) {
                  context
                      .read<EditFormBloc>()
                      .add(EditFormEvent.passwordChanged(password));
                }));
      },
    );
  }
}

class ItemNotesInput extends StatelessWidget {
  const ItemNotesInput({Key? key, required this.item}) : super(key: key);

  final VaultItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<EditFormBloc, EditFormState>(
      builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 200),
              child: TextFormField(
                  initialValue: state.notes,
                  enabled: !context.read<EditFormBloc>().state.submitted,
                  decoration: const InputDecoration(
                      labelText: 'Item Notes',
                      contentPadding: EdgeInsets.all(10),
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      labelStyle: TextStyle(color: Colors.black),
                      border: InputBorder.none),
                  style: theme.textTheme.bodySmall,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: Colors.black,
                  onChanged: (notes) {
                    context
                        .read<EditFormBloc>()
                        .add(EditFormEvent.notesChanged(notes));
                  }),
            ));
      },
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditFormBloc, EditFormState>(builder: (context, state) {
      return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        onPressed: !state.isFormValid || state.submitted
            ? null
            : () async {
                final editFormBloc = context.read<EditFormBloc>();
                var masterKey = (await getMasterKey(context)).masterKey;

                if (masterKey == null) {
                  return;
                }

                editFormBloc.add(EditFormEvent.formSubmitted(masterKey));
              },
        child: const Text('Submit',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      );
    });
  }
}
