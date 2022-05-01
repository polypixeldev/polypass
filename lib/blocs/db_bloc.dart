import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

enum DatabaseComponent {
  category(List<DatabaseComponent>),
  item(ItemData);

  const DatabaseComponent(component);
}

class ItemData {
  const ItemData();
}

class DatabaseBlocState extends Equatable {
  const DatabaseBlocState({
    required this.tree,
    required this.name,
    required this.description,
    required this.path,
    required this.initialized
  });

  final List<DatabaseComponent> tree;
  final String name;
  final String description;
  final String path;
  final bool initialized;

  @override
  List<dynamic> get props => [tree, name, description, path, initialized];
}

abstract class DatabaseBlocEvent extends Equatable {
  const DatabaseBlocEvent();

  @override
  List<dynamic> get props => [];
}

class DatabaseOpened extends DatabaseBlocEvent {
  const DatabaseOpened({
    required this.path
  });

  final String path;

  @override
  List<String> get props => [path];
}

class DatabaseBloc extends Bloc<DatabaseBlocEvent, DatabaseBlocState> {
  DatabaseBloc({
    String name = '',
    String description = '',
    String path = '',
    List<DatabaseComponent> tree = const [],
    bool initialized = false
  }) : super(DatabaseBlocState(
    name: name,
    description: description,
    path: path,
    tree: tree,
    initialized: initialized
  )) {
    on<DatabaseOpened>(_onDatabaseOpened);
  }

  void _onDatabaseOpened(event, emit) {
    // TODO: Call repository function to fetch db data using event.path and emit new state
  }
}