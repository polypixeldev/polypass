import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart' show BuildContext;

import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
part 'locked_bloc.freezed.dart';

@freezed
class LockedFormState with _$LockedFormState {
  const LockedFormState._();
  const factory LockedFormState(
      {
      // Raw master password that user enters
      required String masterPassword,
      // Derived master key from master password
      required Key? masterKey,
      required bool submitted,
      required bool success,
      required int fails}) = _UnlockFormState;

  factory LockedFormState.empty() => const LockedFormState(
      masterPassword: '',
      masterKey: null,
      submitted: false,
      success: false,
      fails: 0);

  bool get isFormValid => masterPassword != '';
}

@freezed
class LockedFormEvent with _$LockedFormEvent {
  const factory LockedFormEvent.masterPasswordChanged(String masterPassword) =
      MasterPasswordChangedEvent;
  const factory LockedFormEvent.formSubmitted(BuildContext context) =
      FormSubmittedEvent;
}

class LockedFormBloc extends Bloc<LockedFormEvent, LockedFormState> {
  LockedFormBloc({required this.read}) : super(LockedFormState.empty()) {
    on<LockedFormEvent>((event, emit) {
      event.map(
          masterPasswordChanged: (event) =>
              _onMasterPasswordChanged(event, emit),
          formSubmitted: (event) => _onFormSubmitted(event, emit));
    });
  }

  final Locator read;

  void _onMasterPasswordChanged(
      MasterPasswordChangedEvent event, Emitter<LockedFormState> emit) {
    emit(state.copyWith(masterPassword: event.masterPassword));
  }

  void _onFormSubmitted(
      FormSubmittedEvent event, Emitter<LockedFormState> emit) {
    emit(state.copyWith(submitted: true));

    final vaultBloc = read<VaultBloc>();

    final lockedState = vaultBloc.state
        .maybeMap(locked: (state) => state, orElse: () => throw Error());

    final derivedKey = EncryptedData.deriveDerivedKey(
        state.masterPassword,
        Uint8List.fromList(lockedState.vault.header.salt),
        lockedState.vault.header.settings);

    if (lockedState.vault.header
        .testMagic(derivedKey, lockedState.vault.contents.iv)) {
      emit(state.copyWith(success: true));
      vaultBloc.add(VaultEvent.unlocked(
          lockedState.vault.header
              .decryptMasterKey(derivedKey, lockedState.vault.contents.iv),
          event.context));
    } else {
      emit(state.copyWith(
          masterKey: null, submitted: false, fails: state.fails + 1));
    }

    emit(state.copyWith(masterKey: derivedKey));
  }
}
