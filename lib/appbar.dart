import 'package:flutter/material.dart';

enum DbStatus { none, locked, unlocked}

AppBar createAppBar(BuildContext context, DbStatus status) {
  final IconButton appBarIcon;
  
  switch (status) {
    case DbStatus.none:
      appBarIcon = IconButton(
        icon: const Icon(Icons.question_mark),
        tooltip: 'No database selected',
        onPressed: () {
          const snackBar = SnackBar(
            content: Text('Click the plus button to create a new password database!')
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      );
      break;
    case DbStatus.locked:
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock),
        tooltip: 'Database locked',
        onPressed: () {
          // TODO: Display unlock database prompt
        }
      );
      break;
    case DbStatus.unlocked:
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock_open),
        tooltip: 'Database unlocked',
        onPressed: () {
          // TODO: Lock database
        }
      );
      break;
  }

  final polyPassAppBar = AppBar(
    title: const Text(
        'PolyPass',
        style: TextStyle(
          color: Colors.white
        )
    ),
    centerTitle: true,
    backgroundColor: const Color(0xFF282c34),
    leading: appBarIcon
  );

  return polyPassAppBar;
}