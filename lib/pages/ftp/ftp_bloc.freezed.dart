// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ftp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FtpState {
  String get host => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FtpStateCopyWith<FtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FtpStateCopyWith<$Res> {
  factory $FtpStateCopyWith(FtpState value, $Res Function(FtpState) then) =
      _$FtpStateCopyWithImpl<$Res, FtpState>;
  @useResult
  $Res call(
      {String host, String user, String password, String path, bool submitted});
}

/// @nodoc
class _$FtpStateCopyWithImpl<$Res, $Val extends FtpState>
    implements $FtpStateCopyWith<$Res> {
  _$FtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? user = null,
    Object? password = null,
    Object? path = null,
    Object? submitted = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FtpStateCopyWith<$Res> implements $FtpStateCopyWith<$Res> {
  factory _$$_FtpStateCopyWith(
          _$_FtpState value, $Res Function(_$_FtpState) then) =
      __$$_FtpStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String host, String user, String password, String path, bool submitted});
}

/// @nodoc
class __$$_FtpStateCopyWithImpl<$Res>
    extends _$FtpStateCopyWithImpl<$Res, _$_FtpState>
    implements _$$_FtpStateCopyWith<$Res> {
  __$$_FtpStateCopyWithImpl(
      _$_FtpState _value, $Res Function(_$_FtpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? user = null,
    Object? password = null,
    Object? path = null,
    Object? submitted = null,
  }) {
    return _then(_$_FtpState(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FtpState extends _FtpState {
  const _$_FtpState(
      {required this.host,
      required this.user,
      required this.password,
      required this.path,
      required this.submitted})
      : super._();

  @override
  final String host;
  @override
  final String user;
  @override
  final String password;
  @override
  final String path;
  @override
  final bool submitted;

  @override
  String toString() {
    return 'FtpState(host: $host, user: $user, password: $password, path: $path, submitted: $submitted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FtpState &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, host, user, password, path, submitted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FtpStateCopyWith<_$_FtpState> get copyWith =>
      __$$_FtpStateCopyWithImpl<_$_FtpState>(this, _$identity);
}

abstract class _FtpState extends FtpState {
  const factory _FtpState(
      {required final String host,
      required final String user,
      required final String password,
      required final String path,
      required final bool submitted}) = _$_FtpState;
  const _FtpState._() : super._();

  @override
  String get host;
  @override
  String get user;
  @override
  String get password;
  @override
  String get path;
  @override
  bool get submitted;
  @override
  @JsonKey(ignore: true)
  _$$_FtpStateCopyWith<_$_FtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FtpEventCopyWith<$Res> {
  factory $FtpEventCopyWith(FtpEvent value, $Res Function(FtpEvent) then) =
      _$FtpEventCopyWithImpl<$Res, FtpEvent>;
}

/// @nodoc
class _$FtpEventCopyWithImpl<$Res, $Val extends FtpEvent>
    implements $FtpEventCopyWith<$Res> {
  _$FtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HostChangedEventCopyWith<$Res> {
  factory _$$HostChangedEventCopyWith(
          _$HostChangedEvent value, $Res Function(_$HostChangedEvent) then) =
      __$$HostChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String host});
}

/// @nodoc
class __$$HostChangedEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$HostChangedEvent>
    implements _$$HostChangedEventCopyWith<$Res> {
  __$$HostChangedEventCopyWithImpl(
      _$HostChangedEvent _value, $Res Function(_$HostChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
  }) {
    return _then(_$HostChangedEvent(
      null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HostChangedEvent implements HostChangedEvent {
  const _$HostChangedEvent(this.host);

  @override
  final String host;

  @override
  String toString() {
    return 'FtpEvent.hostChanged(host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostChangedEvent &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode => Object.hash(runtimeType, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostChangedEventCopyWith<_$HostChangedEvent> get copyWith =>
      __$$HostChangedEventCopyWithImpl<_$HostChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return hostChanged(host);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return hostChanged?.call(host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (hostChanged != null) {
      return hostChanged(host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return hostChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return hostChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (hostChanged != null) {
      return hostChanged(this);
    }
    return orElse();
  }
}

abstract class HostChangedEvent implements FtpEvent {
  const factory HostChangedEvent(final String host) = _$HostChangedEvent;

  String get host;
  @JsonKey(ignore: true)
  _$$HostChangedEventCopyWith<_$HostChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserChangedEventCopyWith<$Res> {
  factory _$$UserChangedEventCopyWith(
          _$UserChangedEvent value, $Res Function(_$UserChangedEvent) then) =
      __$$UserChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String user});
}

/// @nodoc
class __$$UserChangedEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$UserChangedEvent>
    implements _$$UserChangedEventCopyWith<$Res> {
  __$$UserChangedEventCopyWithImpl(
      _$UserChangedEvent _value, $Res Function(_$UserChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserChangedEvent(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserChangedEvent implements UserChangedEvent {
  const _$UserChangedEvent(this.user);

  @override
  final String user;

  @override
  String toString() {
    return 'FtpEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserChangedEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserChangedEventCopyWith<_$UserChangedEvent> get copyWith =>
      __$$UserChangedEventCopyWithImpl<_$UserChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class UserChangedEvent implements FtpEvent {
  const factory UserChangedEvent(final String user) = _$UserChangedEvent;

  String get user;
  @JsonKey(ignore: true)
  _$$UserChangedEventCopyWith<_$UserChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedEventCopyWith<$Res> {
  factory _$$PasswordChangedEventCopyWith(_$PasswordChangedEvent value,
          $Res Function(_$PasswordChangedEvent) then) =
      __$$PasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$PasswordChangedEvent>
    implements _$$PasswordChangedEventCopyWith<$Res> {
  __$$PasswordChangedEventCopyWithImpl(_$PasswordChangedEvent _value,
      $Res Function(_$PasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedEvent(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedEvent implements PasswordChangedEvent {
  const _$PasswordChangedEvent(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'FtpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      __$$PasswordChangedEventCopyWithImpl<_$PasswordChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEvent implements FtpEvent {
  const factory PasswordChangedEvent(final String password) =
      _$PasswordChangedEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PathChangedEventCopyWith<$Res> {
  factory _$$PathChangedEventCopyWith(
          _$PathChangedEvent value, $Res Function(_$PathChangedEvent) then) =
      __$$PathChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PathChangedEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$PathChangedEvent>
    implements _$$PathChangedEventCopyWith<$Res> {
  __$$PathChangedEventCopyWithImpl(
      _$PathChangedEvent _value, $Res Function(_$PathChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PathChangedEvent(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PathChangedEvent implements PathChangedEvent {
  const _$PathChangedEvent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'FtpEvent.pathChanged(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathChangedEvent &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PathChangedEventCopyWith<_$PathChangedEvent> get copyWith =>
      __$$PathChangedEventCopyWithImpl<_$PathChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return pathChanged(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return pathChanged?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (pathChanged != null) {
      return pathChanged(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return pathChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return pathChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (pathChanged != null) {
      return pathChanged(this);
    }
    return orElse();
  }
}

abstract class PathChangedEvent implements FtpEvent {
  const factory PathChangedEvent(final String path) = _$PathChangedEvent;

  String get path;
  @JsonKey(ignore: true)
  _$$PathChangedEventCopyWith<_$PathChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittedEventCopyWith<$Res> {
  factory _$$SubmittedEventCopyWith(
          _$SubmittedEvent value, $Res Function(_$SubmittedEvent) then) =
      __$$SubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$SubmittedEvent>
    implements _$$SubmittedEventCopyWith<$Res> {
  __$$SubmittedEventCopyWithImpl(
      _$SubmittedEvent _value, $Res Function(_$SubmittedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedEvent implements SubmittedEvent {
  const _$SubmittedEvent();

  @override
  String toString() {
    return 'FtpEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class SubmittedEvent implements FtpEvent {
  const factory SubmittedEvent() = _$SubmittedEvent;
}

/// @nodoc
abstract class _$$ErroredEventCopyWith<$Res> {
  factory _$$ErroredEventCopyWith(
          _$ErroredEvent value, $Res Function(_$ErroredEvent) then) =
      __$$ErroredEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErroredEventCopyWithImpl<$Res>
    extends _$FtpEventCopyWithImpl<$Res, _$ErroredEvent>
    implements _$$ErroredEventCopyWith<$Res> {
  __$$ErroredEventCopyWithImpl(
      _$ErroredEvent _value, $Res Function(_$ErroredEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErroredEvent implements ErroredEvent {
  const _$ErroredEvent();

  @override
  String toString() {
    return 'FtpEvent.errored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErroredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String host) hostChanged,
    required TResult Function(String user) userChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String path) pathChanged,
    required TResult Function() submitted,
    required TResult Function() errored,
  }) {
    return errored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String host)? hostChanged,
    TResult? Function(String user)? userChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String path)? pathChanged,
    TResult? Function()? submitted,
    TResult? Function()? errored,
  }) {
    return errored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String host)? hostChanged,
    TResult Function(String user)? userChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String path)? pathChanged,
    TResult Function()? submitted,
    TResult Function()? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HostChangedEvent value) hostChanged,
    required TResult Function(UserChangedEvent value) userChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(PathChangedEvent value) pathChanged,
    required TResult Function(SubmittedEvent value) submitted,
    required TResult Function(ErroredEvent value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HostChangedEvent value)? hostChanged,
    TResult? Function(UserChangedEvent value)? userChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(PathChangedEvent value)? pathChanged,
    TResult? Function(SubmittedEvent value)? submitted,
    TResult? Function(ErroredEvent value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HostChangedEvent value)? hostChanged,
    TResult Function(UserChangedEvent value)? userChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(PathChangedEvent value)? pathChanged,
    TResult Function(SubmittedEvent value)? submitted,
    TResult Function(ErroredEvent value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class ErroredEvent implements FtpEvent {
  const factory ErroredEvent() = _$ErroredEvent;
}
