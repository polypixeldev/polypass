import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_home_bloc.freezed.dart';

@freezed
class VaultHomeState with _$VaultHomeState {
  const factory VaultHomeState({
    required String query,
    required bool submitted
  }) = _VaultHomeState;

  factory VaultHomeState.empty() => const VaultHomeState(
    query: '',
    submitted: false
  );
}

@freezed
class VaultHomeEvent with _$VaultHomeEvent {
  const factory VaultHomeEvent.queryChanged(String query) = QueryChangedEvent;
  const factory VaultHomeEvent.searchSubmitted() = SearchSubmittedEvent;
}

class VaultHomeBloc extends Bloc<VaultHomeEvent, VaultHomeState> {
  VaultHomeBloc() : super(VaultHomeState.empty()) {
    on<VaultHomeEvent>((event, emit) async {
      await event.map(
        queryChanged: (event) => _onQueryChanged(event, emit),
        searchSubmitted: (event) => _onSearchSubmitted(event, emit)
      );
    });
  }

  Future<void> _onQueryChanged(QueryChangedEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(
      query: event.query
    ));
  }

  Future<void> _onSearchSubmitted(SearchSubmittedEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Handle search
  }
}