import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_home_bloc.freezed.dart';

@freezed
class VaultHomeState with _$VaultHomeState {
  const factory VaultHomeState({
    required String query,
    required bool submitted,
    required List<String>? selectedGroup
  }) = _VaultHomeState;

  factory VaultHomeState.empty() => const VaultHomeState(
    query: '',
    submitted: false,
    selectedGroup: null
  );
}

@freezed
class VaultHomeEvent with _$VaultHomeEvent {
  const factory VaultHomeEvent.queryChanged(String query) = QueryChangedEvent;
  const factory VaultHomeEvent.searchSubmitted() = SearchSubmittedEvent;
  const factory VaultHomeEvent.groupSelected(List<String>? path) = GroupSelectedEvent;
}

class VaultHomeBloc extends Bloc<VaultHomeEvent, VaultHomeState> {
  VaultHomeBloc() : super(VaultHomeState.empty()) {
    on<VaultHomeEvent>((event, emit) async {
      await event.map(
        queryChanged: (event) => _onQueryChanged(event, emit),
        searchSubmitted: (event) => _onSearchSubmitted(event, emit),
        groupSelected: (event) => _onGroupSelected(event, emit)
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

  Future<void> _onGroupSelected(GroupSelectedEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(
      selectedGroup: state.selectedGroup?.join() == event.path?.join() ? null : event.path
    ));
  }
}