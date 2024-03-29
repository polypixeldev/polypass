import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/pages/vault/locked/locked_bloc.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';

class VaultLocked extends StatelessWidget {
  const VaultLocked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        child: Center(
            child: Container(
      decoration: BoxDecoration(
          color: const Color(0xFF373b42),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 600,
      child: BlocProvider(
        create: (context) => LockedFormBloc(read: context.read),
        child: MultiBlocListener(
          listeners: [
            BlocListener<LockedFormBloc, LockedFormState>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Unlocking vault...'),
                      duration: Duration(seconds: 3)));
                },
                listenWhen: (previous, current) => current.success == true),
            BlocListener<LockedFormBloc, LockedFormState>(
                listener: (context, state) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          'Decryption failed. Check your credentials and try again.'),
                      duration: Duration(seconds: 5)));
                },
                listenWhen: (previous, current) =>
                    previous.fails != current.fails)
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  'Unlock ${context.read<VaultBloc>().state.mapOrNull(locked: (state) => state.vault.header.name)}',
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center),
              const MasterPasswordInput(),
              const SubmitButton()
            ],
          ),
        ),
      ),
    )));
  }
}

class MasterPasswordInput extends StatelessWidget {
  const MasterPasswordInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<LockedFormBloc, LockedFormState>(
      builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: TextFormField(
              enabled: context
                  .read<VaultBloc>()
                  .state
                  .maybeMap(unlocking: (state) => false, orElse: () => true),
              decoration: const InputDecoration(
                  labelText: 'Master Password',
                  contentPadding: EdgeInsets.all(10),
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  labelStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none),
              style: theme.textTheme.bodySmall,
              cursorColor: Colors.black,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (masterPassword) {
                context
                    .read<LockedFormBloc>()
                    .add(LockedFormEvent.masterPasswordChanged(masterPassword));
              },
              onFieldSubmitted: (masterPassword) {
                context
                    .read<LockedFormBloc>()
                    .add(LockedFormEvent.formSubmitted(context));
              },
              autofocus: true,
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
    return BlocBuilder<LockedFormBloc, LockedFormState>(
        builder: (context, state) {
      return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
        onPressed: context.read<VaultBloc>().state.maybeMap(
                    unlocking: (state) => true, orElse: () => false) ||
                !state.isFormValid
            ? null
            : () {
                context
                    .read<LockedFormBloc>()
                    .add(LockedFormEvent.formSubmitted(context));
              },
        child: const Text('Submit',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      );
    });
  }
}
