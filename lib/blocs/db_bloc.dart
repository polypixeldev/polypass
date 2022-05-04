import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

enum DatabaseStatus { none, locked, unlocked, opening}

enum DatabaseComponent {
  category(List<DatabaseComponent>),
  item(ItemData);

  const DatabaseComponent(component);
}

class ItemData {
  const ItemData();
}

class DatabaseState extends Equatable {
  const DatabaseState({
    required this.tree,
    required this.name,
    required this.description,
    required this.path,
    required this.status
  });

  final List<DatabaseComponent> tree;
  final String name;
  final String description;
  final String path;
  final DatabaseStatus status;

  DatabaseState copyWith({
    List<DatabaseComponent>? tree,
    String? name,
    String? description,
    String? path,
    DatabaseStatus? status
  }) {
    return DatabaseState(
      tree: tree ?? this.tree,
      name: name ?? this.name,
      description: description ?? this.description,
      path: path ?? this.path,
      status: status ?? this.status
    );
  }

  @override
  List<dynamic> get props => [tree, name, description, path, status];
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

class DatabaseBloc extends Bloc<DatabaseBlocEvent, DatabaseState> {
  DatabaseBloc({
    String name = '',
    String description = '',
    String path = '',
    List<DatabaseComponent> tree = const [],
    DatabaseStatus status = DatabaseStatus.none
  }) : super(DatabaseState(
    name: name,
    description: description,
    path: path,
    tree: tree,
    status: status 
  )) {
    on<DatabaseOpened>(_onDatabaseOpened);
  }

  void _onDatabaseOpened(event, emit) {
    emit(state.copyWith(
      status: DatabaseStatus.opening
    ));
    // TODO: Call repository function to fetch db data using event.path and emit new state
    emit(state.copyWith(
      status: DatabaseStatus.unlocked
    ));
  }
}