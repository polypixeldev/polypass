// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locked_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LockedFormState {
// Raw master password that user enters
  String get masterPassword =>
      throw _privateConstructorUsedError; // Derived master key from master password
  Key? get masterKey => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int get fails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LockedFormStateCopyWith<LockedFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedFormStateCopyWith<$Res> {
  factory $LockedFormStateCopyWith(
          LockedFormState value, $Res Function(LockedFormState) then) =
      _$LockedFormStateCopyWithImpl<$Res, LockedFormState>;
  @useResult
  $Res call(
      {String masterPassword,
      Key? masterKey,
      bool submitted,
      bool success,
      int fails});
}

/// @nodoc
class _$LockedFormStateCopyWithImpl<$Res, $Val extends LockedFormState>
    implements $LockedFormStateCopyWith<$Res> {
  _$LockedFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterPassword = null,
    Object? masterKey = freezed,
    Object? submitted = null,
    Object? success = null,
    Object? fails = null,
  }) {
    return _then(_value.copyWith(
      masterPassword: null == masterPassword
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: freezed == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      fails: null == fails
          ? _value.fails
          : fails // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnlockFormStateCopyWith<$Res>
    implements $LockedFormStateCopyWith<$Res> {
  factory _$$_UnlockFormStateCopyWith(
          _$_UnlockFormState value, $Res Function(_$_UnlockFormState) then) =
      __$$_UnlockFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String masterPassword,
      Key? masterKey,
      bool submitted,
      bool success,
      int fails});
}

/// @nodoc
class __$$_UnlockFormStateCopyWithImpl<$Res>
    extends _$LockedFormStateCopyWithImpl<$Res, _$_UnlockFormState>
    implements _$$_UnlockFormStateCopyWith<$Res> {
  __$$_UnlockFormStateCopyWithImpl(
      _$_UnlockFormState _value, $Res Function(_$_UnlockFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterPassword = null,
    Object? masterKey = freezed,
    Object? submitted = null,
    Object? success = null,
    Object? fails = null,
  }) {
    return _then(_$_UnlockFormState(
      masterPassword: null == masterPassword
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: freezed == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      fails: null == fails
          ? _value.fails
          : fails // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UnlockFormState extends _UnlockFormState {
  const _$_UnlockFormState(
      {required this.masterPassword,
      required this.masterKey,
      required this.submitted,
      required this.success,
      required this.fails})
      : super._();

// Raw master password that user enters
  @override
  final String masterPassword;
// Derived master key from master password
  @override
  final Key? masterKey;
  @override
  final bool submitted;
  @override
  final bool success;
  @override
  final int fails;

  @override
  String toString() {
    return 'LockedFormState(masterPassword: $masterPassword, masterKey: $masterKey, submitted: $submitted, success: $success, fails: $fails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnlockFormState &&
            (identical(other.masterPassword, masterPassword) ||
                other.masterPassword == masterPassword) &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.fails, fails) || other.fails == fails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, masterPassword, masterKey, submitted, success, fails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnlockFormStateCopyWith<_$_UnlockFormState> get copyWith =>
      __$$_UnlockFormStateCopyWithImpl<_$_UnlockFormState>(this, _$identity);
}

abstract class _UnlockFormState extends LockedFormState {
  const factory _UnlockFormState(
      {required final String masterPassword,
      required final Key? masterKey,
      required final bool submitted,
      required final bool success,
      required final int fails}) = _$_UnlockFormState;
  const _UnlockFormState._() : super._();

  @override // Raw master password that user enters
  String get masterPassword;
  @override // Derived master key from master password
  Key? get masterKey;
  @override
  bool get submitted;
  @override
  bool get success;
  @override
  int get fails;
  @override
  @JsonKey(ignore: true)
  _$$_UnlockFormStateCopyWith<_$_UnlockFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LockedFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LockedFormEventCopyWith<$Res> {
  factory $LockedFormEventCopyWith(
          LockedFormEvent value, $Res Function(LockedFormEvent) then) =
      _$LockedFormEventCopyWithImpl<$Res, LockedFormEvent>;
}

/// @nodoc
class _$LockedFormEventCopyWithImpl<$Res, $Val extends LockedFormEvent>
    implements $LockedFormEventCopyWith<$Res> {
  _$LockedFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MasterPasswordChangedEventCopyWith<$Res> {
  factory _$$MasterPasswordChangedEventCopyWith(
          _$MasterPasswordChangedEvent value,
          $Res Function(_$MasterPasswordChangedEvent) then) =
      __$$MasterPasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String masterPassword});
}

/// @nodoc
class __$$MasterPasswordChangedEventCopyWithImpl<$Res>
    extends _$LockedFormEventCopyWithImpl<$Res, _$MasterPasswordChangedEvent>
    implements _$$MasterPasswordChangedEventCopyWith<$Res> {
  __$$MasterPasswordChangedEventCopyWithImpl(
      _$MasterPasswordChangedEvent _value,
      $Res Function(_$MasterPasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterPassword = null,
  }) {
    return _then(_$MasterPasswordChangedEvent(
      null == masterPassword
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
    return 'LockedFormEvent.masterPasswordChanged(masterPassword: $masterPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterPasswordChangedEvent &&
            (identical(other.masterPassword, masterPassword) ||
                other.masterPassword == masterPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, masterPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MasterPasswordChangedEventCopyWith<_$MasterPasswordChangedEvent>
      get copyWith => __$$MasterPasswordChangedEventCopyWithImpl<
          _$MasterPasswordChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return masterPasswordChanged(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return masterPasswordChanged?.call(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
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
    required TResult Function(FormSubmittedEvent value) formSubmitted,
  }) {
    return masterPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
  }) {
    return masterPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (masterPasswordChanged != null) {
      return masterPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class MasterPasswordChangedEvent implements LockedFormEvent {
  const factory MasterPasswordChangedEvent(final String masterPassword) =
      _$MasterPasswordChangedEvent;

  String get masterPassword;
  @JsonKey(ignore: true)
  _$$MasterPasswordChangedEventCopyWith<_$MasterPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedEventCopyWith<$Res> {
  factory _$$FormSubmittedEventCopyWith(_$FormSubmittedEvent value,
          $Res Function(_$FormSubmittedEvent) then) =
      __$$FormSubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedEventCopyWithImpl<$Res>
    extends _$LockedFormEventCopyWithImpl<$Res, _$FormSubmittedEvent>
    implements _$$FormSubmittedEventCopyWith<$Res> {
  __$$FormSubmittedEventCopyWithImpl(
      _$FormSubmittedEvent _value, $Res Function(_$FormSubmittedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FormSubmittedEvent implements FormSubmittedEvent {
  const _$FormSubmittedEvent();

  @override
  String toString() {
    return 'LockedFormEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FormSubmittedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmittedEvent implements LockedFormEvent {
  const factory FormSubmittedEvent() = _$FormSubmittedEvent;
}
