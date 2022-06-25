import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_file.dart';
import 'package:polypass/blocs/vault_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_bloc.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required VaultSettings settings
  }) = _SettingsState;
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setSaveKeyInMemory(bool setting) = SetSaveKeyInMemoryEvent;
  const factory SettingsEvent.settingsSaved() = SettingsSavedEvent;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({ required this.vaultBloc }) : 
    super(
      SettingsState(
        settings: vaultBloc.state.maybeMap(
          unlocked: (state) => state,
          orElse: () => throw Error()
        ).vault.header.settings
      )
    ) {
    on<SettingsEvent>((event, emit) {
      event.map(
        setSaveKeyInMemory: (event) => _onSetSaveKeyInMemory(event, emit),
        settingsSaved: (event) => _onSettingsSaved(event, emit)
      );
    });
  }

  final VaultBloc vaultBloc;

  void _onSetSaveKeyInMemory(SetSaveKeyInMemoryEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
      settings: state.settings.copyWith(
        saveKeyInMemory: event.setting
      )
    ));
  }

  void _onSettingsSaved(SettingsSavedEvent event, Emitter<SettingsState> emit) {
    final unlockedState = vaultBloc.state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    vaultBloc.add(VaultEvent.updated(unlockedState.vault.copyWith(
        header: unlockedState.vault.header.copyWith(
          settings: state.settings
        )
    ), unlockedState.masterKey!));
  }
}
