import 'package:bloc/bloc.dart';

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';
import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_home_bloc.freezed.dart';

@freezed
class VaultHomeState with _$VaultHomeState {
  const factory VaultHomeState(
      {required String query,
      required bool submitted,
      required List<List<String>> results,
      required bool treeVisible}) = _VaultHomeState;

  factory VaultHomeState.empty() => const VaultHomeState(
      query: '', submitted: false, results: [], treeVisible: true);
}

@freezed
class VaultHomeEvent with _$VaultHomeEvent {
  const factory VaultHomeEvent.queryChanged(String query) = QueryChangedEvent;
  const factory VaultHomeEvent.searchSubmitted() = SearchSubmittedEvent;
  const factory VaultHomeEvent.treeToggled() = TreeToggledEvent;
}

class VaultHomeBloc extends Bloc<VaultHomeEvent, VaultHomeState> {
  VaultHomeBloc({required this.vaultBloc}) : super(VaultHomeState.empty()) {
    on<VaultHomeEvent>((event, emit) async {
      await event.map(
          queryChanged: (event) => _onQueryChanged(event, emit),
          searchSubmitted: (event) => _onSearchSubmitted(event, emit),
          treeToggled: (event) => _onTreeToggled(event, emit));
    });
  }

  final VaultBloc vaultBloc;

  Future<void> _onQueryChanged(
      QueryChangedEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(query: event.query));
  }

  Future<void> _onSearchSubmitted(
      SearchSubmittedEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(submitted: true));

    final unlockedState = vaultBloc.state
        .maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    final decryptedContents = unlockedState.vault.contents.maybeMap(
        decrypted: (contents) => contents, orElse: () => throw Error());

    final results =
        searchGroup(decryptedContents.data.components, state.query, null);

    emit(state.copyWith(results: results));

    vaultBloc.add(const VaultEvent.groupSelected(['Search Results'], false));
  }

  Future<void> _onTreeToggled(
      TreeToggledEvent event, Emitter<VaultHomeState> emit) async {
    emit(state.copyWith(treeVisible: !state.treeVisible));
  }
}

List<List<String>> searchGroup(
    List<VaultComponent> components, String query, List<String>? path) {
  final matchedItems = <List<String>>[];

  for (final component in components) {
    component.map(group: (group) {
      final groupMatchedItems = searchGroup(group.group.components, query,
          path == null ? [group.group.name] : [...path, group.group.name]);
      matchedItems.addAll(groupMatchedItems);
    }, item: (item) {
      final exp = RegExp(query, caseSensitive: false);
      if (exp.hasMatch(item.item.name)) {
        matchedItems
            .add(path == null ? [item.item.name] : [...path, item.item.name]);
      }
    });
  }

  return matchedItems;
}
