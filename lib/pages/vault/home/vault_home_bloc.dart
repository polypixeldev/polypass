import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class VaultHomeState extends Equatable {
  const VaultHomeState({
    this.query = '',
    this.submitted = false
  });

  final String query;
  final bool submitted;

  VaultHomeState copyWith({
    String? query,
    bool? submitted
  }) {
    return VaultHomeState(
      query: query ?? this.query,
      submitted: submitted ?? this.submitted
    );
  }

  @override
  List<dynamic> get props => [query, submitted];
}

abstract class VaultHomeEvent extends Equatable {
  const VaultHomeEvent();

  @override
  List<dynamic> get props => [];
}

class QueryChanged extends VaultHomeEvent {
  const QueryChanged({
    required this.query
  });

  final String query;

  @override
  List<String> get props => [query];
}

class SearchSubmitted extends VaultHomeEvent {
  const SearchSubmitted();
}

class VaultHomeBloc extends Bloc<VaultHomeEvent, VaultHomeState> {
  VaultHomeBloc() : super(const VaultHomeState()) {
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