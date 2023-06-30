import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinbox/material.dart';

import 'package:polypass/blocs/activity_bloc/activity_bloc.dart';
import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:polypass/components/app_wrapper/app_wrapper.dart';
import 'package:polypass/pages/generator/generator_bloc.dart';

class Generator extends StatelessWidget {
  const Generator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        backButton: true,
        child: BlocProvider(
          create: (context) => GeneratorBloc(),
          child: BlocBuilder<GeneratorBloc, GeneratorState>(
              builder: (context, state) {
            return Center(
                child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 75),
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Text('Random Password Generator',
                    style: Theme.of(context).textTheme.titleMedium),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                          flex: 10,
                          fit: FlexFit.tight,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Text(state.generatedPassword,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .fontSize,
                                      color: Colors.black)))),
                      IconButton(
                        icon: const Icon(Icons.refresh),
                        tooltip: 'Regenerate password',
                        onPressed: () {
                          context
                              .read<GeneratorBloc>()
                              .add(const GeneratorEvent.regeneratePassword());
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.copy),
                        tooltip: 'Copy password',
                        onPressed: () {
                          Clipboard.setData(
                              ClipboardData(text: state.generatedPassword));

                          final appSettingsBloc =
                              context.read<AppSettingsBloc>();
                          final seconds = appSettingsBloc.state.settings
                              .defaultVaultSettings.clipboardClearSeconds;

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                                'Copied password to clipboard - it will be cleared in $seconds seconds'),
                          ));
                          final activityBloc = context.read<ActivityBloc>();
                          activityBloc.add(const ActivityEvent.copied(true));
                          Future.delayed(Duration(seconds: seconds)).then((v) {
                            Clipboard.setData(const ClipboardData(text: ''));
                            activityBloc.add(const ActivityEvent.copied(false));
                          });
                        },
                      )
                    ],
                  ),
                ),
                Column(mainAxisSize: MainAxisSize.min, children: [
                  Row(
                    children: [
                      Text('Length: ',
                          style: Theme.of(context).textTheme.bodyMedium),
                      Flexible(
                          flex: 10,
                          child: Slider(
                              min: 1,
                              max: 50,
                              divisions: 50,
                              value: state.length.toDouble(),
                              onChanged: (val) {
                                context.read<GeneratorBloc>().add(
                                    GeneratorEvent.lengthChanged(val.toInt()));
                              })),
                      SizedBox(
                        width: 150,
                        child: SpinBox(
                            textStyle: Theme.of(context).textTheme.bodyMedium,
                            min: 1,
                            max: 50,
                            value: state.length.toDouble(),
                            onChanged: (val) {
                              context.read<GeneratorBloc>().add(
                                  GeneratorEvent.lengthChanged(val.toInt()));
                            }),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GeneratorGroup(
                            name: 'Lowercase',
                            alphabet: 'abcdefghijklmnopqrstuvwxyz',
                            value: state.lowercase,
                            onChanged: (val) {
                              context.read<GeneratorBloc>().add(
                                  GeneratorEvent.lowercaseChanged(
                                      val ?? false));
                            }),
                        GeneratorGroup(
                            name: 'Uppercase',
                            alphabet: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ',
                            value: state.uppercase,
                            onChanged: (val) {
                              context.read<GeneratorBloc>().add(
                                  GeneratorEvent.uppercaseChanged(
                                      val ?? false));
                            }),
                        GeneratorGroup(
                            name: 'Numbers',
                            alphabet: '123456789',
                            value: state.numbers,
                            onChanged: (val) {
                              context.read<GeneratorBloc>().add(
                                  GeneratorEvent.numbersChanged(val ?? false));
                            }),
                        GeneratorGroup(
                            name: 'Symbols',
                            alphabet: '!@#\$%^&*()_+-=[]{}\\|;\':",./<>?',
                            value: state.symbols,
                            onChanged: (val) {
                              context.read<GeneratorBloc>().add(
                                  GeneratorEvent.symbolsChanged(val ?? false));
                            }),
                      ]),
                ])
              ]),
            ));
          }),
        ));
  }
}

class GeneratorGroup extends StatelessWidget {
  const GeneratorGroup(
      {Key? key,
      required this.name,
      required this.alphabet,
      required this.value,
      required this.onChanged})
      : super(key: key);

  final String name;
  final String alphabet;
  final bool value;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(value: value, onChanged: onChanged),
            const Padding(padding: EdgeInsets.only(right: 3)),
            Text(name, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ));
  }
}
