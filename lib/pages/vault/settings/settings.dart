import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/components/appwrapper.dart';

import 'package:polypass/blocs/vault_bloc.dart';
import 'package:polypass/pages/vault/settings/settings_bloc.dart';

class VaultSettingsPage extends StatelessWidget {
  const VaultSettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      actions: false,
      icon: false,
      child: BlocBuilder<VaultBloc, VaultState>(
        builder: (context, state) {
          return BlocProvider(
            create: (_context) => SettingsBloc( vaultBloc: context.read<VaultBloc>() ),
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: BlocBuilder<SettingsBloc, SettingsState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        const Text(
                          'Vault Settings',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white
                          )
                        ),
                        ToggleSetting(
                          title: 'Save key in memory while vault is unlocked',
                          value: state.settings.saveKeyInMemory,
                          onChanged: (setting) {
                            context.read<SettingsBloc>().add(SettingsEvent.setSaveKeyInMemory(setting));
                          }
                        ),
                        Row(
                          children: const [
                            BackToHomeButton(),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                            SaveButton()
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                        )
                      ],
                      mainAxisSize: MainAxisSize.min
                    );
                  }
                )
              )
            ),
          );
        }
      )
    );
  }
}

class ToggleSetting extends StatelessWidget {
  const ToggleSetting({ Key? key, required this.title, required this.value, required this.onChanged }) : super(key: key);

  final String title;
  final bool value;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Theme.of(context).colorScheme.tertiary
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
    );
  }
}

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      onPressed: () {
        GoRouter.of(context).go('/vault/home');
      },
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Save',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20
        )
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(const EdgeInsets.all(15))
      ),
      onPressed: () {
        context.read<SettingsBloc>().add(const SettingsEvent.settingsSaved());
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Settings saved')
        ));
      },
    );
  }
}