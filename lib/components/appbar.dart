import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/db_bloc.dart';

AppBar createAppBar(BuildContext context, DatabaseStatus status, bool actions, bool icon) {
  final databaseBloc = context.read<DatabaseBloc>();

  Widget? appBarIcon;
  List<IconButton>? appBarActions;
  
  switch (status) {  
    case DatabaseStatus.locked:
      appBarIcon = const Icon(Icons.lock);

      appBarActions = [
        IconButton(
          icon: const Icon(Icons.close),
          tooltip: 'Close database',
          onPressed: () {
            databaseBloc.add(const DatabaseClosed());
          }
        )
      ];

      break;
    case DatabaseStatus.unlocked:
      appBarIcon = IconButton(
        icon: const Icon(Icons.lock_open),
        tooltip: 'Database unlocked',
        onPressed: () {
          databaseBloc.add(const DatabaseLocked());
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
    default:
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
    leading: icon == true && appBarIcon != null ? appBarIcon : null,
    actions: actions == true && appBarActions != null ? appBarActions : null
  );

  return polyPassAppBar;
}