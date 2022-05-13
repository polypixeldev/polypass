import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class DatabaseHomeState extends Equatable {
  const DatabaseHomeState({
    this.query = '',
    this.submitted = false
  });

  final String query;
  final bool submitted;

  DatabaseHomeState copyWith({
    String? query,
    bool? submitted
  }) {
    return DatabaseHomeState(
      query: query ?? this.query,
      submitted: submitted ?? this.submitted
    );
  }

  @override
  List<dynamic> get props => [query, submitted];
}

abstract class DatabaseHomeEvent extends Equatable {
  const DatabaseHomeEvent();

  @override
  List<dynamic> get props => [];
}

class QueryChanged extends DatabaseHomeEvent {
  const QueryChanged({
    required this.query
  });

  final String query;

  @override
  List<String> get props => [query];
}

class SearchSubmitted extends DatabaseHomeEvent {
  const SearchSubmitted();
}

class DatabaseHomeBloc extends Bloc<DatabaseHomeEvent, DatabaseHomeState> {
  DatabaseHomeBloc() : super(const DatabaseHomeState()) {
    on<QueryChanged>(_onQueryChanged);
    on<SearchSubmitted>(_onSearchSubmitted);
  }

  void _onQueryChanged(event, emit) {
    emit(state.copyWith(
      query: event.query
    ));
  }

  void _onSearchSubmitted(event, emit) {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Handle search
  }
}