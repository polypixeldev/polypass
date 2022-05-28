import 'package:bloc/bloc.dart';
import 'package:hash/hash.dart';
import 'dart:convert';

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
    bool derived
  ) = _UnlockFormState;

  factory UnlockFormState.empty() => const UnlockFormState('', '', false, false);

  bool get isFormValid => masterPassword != '';
}

@freezed
class UnlockFormEvent with _$UnlockFormEvent {
  const factory UnlockFormEvent.masterPasswordChanged(String masterPassword) = MasterPasswordChangedEvent;
  const factory UnlockFormEvent.formSubmitted() = FormSubmittedEvent;
  const factory UnlockFormEvent.failed(int? tries) = FailedEvent;
}

class UnlockFormBloc extends Bloc<UnlockFormEvent, UnlockFormState> {
  UnlockFormBloc() : super(UnlockFormState.empty()) {
    on<UnlockFormEvent>((event, emit) async {
      print(event);
      await event.map(
        masterPasswordChanged: (event) => _onMasterPasswordChanged(event, emit),
        formSubmitted: (event) => _onFormSubmitted(event, emit),
        failed: (event) => _onFailed(event, emit)
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

    final masterKey = SHA256().update(utf8.encode(state.masterPassword)).digest();

    emit(state.copyWith(
      derived: true,
      masterKey: base64Encode(masterKey)
    ));
  }

  Future<void> _onFailed(FailedEvent event, Emitter<UnlockFormState> emit) async {
    emit(state.copyWith(
      masterKey: '',
      submitted: false,
      derived: false
    ));
  }
}