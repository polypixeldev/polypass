// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'master_password_dialog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MasterPasswordDialogState {
  String get masterPassword => throw _privateConstructorUsedError;
  Key? get masterKey => throw _privateConstructorUsedError;
  Key? get derivedKey => throw _privateConstructorUsedError;
  MasterPasswordDialogStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MasterPasswordDialogStateCopyWith<MasterPasswordDialogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterPasswordDialogStateCopyWith<$Res> {
  factory $MasterPasswordDialogStateCopyWith(MasterPasswordDialogState value,
          $Res Function(MasterPasswordDialogState) then) =
      _$MasterPasswordDialogStateCopyWithImpl<$Res>;
  $Res call(
      {String masterPassword,
      Key? masterKey,
      Key? derivedKey,
      MasterPasswordDialogStatus status});
}

/// @nodoc
class _$MasterPasswordDialogStateCopyWithImpl<$Res>
    implements $MasterPasswordDialogStateCopyWith<$Res> {
  _$MasterPasswordDialogStateCopyWithImpl(this._value, this._then);

  final MasterPasswordDialogState _value;
  // ignore: unused_field
  final $Res Function(MasterPasswordDialogState) _then;

  @override
  $Res call({
    Object? masterPassword = freezed,
    Object? masterKey = freezed,
    Object? derivedKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      masterPassword: masterPassword == freezed
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      derivedKey: derivedKey == freezed
          ? _value.derivedKey
          : derivedKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MasterPasswordDialogStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_MasterPasswordDialogStateCopyWith<$Res>
    implements $MasterPasswordDialogStateCopyWith<$Res> {
  factory _$$_MasterPasswordDialogStateCopyWith(
          _$_MasterPasswordDialogState value,
          $Res Function(_$_MasterPasswordDialogState) then) =
      __$$_MasterPasswordDialogStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String masterPassword,
      Key? masterKey,
      Key? derivedKey,
      MasterPasswordDialogStatus status});
}

/// @nodoc
class __$$_MasterPasswordDialogStateCopyWithImpl<$Res>
    extends _$MasterPasswordDialogStateCopyWithImpl<$Res>
    implements _$$_MasterPasswordDialogStateCopyWith<$Res> {
  __$$_MasterPasswordDialogStateCopyWithImpl(
      _$_MasterPasswordDialogState _value,
      $Res Function(_$_MasterPasswordDialogState) _then)
      : super(_value, (v) => _then(v as _$_MasterPasswordDialogState));

  @override
  _$_MasterPasswordDialogState get _value =>
      super._value as _$_MasterPasswordDialogState;

  @override
  $Res call({
    Object? masterPassword = freezed,
    Object? masterKey = freezed,
    Object? derivedKey = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_MasterPasswordDialogState(
      masterPassword: masterPassword == freezed
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      derivedKey: derivedKey == freezed
          ? _value.derivedKey
          : derivedKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MasterPasswordDialogStatus,
    ));
  }
}

/// @nodoc

class _$_MasterPasswordDialogState extends _MasterPasswordDialogState {
  const _$_MasterPasswordDialogState(
      {required this.masterPassword,
      required this.masterKey,
      required this.derivedKey,
      required this.status})
      : super._();

  @override
  final String masterPassword;
  @override
  final Key? masterKey;
  @override
  final Key? derivedKey;
  @override
  final MasterPasswordDialogStatus status;

  @override
  String toString() {
    return 'MasterPasswordDialogState(masterPassword: $masterPassword, masterKey: $masterKey, derivedKey: $derivedKey, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MasterPasswordDialogState &&
            const DeepCollectionEquality()
                .equals(other.masterPassword, masterPassword) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality()
                .equals(other.derivedKey, derivedKey) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterPassword),
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(derivedKey),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_MasterPasswordDialogStateCopyWith<_$_MasterPasswordDialogState>
      get copyWith => __$$_MasterPasswordDialogStateCopyWithImpl<
          _$_MasterPasswordDialogState>(this, _$identity);
}

abstract class _MasterPasswordDialogState extends MasterPasswordDialogState {
  const factory _MasterPasswordDialogState(
          {required final String masterPassword,
          required final Key? masterKey,
          required final Key? derivedKey,
          required final MasterPasswordDialogStatus status}) =
      _$_MasterPasswordDialogState;
  const _MasterPasswordDialogState._() : super._();

  @override
  String get masterPassword;
  @override
  Key? get masterKey;
  @override
  Key? get derivedKey;
  @override
  MasterPasswordDialogStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_MasterPasswordDialogStateCopyWith<_$_MasterPasswordDialogState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MasterPasswordDialogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() masterPasswordSubmitted,
    required TResult Function() canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(MasterPasswordSubmittedEvent value)
        masterPasswordSubmitted,
    required TResult Function(CanceledEvent value) canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MasterPasswordDialogEventCopyWith<$Res> {
  factory $MasterPasswordDialogEventCopyWith(MasterPasswordDialogEvent value,
          $Res Function(MasterPasswordDialogEvent) then) =
      _$MasterPasswordDialogEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MasterPasswordDialogEventCopyWithImpl<$Res>
    implements $MasterPasswordDialogEventCopyWith<$Res> {
  _$MasterPasswordDialogEventCopyWithImpl(this._value, this._then);

  final MasterPasswordDialogEvent _value;
  // ignore: unused_field
  final $Res Function(MasterPasswordDialogEvent) _then;
}

/// @nodoc
abstract class _$$MasterPasswordChangedEventCopyWith<$Res> {
  factory _$$MasterPasswordChangedEventCopyWith(
          _$MasterPasswordChangedEvent value,
          $Res Function(_$MasterPasswordChangedEvent) then) =
      __$$MasterPasswordChangedEventCopyWithImpl<$Res>;
  $Res call({String masterPassword});
}

/// @nodoc
class __$$MasterPasswordChangedEventCopyWithImpl<$Res>
    extends _$MasterPasswordDialogEventCopyWithImpl<$Res>
    implements _$$MasterPasswordChangedEventCopyWith<$Res> {
  __$$MasterPasswordChangedEventCopyWithImpl(
      _$MasterPasswordChangedEvent _value,
      $Res Function(_$MasterPasswordChangedEvent) _then)
      : super(_value, (v) => _then(v as _$MasterPasswordChangedEvent));

  @override
  _$MasterPasswordChangedEvent get _value =>
      super._value as _$MasterPasswordChangedEvent;

  @override
  $Res call({
    Object? masterPassword = freezed,
  }) {
    return _then(_$MasterPasswordChangedEvent(
      masterPassword == freezed
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MasterPasswordChangedEvent implements MasterPasswordChangedEvent {
  const _$MasterPasswordChangedEvent(this.masterPassword);

  @override
  final String masterPassword;

  @override
  String toString() {
    return 'MasterPasswordDialogEvent.masterPasswordChanged(masterPassword: $masterPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterPasswordChangedEvent &&
            const DeepCollectionEquality()
                .equals(other.masterPassword, masterPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(masterPassword));

  @JsonKey(ignore: true)
  @override
  _$$MasterPasswordChangedEventCopyWith<_$MasterPasswordChangedEvent>
      get copyWith => __$$MasterPasswordChangedEventCopyWithImpl<
          _$MasterPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() masterPasswordSubmitted,
    required TResult Function() canceled,
  }) {
    return masterPasswordChanged(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
  }) {
    return masterPasswordChanged?.call(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (masterPasswordChanged != null) {
      return masterPasswordChanged(masterPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(MasterPasswordSubmittedEvent value)
        masterPasswordSubmitted,
    required TResult Function(CanceledEvent value) canceled,
  }) {
    return masterPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
  }) {
    return masterPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
    required TResult orElse(),
  }) {
    if (masterPasswordChanged != null) {
      return masterPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class MasterPasswordChangedEvent implements MasterPasswordDialogEvent {
  const factory MasterPasswordChangedEvent(final String masterPassword) =
      _$MasterPasswordChangedEvent;

  String get masterPassword;
  @JsonKey(ignore: true)
  _$$MasterPasswordChangedEventCopyWith<_$MasterPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MasterPasswordSubmittedEventCopyWith<$Res> {
  factory _$$MasterPasswordSubmittedEventCopyWith(
          _$MasterPasswordSubmittedEvent value,
          $Res Function(_$MasterPasswordSubmittedEvent) then) =
      __$$MasterPasswordSubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MasterPasswordSubmittedEventCopyWithImpl<$Res>
    extends _$MasterPasswordDialogEventCopyWithImpl<$Res>
    implements _$$MasterPasswordSubmittedEventCopyWith<$Res> {
  __$$MasterPasswordSubmittedEventCopyWithImpl(
      _$MasterPasswordSubmittedEvent _value,
      $Res Function(_$MasterPasswordSubmittedEvent) _then)
      : super(_value, (v) => _then(v as _$MasterPasswordSubmittedEvent));

  @override
  _$MasterPasswordSubmittedEvent get _value =>
      super._value as _$MasterPasswordSubmittedEvent;
}

/// @nodoc

class _$MasterPasswordSubmittedEvent implements MasterPasswordSubmittedEvent {
  const _$MasterPasswordSubmittedEvent();

  @override
  String toString() {
    return 'MasterPasswordDialogEvent.masterPasswordSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterPasswordSubmittedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() masterPasswordSubmitted,
    required TResult Function() canceled,
  }) {
    return masterPasswordSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
  }) {
    return masterPasswordSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (masterPasswordSubmitted != null) {
      return masterPasswordSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(MasterPasswordSubmittedEvent value)
        masterPasswordSubmitted,
    required TResult Function(CanceledEvent value) canceled,
  }) {
    return masterPasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
  }) {
    return masterPasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
    required TResult orElse(),
  }) {
    if (masterPasswordSubmitted != null) {
      return masterPasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class MasterPasswordSubmittedEvent
    implements MasterPasswordDialogEvent {
  const factory MasterPasswordSubmittedEvent() = _$MasterPasswordSubmittedEvent;
}

/// @nodoc
abstract class _$$CanceledEventCopyWith<$Res> {
  factory _$$CanceledEventCopyWith(
          _$CanceledEvent value, $Res Function(_$CanceledEvent) then) =
      __$$CanceledEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledEventCopyWithImpl<$Res>
    extends _$MasterPasswordDialogEventCopyWithImpl<$Res>
    implements _$$CanceledEventCopyWith<$Res> {
  __$$CanceledEventCopyWithImpl(
      _$CanceledEvent _value, $Res Function(_$CanceledEvent) _then)
      : super(_value, (v) => _then(v as _$CanceledEvent));

  @override
  _$CanceledEvent get _value => super._value as _$CanceledEvent;
}

/// @nodoc

class _$CanceledEvent implements CanceledEvent {
  const _$CanceledEvent();

  @override
  String toString() {
    return 'MasterPasswordDialogEvent.canceled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CanceledEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() masterPasswordSubmitted,
    required TResult Function() canceled,
  }) {
    return canceled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
  }) {
    return canceled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? masterPasswordSubmitted,
    TResult Function()? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(MasterPasswordSubmittedEvent value)
        masterPasswordSubmitted,
    required TResult Function(CanceledEvent value) canceled,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(MasterPasswordSubmittedEvent value)?
        masterPasswordSubmitted,
    TResult Function(CanceledEvent value)? canceled,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class CanceledEvent implements MasterPasswordDialogEvent {
  const factory CanceledEvent() = _$CanceledEvent;
}
