import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:polypass/components/app_wrapper/app_wrapper.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/pages/vault/settings/settings_bloc.dart';

class VaultSettingsPage extends StatelessWidget {
  const VaultSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        actions: false,
        icon: false,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              BlocBuilder<VaultBloc, VaultState>(builder: (context, state) {
                return BlocProvider(
                  create: (_context) =>
                      SettingsBloc(vaultBloc: context.read<VaultBloc>()),
                  child: Center(
                      child: Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: BlocBuilder<SettingsBloc, SettingsState>(
                              builder: (context, state) {
                            return Column(children: [
                              const Text('Vault Settings',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white)),
                              ToggleSetting(
                                  title:
                                      'Save key in memory while vault is unlocked',
                                  value: state.settings.saveKeyInMemory,
                                  onChanged: (setting) {
                                    context.read<SettingsBloc>().add(
                                        SettingsEvent.setSaveKeyInMemory(
                                            setting));
                                  }),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
                              ),
                              TextSetting(
                                  title: 'KDF Iterations',
                                  value: state.settings.iterations.toString(),
                                  onChanged: (setting) {
                                    final parsed = int.tryParse(setting);
                                    if (parsed != null) {
                                      context.read<SettingsBloc>().add(
                                          SettingsEvent.setKDFIterations(
                                              parsed));
                                    }
                                  }),
                              TextSetting(
                                  title: 'KDF Threads',
                                  value: state.settings.threads.toString(),
                                  onChanged: (setting) {
                                    final parsed = int.tryParse(setting);
                                    if (parsed != null) {
                                      context.read<SettingsBloc>().add(
                                          SettingsEvent.setKDFThreads(parsed));
                                    }
                                  }),
                              TextSetting(
                                  title: 'KDF Memory',
                                  value: state.settings.memory.toString(),
                                  onChanged: (setting) {
                                    final parsed = int.tryParse(setting);
                                    if (parsed != null) {
                                      context.read<SettingsBloc>().add(
                                          SettingsEvent.setKDFMemory(parsed));
                                    }
                                  }),
                              TextSetting(
                                  title: 'Clipboard Clear Time (seconds)',
                                  value: state.settings.clipboardClearSeconds
                                      .toString(),
                                  onChanged: (setting) {
                                    final parsed = int.tryParse(setting);
                                    if (parsed != null) {
                                      context.read<SettingsBloc>().add(
                                          SettingsEvent
                                              .setClipboardClearSeconds(
                                                  parsed));
                                    }
                                  }),
                              const Text('Change Master Password',
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white)),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    TextSetting(
                                      onChanged: (newMasterPassword) {
                                        context.read<SettingsBloc>().add(
                                            SettingsEvent
                                                .newMasterPasswordChanged(
                                                    newMasterPassword));
                                      },
                                      obscured: true,
                                      value: state.newMasterPassword,
                                      title: 'New Master Password',
                                    ),
                                    TextSetting(
                                      onChanged: (newMasterPassword) {
                                        context.read<SettingsBloc>().add(
                                            SettingsEvent
                                                .confirmNewMasterPasswordChanged(
                                                    newMasterPassword));
                                      },
                                      obscured: true,
                                      value: state.confirmNewMasterPassword,
                                      title: 'Confirm New Master Password',
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const BackToHomeButton(),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 10)),
                                  SaveButton(isFormValid: state.isFormValid)
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                              )
                            ], mainAxisSize: MainAxisSize.min);
                          }))),
                );
              }),
            ],
          ),
        ));
  }
}

class TextSetting extends StatelessWidget {
  const TextSetting(
      {Key? key,
      required this.title,
      required this.value,
      this.obscured = false,
      required this.onChanged})
      : super(key: key);

  final String title;
  final String value;
  final bool obscured;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final controller = TextEditingController();
    controller.text = value;
    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary),
      margin: const EdgeInsets.all(5),
      child: TextField(
          controller: controller,
          decoration: InputDecoration(
              labelText: title,
              contentPadding: const EdgeInsets.all(10),
              floatingLabelStyle: theme.textTheme.bodySmall,
              labelStyle: theme.textTheme.bodySmall,
              border: InputBorder.none),
          obscureText: obscured,
          autocorrect: !obscured,
          enableSuggestions: !obscured,
          enableIMEPersonalizedLearning: !obscured,
          style: theme.textTheme.bodySmall,
          onChanged: onChanged),
    );
  }
}

class ToggleSetting extends StatelessWidget {
  const ToggleSetting(
      {Key? key,
      required this.title,
      required this.value,
      required this.onChanged})
      : super(key: key);

  final String title;
  final bool value;
  final void Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(child: Text(title)),
        Switch(
            value: value,
            onChanged: onChanged,
            activeColor: Theme.of(context).colorScheme.tertiary)
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
    );
  }
}

class BackToHomeButton extends StatelessWidget {
  const BackToHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Back',
          style: TextStyle(color: Colors.white, fontSize: 20)),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
      onPressed: () {
        GoRouter.of(context).go('/vault/home');
      },
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key, required this.isFormValid}) : super(key: key);

  final bool isFormValid;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Save',
          style: TextStyle(color: Colors.white, fontSize: 20)),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(15))),
      onPressed: !isFormValid
          ? null
          : () {
              context
                  .read<SettingsBloc>()
                  .add(SettingsEvent.settingsSaved(context));
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Settings saved')));
            },
    );
  }
}
