import 'package:flutter/material.dart';

import 'appbar.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({Key? key, required this.child, this.actions = true, this.icon = true}) : super(key: key);

  final Widget child;
  final bool actions;
  final bool icon;

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  final _status = DbStatus.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, _status, widget.actions, widget.icon),
      body: SizedBox.expand(
        child: Container(
          color: const Color(0xFF4b4e53),
          child: widget.child
        ),
      )
    );
  }
}