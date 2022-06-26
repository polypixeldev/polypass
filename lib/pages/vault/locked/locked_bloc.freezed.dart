// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locked_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UnlockFormState {
// Raw master password that user enters
  String get masterPassword =>
      throw _privateConstructorUsedError; // Derived master key from master password
  Key? get masterKey => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  int get fails => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnlockFormStateCopyWith<UnlockFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnlockFormStateCopyWith<$Res> {
  factory $UnlockFormStateCopyWith(
          UnlockFormState value, $Res Function(UnlockFormState) then) =
      _$UnlockFormStateCopyWithImpl<$Res>;
  $Res call(
      {String masterPassword,
      Key? masterKey,
      bool submitted,
      bool success,
      int fails});
}

/// @nodoc
class _$UnlockFormStateCopyWithImpl<$Res>
    implements $UnlockFormStateCopyWith<$Res> {
  _$UnlockFormStateCopyWithImpl(this._value, this._then);

  final UnlockFormState _value;
  // ignore: unused_field
  final $Res Function(UnlockFormState) _then;

  @override
  $Res call({
    Object? masterPassword = freezed,
    Object? masterKey = freezed,
    Object? submitted = freezed,
    Object? success = freezed,
    Object? fails = freezed,
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
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      fails: fails == freezed
          ? _value.fails
          : fails // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UnlockFormStateCopyWith<$Res>
    implements $UnlockFormStateCopyWith<$Res> {
  factory _$$_UnlockFormStateCopyWith(
          _$_UnlockFormState value, $Res Function(_$_UnlockFormState) then) =
      __$$_UnlockFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String masterPassword,
      Key? masterKey,
      bool submitted,
      bool success,
      int fails});
}

/// @nodoc
class __$$_UnlockFormStateCopyWithImpl<$Res>
    extends _$UnlockFormStateCopyWithImpl<$Res>
    implements _$$_UnlockFormStateCopyWith<$Res> {
  __$$_UnlockFormStateCopyWithImpl(
      _$_UnlockFormState _value, $Res Function(_$_UnlockFormState) _then)
      : super(_value, (v) => _then(v as _$_UnlockFormState));

  @override
  _$_UnlockFormState get _value => super._value as _$_UnlockFormState;

  @override
  $Res call({
    Object? masterPassword = freezed,
    Object? masterKey = freezed,
    Object? submitted = freezed,
    Object? success = freezed,
    Object? fails = freezed,
  }) {
    return _then(_$_UnlockFormState(
      masterPassword: masterPassword == freezed
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      fails: fails == freezed
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
    return 'UnlockFormState(masterPassword: $masterPassword, masterKey: $masterKey, submitted: $submitted, success: $success, fails: $fails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnlockFormState &&
            const DeepCollectionEquality()
                .equals(other.masterPassword, masterPassword) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.submitted, submitted) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.fails, fails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterPassword),
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(submitted),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(fails));

  @JsonKey(ignore: true)
  @override
  _$$_UnlockFormStateCopyWith<_$_UnlockFormState> get copyWith =>
      __$$_UnlockFormStateCopyWithImpl<_$_UnlockFormState>(this, _$identity);
}

abstract class _UnlockFormState extends UnlockFormState {
  const factory _UnlockFormState(
      {required final String masterPassword,
      required final Key? masterKey,
      required final bool submitted,
      required final bool success,
      required final int fails}) = _$_UnlockFormState;
  const _UnlockFormState._() : super._();

  @override // Raw master password that user enters
  String get masterPassword => throw _privateConstructorUsedError;
  @override // Derived master key from master password
  Key? get masterKey => throw _privateConstructorUsedError;
  @override
  bool get submitted => throw _privateConstructorUsedError;
  @override
  bool get success => throw _privateConstructorUsedError;
  @override
  int get fails => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UnlockFormStateCopyWith<_$_UnlockFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnlockFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
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
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
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
abstract class $UnlockFormEventCopyWith<$Res> {
  factory $UnlockFormEventCopyWith(
          UnlockFormEvent value, $Res Function(UnlockFormEvent) then) =
      _$UnlockFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnlockFormEventCopyWithImpl<$Res>
    implements $UnlockFormEventCopyWith<$Res> {
  _$UnlockFormEventCopyWithImpl(this._value, this._then);

  final UnlockFormEvent _value;
  // ignore: unused_field
  final $Res Function(UnlockFormEvent) _then;
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
    extends _$UnlockFormEventCopyWithImpl<$Res>
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
    return 'UnlockFormEvent.masterPasswordChanged(masterPassword: $masterPassword)';
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
    required TResult Function() formSubmitted,
  }) {
    return masterPasswordChanged(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
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
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
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

abstract class MasterPasswordChangedEvent implements UnlockFormEvent {
  const factory MasterPasswordChangedEvent(final String masterPassword) =
      _$MasterPasswordChangedEvent;

  String get masterPassword => throw _privateConstructorUsedError;
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
    extends _$UnlockFormEventCopyWithImpl<$Res>
    implements _$$FormSubmittedEventCopyWith<$Res> {
  __$$FormSubmittedEventCopyWithImpl(
      _$FormSubmittedEvent _value, $Res Function(_$FormSubmittedEvent) _then)
      : super(_value, (v) => _then(v as _$FormSubmittedEvent));

  @override
  _$FormSubmittedEvent get _value => super._value as _$FormSubmittedEvent;
}

/// @nodoc

class _$FormSubmittedEvent implements FormSubmittedEvent {
  const _$FormSubmittedEvent();

  @override
  String toString() {
    return 'UnlockFormEvent.formSubmitted()';
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
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function()? formSubmitted,
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
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
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

abstract class FormSubmittedEvent implements UnlockFormEvent {
  const factory FormSubmittedEvent() = _$FormSubmittedEvent;
}
