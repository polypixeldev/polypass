import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_window_close/flutter_window_close.dart';

import 'package:polypass/blocs/activity_bloc/activity_bloc.dart';

class ActivityListener extends StatelessWidget {
  const ActivityListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    FlutterWindowClose.setWindowShouldCloseHandler(() async {
      final copied = context.read<ActivityBloc>().state.passwordCopied;
      if (copied) {
        await Clipboard.setData(const ClipboardData(text: ''));
      }

      return true;
    });

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
