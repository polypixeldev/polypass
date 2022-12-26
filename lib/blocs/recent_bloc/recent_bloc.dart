import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'recent_bloc.freezed.dart';

@freezed
class RecentState with _$RecentState {
  const factory RecentState({
    VaultUrl? recentUrl,
  }) = _RecentState;
}

@freezed
class RecentEvent with _$RecentEvent {
  const factory RecentEvent.recentUrlChanged(VaultUrl? recentUrl) =
      RecentUrlChangedEvent;
}

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  RecentBloc() : super(const RecentState()) {
    on<RecentEvent>((event, emit) {
      event.map(recentUrlChanged: (event) => _onRecentUrlChanged(event, emit));
    });
  }

  void _onRecentUrlChanged(
      RecentUrlChangedEvent event, Emitter<RecentState> emit) {
    emit(state.copyWith(recentUrl: event.recentUrl));
  }
}
