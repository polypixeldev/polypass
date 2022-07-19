import 'dart:typed_data';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/components/master_password_dialog.dart';

import 'package:polypass/data/vault_file.dart';
import 'package:polypass/blocs/vault_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_bloc.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();

  const factory SettingsState({
    required VaultSettings settings,
    required String newMasterPassword,
    required String confirmNewMasterPassword
  }) = _SettingsState;

  bool get isFormValid => newMasterPassword == confirmNewMasterPassword;
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setSaveKeyInMemory(bool setting) = SetSaveKeyInMemoryEvent;
  const factory SettingsEvent.newMasterPasswordChanged(String newMasterPassword) = NewMasterPasswordChangedEvent;
  const factory SettingsEvent.confirmNewMasterPasswordChanged(String confirmNewMasterPassword) = ConfirmNewMasterPasswordChangedEvent;
  const factory SettingsEvent.settingsSaved(BuildContext context) = SettingsSavedEvent;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({ required this.vaultBloc }) : 
    super(
      SettingsState(
        settings: vaultBloc.state.maybeMap(
          unlocked: (state) => state,
          orElse: () => throw Error()
        ).vault.header.settings,
        newMasterPassword: '',
        confirmNewMasterPassword: ''
      )
    ) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        setSaveKeyInMemory: (event) => _onSetSaveKeyInMemory(event, emit),
        newMasterPasswordChanged: (event) => _onNewMasterPasswordChanged(event, emit),
        confirmNewMasterPasswordChanged: (event) => _onConfirmNewMasterPasswordChanged(event, emit),
        settingsSaved: (event) => _onSettingsSaved(event, emit)
      );
    });
  }

  final VaultBloc vaultBloc;

  Future<void> _onSetSaveKeyInMemory(SetSaveKeyInMemoryEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
      settings: state.settings.copyWith(
        saveKeyInMemory: event.setting
      )
    ));
  }

  Future<void> _onNewMasterPasswordChanged(NewMasterPasswordChangedEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
      newMasterPassword: event.newMasterPassword
    ));
  }

  Future<void> _onConfirmNewMasterPasswordChanged(ConfirmNewMasterPasswordChangedEvent event, Emitter<SettingsState> emit) async {
    emit(state.copyWith(
      confirmNewMasterPassword: event.confirmNewMasterPassword
    ));
  }

  Future<void> _onSettingsSaved(SettingsSavedEvent event, Emitter<SettingsState> emit) async {
    final unlockedState = vaultBloc.state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    var masterKeys = await getMasterKey(event.context, forceDialog: true);
    final masterKey = masterKeys.masterKey;

    if (masterKey == null) {
      return;
    }

    final encrypter = Encrypter(AES(EncryptedData.deriveKey(state.newMasterPassword, Uint8List.fromList(unlockedState.vault.header.salt))));

    vaultBloc.add(VaultEvent.updated(unlockedState.vault.copyWith(
        header: unlockedState.vault.header.copyWith(
          settings: state.settings,
          magic: MagicValue(state.newMasterPassword == '' ? unlockedState.vault.header.magic.value : encrypter.encrypt(MagicValue.decryptedValue.value, iv: unlockedState.vault.contents.iv).base64),
          key: state.newMasterPassword == '' ? unlockedState.vault.header.key : encrypter.encrypt(masterKey.base64, iv: unlockedState.vault.contents.iv).base64
        )
    ), masterKey));

    vaultBloc.add(VaultEvent.masterKeyChanged(state.settings.saveKeyInMemory ? masterKey : null));
  }
}
