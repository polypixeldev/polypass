import 'package:bloc/bloc.dart';

import 'package:polypass/blocs/app_settings_bloc.dart';
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
  const factory SettingsEvent.setKDFIterations(int setting) =
      SetKDFIterationsEvent;
  const factory SettingsEvent.setKDFThreads(int setting) = SetKDFThreadsEvent;
  const factory SettingsEvent.setKDFMemory(int setting) = SetKDFMemoryEvent;
  const factory SettingsEvent.settingsSaved() = SettingsSavedEvent;
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({required this.settingsBloc})
      : super(SettingsState(settings: settingsBloc.state.settings)) {
    on<SettingsEvent>((event, emit) {
      event.map(
          setSaveKeyInMemory: (event) => _onSetSaveKeyInMemory(event, emit),
          setKDFIterations: (event) => _onSetKDFIterations(event, emit),
          setKDFThreads: (event) => _onSetKDFThreads(event, emit),
          setKDFMemory: (event) => _onSetKDFMemory(event, emit),
          settingsSaved: (event) => _onSettingsSaved(event, emit));
    });
  }

  final AppSettingsBloc settingsBloc;

  void _onSetSaveKeyInMemory(
      SetSaveKeyInMemoryEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
        settings: state.settings.copyWith(
            defaultVaultSettings: state.settings.defaultVaultSettings
                .copyWith(saveKeyInMemory: event.setting))));
  }

  void _onSetKDFIterations(
      SetKDFIterationsEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
        settings: state.settings.copyWith(
            defaultVaultSettings: state.settings.defaultVaultSettings
                .copyWith(iterations: event.setting))));
  }

  void _onSetKDFThreads(SetKDFThreadsEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
        settings: state.settings.copyWith(
            defaultVaultSettings: state.settings.defaultVaultSettings
                .copyWith(threads: event.setting))));
  }

  void _onSetKDFMemory(SetKDFMemoryEvent event, Emitter<SettingsState> emit) {
    emit(state.copyWith(
        settings: state.settings.copyWith(
            defaultVaultSettings: state.settings.defaultVaultSettings
                .copyWith(memory: event.setting))));
  }

  void _onSettingsSaved(SettingsSavedEvent event, Emitter<SettingsState> emit) {
    settingsBloc.add(AppSettingsEvent.settingsUpdated(state.settings));
    state.settings.save();
  }
}
