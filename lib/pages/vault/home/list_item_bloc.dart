import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'list_item_bloc.freezed.dart';

@freezed
class ListItemState with _$ListItemState {
  const factory ListItemState(
    bool inArea
  ) = _ListItemState;

  factory ListItemState.empty() => const ListItemState(false);
}

@freezed
class ListItemEvent with _$ListItemEvent {
  const factory ListItemEvent.entered() = EnteredEvent;
  const factory ListItemEvent.exited() = ExitedEvent;
}

class ListItemBloc extends Bloc<ListItemEvent, ListItemState> {
  ListItemBloc() : super(ListItemState.empty()) {
    on<ListItemEvent>((event, emit) {
      event.map(
        entered: (event) => _onEntered(event, emit),
        exited: (event) => _onExited(event, emit) 
      );
    });
  }

  void _onEntered(EnteredEvent event, Emitter<ListItemState> emit) {
    emit(state.copyWith(
      inArea: true
    ));
  }

  void _onExited(ExitedEvent event, Emitter<ListItemState> emit) {
    emit(state.copyWith(
      inArea: false
    ));
  }
}