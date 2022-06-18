import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'component_bloc.freezed.dart';

enum ComponentMode { normal, rename }

@freezed
class ComponentState with _$ComponentState {
  const factory ComponentState(
    bool inArea,
    ComponentMode mode
  ) = _ComponentState;

  factory ComponentState.empty() => const ComponentState(false, ComponentMode.normal);
}

@freezed
class ComponentEvent with _$ComponentEvent {
  const factory ComponentEvent.entered() = EnteredEvent;
  const factory ComponentEvent.exited() = ExitedEvent;
  const factory ComponentEvent.modeToggled() = ModeToggledEvent;
}

class ComponentBloc extends Bloc<ComponentEvent, ComponentState> {
  ComponentBloc() : super(ComponentState.empty()) {
    on<ComponentEvent>((event, emit) {
      event.map(
        entered: (event) => _onEntered(event, emit),
        exited: (event) => _onExited(event, emit),
        modeToggled: (event) => _onModeToggled(event, emit)
      );
    });
  }

  void _onEntered(EnteredEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(
      inArea: true
    ));
  }

  void _onExited(ExitedEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(
      inArea: false
    ));
  }

  void _onModeToggled(ModeToggledEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(
      mode: state.mode == ComponentMode.normal ? ComponentMode.rename : ComponentMode.normal
    ));
  }
}