import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/blocs/vault_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polypass/data/vault_file.dart';
part 'locked_bloc.freezed.dart';

@freezed
class UnlockFormState with _$UnlockFormState {
  const UnlockFormState._();
  const factory UnlockFormState(
      {
      // Raw master password that user enters
      required String masterPassword,
      // Derived master key from master password
      required Key? masterKey,
      required bool submitted,
      required bool success,
      required int fails}) = _UnlockFormState;

  factory UnlockFormState.empty() => const UnlockFormState(
      masterPassword: '',
      masterKey: null,
      submitted: false,
      success: false,
      fails: 0);

  bool get isFormValid => masterPassword != '';
}

@freezed
class UnlockFormEvent with _$UnlockFormEvent {
  const factory UnlockFormEvent.masterPasswordChanged(String masterPassword) =
      MasterPasswordChangedEvent;
  const factory UnlockFormEvent.formSubmitted() = FormSubmittedEvent;
}

class UnlockFormBloc extends Bloc<UnlockFormEvent, UnlockFormState> {
  UnlockFormBloc({required this.vaultBloc}) : super(UnlockFormState.empty()) {
    on<UnlockFormEvent>((event, emit) {
      event.map(
          masterPasswordChanged: (event) =>
              _onMasterPasswordChanged(event, emit),
          formSubmitted: (event) => _onFormSubmitted(event, emit));
    });
  }

  final VaultBloc vaultBloc;

  void _onMasterPasswordChanged(
      MasterPasswordChangedEvent event, Emitter<UnlockFormState> emit) {
    emit(state.copyWith(masterPassword: event.masterPassword));
  }

  void _onFormSubmitted(
      FormSubmittedEvent event, Emitter<UnlockFormState> emit) {
    emit(state.copyWith(submitted: true));

    final lockedState = vaultBloc.state
        .maybeMap(locked: (state) => state, orElse: () => throw Error());

    final derivedKey = EncryptedData.deriveDerivedKey(
        state.masterPassword,
        Uint8List.fromList(lockedState.vault.header.salt),
        lockedState.vault.header.settings);

    if (lockedState.vault.header
        .testMagic(derivedKey, lockedState.vault.contents.iv)) {
      emit(state.copyWith(success: true));
      vaultBloc.add(VaultEvent.unlocked(lockedState.vault.header
          .decryptMasterKey(derivedKey, lockedState.vault.contents.iv)));
    } else {
      emit(state.copyWith(
          masterKey: null, submitted: false, fails: state.fails + 1));
    }

    emit(state.copyWith(masterKey: derivedKey));
  }
}
