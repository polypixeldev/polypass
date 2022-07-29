import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_item_bloc.freezed.dart';

enum ListItemMode { normal, view }

@freezed
class ListItemState with _$ListItemState {
  const factory ListItemState(
      {required ListItemMode mode, required Key? masterKey}) = _ListItemState;

  factory ListItemState.empty() =>
      const ListItemState(mode: ListItemMode.normal, masterKey: null);
}

@freezed
class ListItemEvent with _$ListItemEvent {
  const factory ListItemEvent.modeToggled({ListItemMode? newMode}) =
      ModeToggledEvent;
  const factory ListItemEvent.masterKeyChanged(Key? masterKey) =
      MasterKeyAcquiredEvent;
}

class ListItemBloc extends Bloc<ListItemEvent, ListItemState> {
  ListItemBloc() : super(ListItemState.empty()) {
    on<ListItemEvent>((event, emit) {
      event.map(
          modeToggled: (event) => _onModeToggled(event, emit),
          masterKeyChanged: (event) => _onMasterKeyAcquired(event, emit));
    });
  }

  void _onModeToggled(ModeToggledEvent event, Emitter<ListItemState> emit) {
    emit(state.copyWith(
        mode: event.newMode ??
            (state.mode == ListItemMode.normal
                ? ListItemMode.view
                : ListItemMode.normal)));
  }

  void _onMasterKeyAcquired(
      MasterKeyAcquiredEvent event, Emitter<ListItemState> emit) {
    emit(state.copyWith(masterKey: event.masterKey));
  }
}
