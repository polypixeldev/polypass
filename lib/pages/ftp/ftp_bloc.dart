import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'ftp_bloc.freezed.dart';

@freezed
class FtpState with _$FtpState {
  const FtpState._();
  const factory FtpState(
      {required String host,
      required String user,
      required String password,
      required String path,
      required bool submitted}) = _FtpState;

  factory FtpState.empty() => const FtpState(
      host: '', user: '', password: '', path: '', submitted: false);

  bool get isFormValid =>
      host.isNotEmpty &&
      user.isNotEmpty &&
      password.isNotEmpty &&
      path.isNotEmpty;
}

@freezed
class FtpEvent with _$FtpEvent {
  const factory FtpEvent.hostChanged(String host) = HostChangedEvent;
  const factory FtpEvent.userChanged(String user) = UserChangedEvent;
  const factory FtpEvent.passwordChanged(String password) =
      PasswordChangedEvent;
  const factory FtpEvent.pathChanged(String path) = PathChangedEvent;
  const factory FtpEvent.submitted() = SubmittedEvent;
  const factory FtpEvent.errored() = ErroredEvent;
}

class FtpBloc extends Bloc<FtpEvent, FtpState> {
  FtpBloc({String? host, String? user, String? password, String? path})
      : super(FtpState(
            host: host ?? '',
            user: user ?? '',
            password: password ?? '',
            path: path ?? '',
            submitted: false)) {
    on<FtpEvent>((event, emit) {
      event.map(
          hostChanged: (event) => _onHostChanged(event, emit),
          userChanged: (event) => _onUserChanged(event, emit),
          passwordChanged: (event) => _onPasswordChanged(event, emit),
          pathChanged: (event) => _onPathChanged(event, emit),
          submitted: (event) => _onSubmitted(event, emit),
          errored: (event) => _onErrored(event, emit));
    });
  }

  void _onHostChanged(HostChangedEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(host: event.host));
  }

  void _onUserChanged(UserChangedEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(user: event.user));
  }

  void _onPasswordChanged(PasswordChangedEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onPathChanged(PathChangedEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(path: event.path));
  }

  void _onSubmitted(SubmittedEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(submitted: true));
  }

  void _onErrored(ErroredEvent event, Emitter<FtpState> emit) {
    emit(state.copyWith(submitted: false));
  }
}
