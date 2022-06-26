import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/components/master_password_dialog_bloc.dart';
import 'package:polypass/blocs/vault_bloc.dart';

class MasterPasswordDialog extends StatelessWidget {
  const MasterPasswordDialog({ Key? key, required this.onSuccess, required this.onCancel }) : super(key: key);

  final void Function(encrypt.Key masterKey) onSuccess;
  final void Function() onCancel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final unlockedState = context.read<VaultBloc>().state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    return BlocProvider(
      create: (_context) => MasterPasswordDialogBloc(vaultFile: unlockedState.vault),
      child: MultiBlocListener(
        listeners: [
          BlocListener<MasterPasswordDialogBloc, MasterPasswordDialogState>(
            listener: (context, state) {
              onSuccess(state.masterKey!);
            },
            listenWhen: (previous, current) => current.status == MasterPasswordDialogStatus.success
          ),
          BlocListener<MasterPasswordDialogBloc, MasterPasswordDialogState>(
            listener: (context, state) {
              onCancel();
            },
            listenWhen: (previous, current) => current.status == MasterPasswordDialogStatus.canceled
          )
        ],
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          child: Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.background,
              border: Border.all(
                color: theme.appBarTheme.backgroundColor!,
                width: 5
              ),
              borderRadius: BorderRadius.circular(10)
            ),
            constraints: const BoxConstraints(
              maxHeight: 200,
              maxWidth: 700
            ),
            padding: const EdgeInsets.all(10),
            child: BlocBuilder<MasterPasswordDialogBloc, MasterPasswordDialogState>(
              builder: (context, state) {
                return Center(
                  heightFactor: 1,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: theme.colorScheme.secondary,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextFormField(
                          enabled: state.status == MasterPasswordDialogStatus.wait,
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            label: Text(
                              'Master Password',
                              style: TextStyle( color: Colors.black ),
                              textAlign: TextAlign.center,
                            ),
                            contentPadding: EdgeInsets.all(10),
                            floatingLabelStyle: TextStyle( color: Colors.black ),
                            floatingLabelAlignment: FloatingLabelAlignment.center,
                            border: InputBorder.none
                          ),
                          style: theme.textTheme.bodySmall,
                          cursorColor: Colors.black,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          onChanged: (masterPassword) {
                            context.read<MasterPasswordDialogBloc>().add(MasterPasswordDialogEvent.masterPasswordChanged(masterPassword));
                          },
                          onFieldSubmitted: (masterPassword) {
                            context.read<MasterPasswordDialogBloc>().add(const MasterPasswordDialogEvent.masterPasswordSubmitted());
                          },
                          autofocus: true,
                        ),
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Row(
                        children: const [
                          CancelButton(),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                          SubmitButton()
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                  ),
                );
              }
            )
          )
        ),
      ),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MasterPasswordDialogBloc, MasterPasswordDialogState>(
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
          onPressed: context.read<VaultBloc>().state.maybeWhen(unlocking: (_vault) => true, orElse: () => false) || !state.isFormValid ? null : () {
            context.read<MasterPasswordDialogBloc>().add(const MasterPasswordDialogEvent.masterPasswordSubmitted());
          },
        );
      }
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MasterPasswordDialogBloc, MasterPasswordDialogState>(
      builder: (context, state) {
        return ElevatedButton(
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20
            )
          ),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))
          ),
          onPressed: context.read<VaultBloc>().state.maybeWhen(unlocking: (_vault) => true, orElse: () => false) || !state.isFormValid ? null : () {
            context.read<MasterPasswordDialogBloc>().add(const MasterPasswordDialogEvent.canceled());
          },
        );
      }
    );
  }
}