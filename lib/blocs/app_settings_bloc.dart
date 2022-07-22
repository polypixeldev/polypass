import 'package:bloc/bloc.dart';

import 'package:polypass/data/app_settings.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_settings_bloc.freezed.dart';

@freezed
class AppSettingsState with _$AppSettingsState {
  const factory AppSettingsState({required AppSettings settings}) =
      _AppSettingsState;

  factory AppSettingsState.empty() =>
      AppSettingsState(settings: AppSettings.empty());
}

@freezed
class AppSettingsEvent with _$AppSettingsEvent {
  const factory AppSettingsEvent.settingsUpdated(AppSettings newSettings) =
      SettingsUpdatedEvent;
}

class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc(AppSettings initialSettings)
      : super(AppSettingsState(settings: initialSettings)) {
    on<AppSettingsEvent>((event, emit) {
      event.map(settingsUpdated: (event) => _onSettingsUpdated(event, emit));
    });
  }

  void _onSettingsUpdated(
      SettingsUpdatedEvent event, Emitter<AppSettingsState> emit) {
    emit(AppSettingsState(settings: event.newSettings));
  }
}
