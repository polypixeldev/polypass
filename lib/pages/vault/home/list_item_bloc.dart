import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_item_bloc.freezed.dart';

enum ListItemMode { normal, view }

@freezed
class ListItemState with _$ListItemState {
  const factory ListItemState({ required ListItemMode mode }) = _ListItemState;

  factory ListItemState.empty() => ListItemState( mode: ListItemMode.normal );
}

@freezed
class ListItemEvent with _$ListItemEvent {
  const factory ListItemEvent.modeToggled() = ModeToggledEvent;
}

class ListItemBloc extends Bloc<ListItemEvent, ListItemState> {
  ListItemBloc() : super(ListItemState.empty()) {
    on<ListItemEvent>((event, emit) {
      event.map(
        modeToggled: (event) => _onModeToggled(event, emit)
      );
    });
  }

  void _onModeToggled(ModeToggledEvent event, Emitter<ListItemState> emit) {
    emit(state.copyWith(
      mode: state.mode == ListItemMode.normal ? ListItemMode.view : ListItemMode.normal
    ));
  }
}