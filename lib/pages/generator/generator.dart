import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polypass/components/app_wrapper/app_wrapper.dart';

class Generator extends StatelessWidget {
  const Generator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
        backButton: true,
        child: Center(
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
                          child: Text('mnuh85g4eolkoriu',
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .fontSize,
                                  color: Colors.black)))),
                  IconButton(
                    icon: const Icon(Icons.refresh),
                    tooltip: 'Regenerate password',
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy),
                    tooltip: 'Copy password',
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Column(mainAxisSize: MainAxisSize.min, children: [
              Row(
                children: [
                  Text('Length: ',
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    width: 50,
                    child: TextField(
                        style: Theme.of(context).textTheme.bodyMedium,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: const InputDecoration(isDense: true)),
                  ),
                  Flexible(
                      flex: 10,
                      child: Slider(
                          min: 1,
                          max: 50,
                          divisions: 5,
                          value: 2,
                          onChanged: (val) {})),
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    GeneratorGroup(
                        name: 'Lowercase',
                        alphabet: 'abcdefghijklmnopqrstuvwxyz'),
                    GeneratorGroup(
                        name: 'Uppercase',
                        alphabet: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'),
                    GeneratorGroup(name: 'Numbers', alphabet: '123456789'),
                    GeneratorGroup(
                        name: 'Symbols',
                        alphabet: '!@#\$%^&*()_+-=[]{}\\|;\':",./<>?'),
                  ]),
            ])
          ]),
        )));
  }
}

class GeneratorGroup extends StatelessWidget {
  const GeneratorGroup({Key? key, required this.name, required this.alphabet})
      : super(key: key);

  final String name;
  final String alphabet;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(value: false, onChanged: (val) {}),
            const Padding(padding: EdgeInsets.only(right: 3)),
            Text(name, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ));
  }
}
