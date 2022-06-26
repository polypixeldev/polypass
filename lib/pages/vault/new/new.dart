import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/blocs/vault_bloc.dart';
import 'package:polypass/data/vault_file.dart';
import 'package:polypass/pages/vault/new/new_bloc.dart';

import 'package:polypass/components/appwrapper.dart';
import 'package:polypass/components/master_password_dialog.dart';

class NewItem extends StatelessWidget {
  const NewItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF373b42),
            borderRadius: BorderRadius.circular(10)
          ),
          padding: const EdgeInsets.all(10),
          width: 700,
          child: Form(
            child: BlocProvider(
              create: (_context) => NewFormBloc(),
              child: MultiBlocListener(
                listeners: [
                  BlocListener<NewFormBloc, NewFormState>(
                    listener: (context, state) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Creating item...'),
                        duration: Duration( days: 365 )
                      ));
                    },
                    listenWhen: (previous, current) => previous.submitted == false && current.submitted == true,
                  ),
                  BlocListener<NewFormBloc, NewFormState>(
                    listener: (context, state) {
                      final vaultBloc = context.read<VaultBloc>();
                      final unlockedState = vaultBloc.state.maybeMap(
                        unlocked: (state) => state,
                        orElse: () => throw Error()
                      );

                      final selectedPath = unlockedState.selectedGroup;
                      final selectedGroup = selectedPath != null? unlockedState.vault.getComponent(selectedPath).maybeWhen(group: (group) => group, orElse: () => throw Error()) : unlockedState.vault.toGroup();

                      final exists = selectedGroup.components.where((component) => component.when(group: (group) => group.name, item: (item) => item.name) == state.createdItem!.name);

                      if (exists.isNotEmpty) {
                        ScaffoldMessenger.of(context).clearSnackBars();
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('A group or item with that name already exists in the selected group')
                        ));
                        context.read<NewFormBloc>().add(const NewFormEvent.failed());
                        return;
                      }

                      final newVault = unlockedState.vault.updateComponent(path: selectedPath != null ? [...selectedPath, state.createdItem!.name] : [state.createdItem!.name], component: VaultComponent.item(state.createdItem!));

                      vaultBloc.add(VaultEvent.updated(newVault, state.masterKey!));
                      ScaffoldMessenger.of(context).clearSnackBars();
                      GoRouter.of(context).go('/vault/home');
                    },
                    listenWhen: (previous, current) => previous.createdItem == null && current.createdItem != null,
                  )
                ],
                child: Column(
                  children: [
                    const Text(
                      'New Item',
                      style: TextStyle(
                      color: Colors.white,
                      fontSize: 30
                    )),
                    const ItemNameInput(),
                    const ItemUsernameInput(),
                    const ItemPasswordInput(),
                    const ItemNotesInput(),
                    Row(
                      children: const [
                        BackToHomeButton(),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                        SubmitButton()
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )
                  ],
                  mainAxisSize: MainAxisSize.min,
                ),
              ),
            )
          )
        )
      )
    );
  }
}

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return ElevatedButton(
          child: const Text(
            'Back',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: state.submitted ? null : () {
            GoRouter.of(context).go('/vault/home');
          },
        );
      }
    );
  }
}

class ItemNameInput extends StatelessWidget {
  const ItemNameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)
          ),
          margin: const EdgeInsets.symmetric( vertical: 10, horizontal: 5 ),
          child: TextFormField(
            enabled: !context.read<NewFormBloc>().state.submitted,
            decoration: const InputDecoration(
              labelText: 'Item Name',
              contentPadding: EdgeInsets.all(10),
              floatingLabelStyle: TextStyle( color: Colors.black ),
              labelStyle: TextStyle( color: Colors.black ),
              border: InputBorder.none
            ),
            style: theme.textTheme.bodySmall,
            cursorColor: Colors.black,
            // obscureText: true,
            // enableSuggestions: false,
            // autocorrect: false,
            onChanged: (name) {
              context.read<NewFormBloc>().add(NewFormEvent.nameChanged(name));
            },
            autofocus: true
          )
        );
      },
    );
  }
}

class ItemUsernameInput extends StatelessWidget {
  const ItemUsernameInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)
          ),
          margin: const EdgeInsets.symmetric( vertical: 10, horizontal: 5 ),
          child: TextFormField(
            enabled: !context.read<NewFormBloc>().state.submitted,
            decoration: const InputDecoration(
              labelText: 'Item Username',
              contentPadding: EdgeInsets.all(10),
              floatingLabelStyle: TextStyle( color: Colors.black ),
              labelStyle: TextStyle( color: Colors.black ),
              border: InputBorder.none
            ),
            style: theme.textTheme.bodySmall,
            cursorColor: Colors.black,
            onChanged: (username) {
              context.read<NewFormBloc>().add(NewFormEvent.usernameChanged(username));
            }
          )
        );
      },
    );
  }
}

class ItemPasswordInput extends StatelessWidget {
  const ItemPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)
          ),
          margin: const EdgeInsets.symmetric( vertical: 10, horizontal: 5 ),
          child: TextFormField(
            enabled: !context.read<NewFormBloc>().state.submitted,
            decoration: const InputDecoration(
              labelText: 'Item Password',
              contentPadding: EdgeInsets.all(10),
              floatingLabelStyle: TextStyle( color: Colors.black ),
              labelStyle: TextStyle( color: Colors.black ),
              border: InputBorder.none
            ),
            style: theme.textTheme.bodySmall,
            cursorColor: Colors.black,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            onChanged: (password) {
              context.read<NewFormBloc>().add(NewFormEvent.passwordChanged(password));
            }
          )
        );
      },
    );
  }
}

class ItemNotesInput extends StatelessWidget {
  const ItemNotesInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(5)
          ),
          margin: const EdgeInsets.symmetric( vertical: 10, horizontal: 5 ),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 200),
            child: TextFormField(
            enabled: !context.read<NewFormBloc>().state.submitted,
              decoration: const InputDecoration(
                labelText: 'Item Notes',
                contentPadding: EdgeInsets.all(10),
                floatingLabelStyle: TextStyle( color: Colors.black ),
                labelStyle: TextStyle( color: Colors.black ),
                border: InputBorder.none
              ),
              style: theme.textTheme.bodySmall,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: Colors.black,
              onChanged: (notes) {
                context.read<NewFormBloc>().add(NewFormEvent.notesChanged(notes));
              }
            ),
          )
        );
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
    return BlocBuilder<NewFormBloc, NewFormState>(
      builder: (context, state) {
        return ElevatedButton(
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: !state.isFormValid || state.submitted ? null : () async {
            var masterKey = context.read<VaultBloc>().state.maybeMap(
              unlocked: (state) => state.masterKey,
              orElse: () => throw Error()
            );

            if (masterKey == null) {
              await showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => MasterPasswordDialog(
                  onSuccess: (key) {
                    masterKey = key;
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  onCancel: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    GoRouter.of(context).go('/vault/home');
                  },
                )
              );
            }

            if (masterKey == null) {
              return;
            }
            
            context.read<NewFormBloc>().add(NewFormEvent.formSubmitted(masterKey!));
          },
        );
      }
    );
  }
}