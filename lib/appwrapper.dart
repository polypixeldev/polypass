import 'package:flutter/material.dart';

import 'appbar.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  final _status = DbStatus.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(context, _status),
      body: SizedBox.expand(
        child: Container(
          color: const Color(0xFF4b4e53),
          child: widget.child
        ),
      )
    );
  }
}