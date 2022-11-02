import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:polypass/blocs/activity_bloc/activity_bloc.dart';

class ActivityListener extends StatelessWidget {
  const ActivityListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    HardwareKeyboard.instance.addHandler((event) {
      if (event is KeyDownEvent && !event.synthesized) {
        context.read<ActivityBloc>().add(const ActivityEvent.action());
      }

      return false;
    });

    return Listener(
      onPointerDown: (event) {
        context.read<ActivityBloc>().add(const ActivityEvent.action());
      },
      child: child,
    );
  }
}
