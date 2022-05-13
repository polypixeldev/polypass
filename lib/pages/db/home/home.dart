import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/db_bloc.dart';
import 'db_home_bloc.dart';

import '../../../components/appwrapper.dart';

class DbHome extends StatelessWidget {
  const DbHome({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      child: BlocProvider(
        create: (context) => DatabaseHomeBloc(),
        child: Column(
          children: const [
            SearchBar(),
            PasswordsView()
          ]
        ),
      )
    );
  }
}

class PasswordsView extends StatelessWidget {
  const PasswordsView({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).cardColor
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: const [
            Tree(),
            VerticalDivider(
              width: 1,
              thickness: 1,
              indent: 5,
              endIndent: 5,
              color: Colors.grey
            ),
            FolderList()
          ]
        )
      ),
    );
  }
}

class Tree extends StatelessWidget {
  const Tree({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .2) - 20,
      child: Column(
        // TODO: Display categories from db bloc
        children: []
      ),
    );
  }
}

class TreeCategory extends StatelessWidget {
  const TreeCategory({ Key? key, required this.category}): super(key: key);

  final DatabaseCategory category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // TODO: Update db home bloc focusedCategory on click
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          Text(
            category.icon ?? '🔑',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodySmall!.fontSize
            )
          ),
          Text(
            ' ${category.name}',
            style: TextStyle(
              color: Colors.white,
              fontSize: theme.textTheme.bodySmall!.fontSize
            )
          )
        ]
      ),
    );
  }
}

class FolderList extends StatelessWidget {
  const FolderList({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width * .8) - 21,
      child: Column(
        // TODO: Display category items from focusedCategory here
        children: []
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dbHomeBloc = context.read<DatabaseHomeBloc>();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: theme.cardColor
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: theme.colorScheme.secondary
        ),
        padding: const EdgeInsets.only(left: 10),
        child: TextField(
          decoration: InputDecoration(
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                dbHomeBloc.add(const SearchSubmitted());
              },
            ),
            label: const Text('Search passwords'),
            floatingLabelStyle: theme.textTheme.bodySmall,
            labelStyle: theme.textTheme.bodySmall,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
          ),
          style: theme.textTheme.bodySmall,
          onChanged: (query) {
            dbHomeBloc.add(QueryChanged(query: query));
          },
          onSubmitted: (_query) {
            dbHomeBloc.add(const SearchSubmitted());
          },
        ),
      ),
    );
  }
}