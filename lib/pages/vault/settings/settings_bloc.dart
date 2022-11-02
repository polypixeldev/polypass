import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Key;
import 'package:encrypt/encrypt.dart';

import 'package:polypass/components/master_password_dialog/master_password_dialog.dart';

import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/blocs/vault_bloc/vault_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_bloc.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState(
      {required VaultSettings settings,
      required String newMasterPassword,
      required String confirmNewMasterPassword}) = _SettingsState;

  bool get isFormValid => newMasterPassword == confirmNewMasterPassword;
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setSaveKeyInMemory(bool setting) =
      SetSaveKeyInMemoryEvent;
  const factory SettingsEvent.newMasterPasswordChanged(
      String newMasterPassword) = NewMasterPasswordChangedEvent;
  const factory SettingsEvent.confirmNewMasterPasswordChanged(
      String confirmNewMasterPassword) = ConfirmNewMasterPasswordChangedEvent;
  const factory SettingsEvent.setKDFIterations(int setting) =
      SetKDFIterationsEvent;
  const factory SettingsEvent.setKDFThreads(int setting) = SetKDFThreadsEvent;
  const factory SettingsEvent.setKDFMemory(int setting) = SetKDFMemoryEvent;
  const factory SettingsEvent.setClipboardClearSeconds(int setting) =
      SetClipboardClearSecondsEvent;
  const factory SettingsEvent.setVaultAutoLockSeconds(int setting) =
      SetVaultAutoLockSecondsEvent;
  const factory SettingsEvent.settingsSaved(BuildContext context) =
      SettingsSavedEvent;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({required this.vaultBloc})
      : super(SettingsState(
            settings: vaultBloc.state
                .maybeMap(
                    unlocked: (state) => state, orElse: () => throw Error())
                .vault
                .header
                .settings,
            newMasterPassword: '',
            confirmNewMasterPassword: '')) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
          setSaveKeyInMemory: (event) => _onSetSaveKeyInMemory(event, emit),
          newMasterPasswordChanged: (event) =>
              _onNewMasterPasswordChanged(event, emit),
          confirmNewMasterPasswordChanged: (event) =>
              _onConfirmNewMasterPasswordChanged(event, emit),
          setKDFIterations: (event) => _onSetKDFIterations(event, emit),
          setKDFThreads: (event) => _onSetKDFThreads(event, emit),
          setKDFMemory: (event) => _onSetKDFMemory(event, emit),
          setClipboardClearSeconds: (event) =>
              _onSetClipboardClearSeconds(event, emit),
          setVaultAutoLockSeconds: (value) =>
              _onSetVaultAutoLockSeconds(value, emit),
          settingsSaved: (event) => _onSettingsSaved(event, emit));
    });
  }

  final VaultBloc vaultBloc;

  Future<void> _onSetSaveKeyInMemory(
      SetSaveKeyInMemoryEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings: state.settings.copyWith(saveKeyInMemory: event.setting)));
  }

  Future<void> _onNewMasterPasswordChanged(
      NewMasterPasswordChangedEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(newMasterPassword: event.newMasterPassword));
  }

  Future<void> _onConfirmNewMasterPasswordChanged(
      ConfirmNewMasterPasswordChangedEvent event,
      Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        confirmNewMasterPassword: event.confirmNewMasterPassword));
  }

  Future<void> _onSetKDFIterations(
      SetKDFIterationsEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings: state.settings.copyWith(iterations: event.setting)));
  }

  Future<void> _onSetKDFThreads(
      SetKDFThreadsEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings: state.settings.copyWith(threads: event.setting)));
  }

  Future<void> _onSetKDFMemory(
      SetKDFMemoryEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings: state.settings.copyWith(memory: event.setting)));
  }

  Future<void> _onSetClipboardClearSeconds(
      SetClipboardClearSecondsEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings:
            state.settings.copyWith(clipboardClearSeconds: event.setting)));
  }

  Future<void> _onSetVaultAutoLockSeconds(
      SetVaultAutoLockSecondsEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
        settings:
            state.settings.copyWith(vaultAutoLockSeconds: event.setting)));
  }

  Future<void> _onSettingsSaved(
      SettingsSavedEvent event, Emitter<SettingsState> emit) async {
    final unlockedState = vaultBloc.state
        .maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    var masterKeys = await getMasterKey(event.context, forceDialog: true);
    final masterKey = masterKeys.masterKey;
    final masterPassword = masterKeys.masterPassword;

    if (masterKey == null || masterPassword == null) {
      return;
    }

    final encSettingsChanged = state.newMasterPassword != '' ||
        state.settings.iterations !=
            unlockedState.vault.header.settings.iterations ||
        state.settings.threads != unlockedState.vault.header.settings.threads ||
        state.settings.memory != unlockedState.vault.header.settings.memory;

    MagicValue magic;
    String key;

    if (encSettingsChanged) {
      final encrypter = Encrypter(AES(EncryptedData.deriveDerivedKey(
          state.newMasterPassword == ''
              ? masterPassword
              : state.newMasterPassword,
          Uint8List.fromList(unlockedState.vault.header.salt),
          state.settings)));

      magic = MagicValue(encrypter
          .encrypt(MagicValue.decryptedValue.value,
              iv: unlockedState.vault.contents.iv)
          .base64);

      key = encrypter
          .encrypt(masterKey.base64, iv: unlockedState.vault.contents.iv)
          .base64;
    } else {
      magic = MagicValue(unlockedState.vault.header.magic.value);
      key = unlockedState.vault.header.key;
    }

    vaultBloc.add(VaultEvent.updated(
        unlockedState.vault.copyWith(
            header: unlockedState.vault.header
                .copyWith(settings: state.settings, magic: magic, key: key)),
        masterKey));

    vaultBloc.add(VaultEvent.masterKeyChanged(
        state.settings.saveKeyInMemory ? masterKey : null));
  }
}
