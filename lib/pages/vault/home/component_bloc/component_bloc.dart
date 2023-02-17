import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'component_bloc.freezed.dart';

enum ComponentMode { normal, rename }

enum ExpandMode { expanded, collapsed }

@freezed
class ComponentState with _$ComponentState {
  const factory ComponentState(
      {required bool inArea,
      required ComponentMode mode,
      required ExpandMode expand}) = _ComponentState;

  factory ComponentState.empty(bool expanded) => ComponentState(
      inArea: false,
      mode: ComponentMode.normal,
      expand: expanded ? ExpandMode.expanded : ExpandMode.collapsed);
}

@freezed
class ComponentEvent with _$ComponentEvent {
  const factory ComponentEvent.entered() = EnteredEvent;
  const factory ComponentEvent.exited() = ExitedEvent;
  const factory ComponentEvent.modeToggled() = ModeToggledEvent;
  const factory ComponentEvent.expandToggled() = ExpandToggledEvent;
}

class ComponentBloc extends Bloc<ComponentEvent, ComponentState> {
  ComponentBloc(bool expanded) : super(ComponentState.empty(expanded)) {
    on<ComponentEvent>((event, emit) {
      event.map(
          entered: (event) => _onEntered(event, emit),
          exited: (event) => _onExited(event, emit),
          modeToggled: (event) => _onModeToggled(event, emit),
          expandToggled: (event) => _onExpandToggled(event, emit));
    });
  }

  void _onEntered(EnteredEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(inArea: true));
  }

  void _onExited(ExitedEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(inArea: false));
  }

  void _onModeToggled(ModeToggledEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(
        mode: state.mode == ComponentMode.normal
            ? ComponentMode.rename
            : ComponentMode.normal));
  }

  void _onExpandToggled(
      ExpandToggledEvent event, Emitter<ComponentState> emit) {
    emit(state.copyWith(
        expand: state.expand == ExpandMode.collapsed
            ? ExpandMode.expanded
            : ExpandMode.collapsed));
  }
}
