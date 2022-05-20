import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'locked_bloc.freezed.dart';

@freezed
class UnlockFormState with _$UnlockFormState {
  const UnlockFormState._();
  const factory UnlockFormState(
    // Raw master password that user enters
    String masterPassword,
    // Derived master key from master password
    String masterKey,
    bool submitted,
    bool unlocked
  ) = _UnlockFormState;

  factory UnlockFormState.empty() => const UnlockFormState('', '', false, false);

  bool get isFormValid => masterPassword != '';
}

@freezed
class UnlockFormEvent with _$UnlockFormEvent {
  const factory UnlockFormEvent.masterPasswordChanged(String masterPassword) = MasterPasswordChangedEvent;
  const factory UnlockFormEvent.formSubmitted() = FormSubmittedEvent;
}

class UnlockFormBloc extends Bloc<UnlockFormEvent, UnlockFormState> {
  UnlockFormBloc() : super(UnlockFormState.empty()) {
    on<UnlockFormEvent>((event, emit) async {
      await event.map(
        masterPasswordChanged: (event) => _onMasterPasswordChanged(event, emit),
        formSubmitted: (event) => _onFormSubmitted(event, emit)
      );
    });
  }

  Future<void> _onMasterPasswordChanged(MasterPasswordChangedEvent event, Emitter<UnlockFormState> emit) async {
    emit(state.copyWith(
      masterPassword: event.masterPassword
    ));
  }

  Future<void> _onFormSubmitted(FormSubmittedEvent event, Emitter<UnlockFormState> emit) async {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Derive masterKey from masterPassword

    await Future.delayed(const Duration( seconds: 2 ));
    const masterKey = 'masterKey';

    emit(state.copyWith(
      unlocked: true,
      masterKey: masterKey
    ));
  }
}