import 'package:bloc/bloc.dart';

import 'package:polypass/data/app_settings.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_bloc.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({required AppSettings settings}) = _SettingsState;
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.setSaveKeyInMemory(bool setting) =
      SetSaveKeyInMemoryEvent;
  const factory SettingsEvent.settingsSaved() = SettingsSavedEvent;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({required AppSettings settings})
      : super(SettingsState(settings: settings)) {
    on<SettingsEvent>((event, emit) {
      event.map(
          setSaveKeyInMemory: (event) => _onSetSaveKeyInMemory(event, emit),
          settingsSaved: (event) => _onSettingsSaved(event, emit));
    });
  }

  void _onSetSaveKeyInMemory(
      SetSaveKeyInMemoryEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
        settings: state.settings.copyWith(
            defaultVaultSettings: state.settings.defaultVaultSettings
                .copyWith(saveKeyInMemory: event.setting))));
  }

  void _onSettingsSaved(SettingsSavedEvent event, Emitter<SettingsState> emit) {
    state.settings.save();
  }
}
