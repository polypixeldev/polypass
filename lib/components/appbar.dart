import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../blocs/db_bloc.dart';

AppBar createAppBar(BuildContext context, DatabaseStatus status, bool actions, bool icon) {
  final router = GoRouter.of(context);

  final IconButton appBarIcon;
  final List<IconButton> appBarActions;
  
  switch (status) {
    case DatabaseStatus.opening:
    case DatabaseStatus.none:
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

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Create a database',
          onPressed: () {
            router.go('/create');
          }
        ),
        IconButton(
          icon: const Icon(Icons.file_open),
          tooltip: 'Open a database',
          onPressed: () {
            // TODO: Open a database
          }
        )
      ];

      break;
    case DatabaseStatus.locked:
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock),
        tooltip: 'Database locked',
        onPressed: () {
          // TODO: Display unlock database prompt
        }
      );

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Close database',
          onPressed: () {
            // TODO: Close a database
          }
        )
      ];

      break;
    case DatabaseStatus.unlocked:
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock_open),
        tooltip: 'Database unlocked',
        onPressed: () {
          context.read<DatabaseBloc>().add(const DatabaseLocked());
        }
      );

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.add),
          tooltip: 'Create an item',
          onPressed: () {
            // TODO: Create a database item
          }
        ),
        IconButton(
          icon: const Icon(Icons.edit),
          tooltip: 'Edit the selected item',
          onPressed: () {
            // TODO: Edit a database item
          }
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          tooltip: 'Delete the selected item',
          onPressed: () {
            // TODO: Delete a database item
          }
        ),
        IconButton(
          icon: const Icon(Icons.preview_outlined),
          tooltip: 'View the selected item',
          onPressed: () {
            // TODO: View a database item
          }
        )
      ];

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
    leading: icon == true ? appBarIcon : null,
    actions: actions == true ? appBarActions : null
  );

  return polyPassAppBar;
}