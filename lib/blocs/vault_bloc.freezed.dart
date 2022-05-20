// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vault_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VaultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(VaultFile vault) locked,
    required TResult Function(VaultFile vault, String? masterKey) unlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Opening value) opening,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultStateCopyWith<$Res> {
  factory $VaultStateCopyWith(
          VaultState value, $Res Function(VaultState) then) =
      _$VaultStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VaultStateCopyWithImpl<$Res> implements $VaultStateCopyWith<$Res> {
  _$VaultStateCopyWithImpl(this._value, this._then);

  final VaultState _value;
  // ignore: unused_field
  final $Res Function(VaultState) _then;
}

/// @nodoc
abstract class _$$_NoneCopyWith<$Res> {
  factory _$$_NoneCopyWith(_$_None value, $Res Function(_$_None) then) =
      __$$_NoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoneCopyWithImpl<$Res> extends _$VaultStateCopyWithImpl<$Res>
    implements _$$_NoneCopyWith<$Res> {
  __$$_NoneCopyWithImpl(_$_None _value, $Res Function(_$_None) _then)
      : super(_value, (v) => _then(v as _$_None));

  @override
  _$_None get _value => super._value as _$_None;
}

/// @nodoc

class _$_None implements _None {
  const _$_None();

  @override
  String toString() {
    return 'VaultState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(VaultFile vault) locked,
    required TResult Function(VaultFile vault, String? masterKey) unlocked,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Opening value) opening,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _None implements VaultState {
  const factory _None() = _$_None;
}

/// @nodoc
abstract class _$$_OpeningCopyWith<$Res> {
  factory _$$_OpeningCopyWith(
          _$_Opening value, $Res Function(_$_Opening) then) =
      __$$_OpeningCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpeningCopyWithImpl<$Res> extends _$VaultStateCopyWithImpl<$Res>
    implements _$$_OpeningCopyWith<$Res> {
  __$$_OpeningCopyWithImpl(_$_Opening _value, $Res Function(_$_Opening) _then)
      : super(_value, (v) => _then(v as _$_Opening));

  @override
  _$_Opening get _value => super._value as _$_Opening;
}

/// @nodoc

class _$_Opening implements _Opening {
  const _$_Opening();

  @override
  String toString() {
    return 'VaultState.opening()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Opening);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(VaultFile vault) locked,
    required TResult Function(VaultFile vault, String? masterKey) unlocked,
  }) {
    return opening();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
  }) {
    return opening?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
    required TResult orElse(),
  }) {
    if (opening != null) {
      return opening();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Opening value) opening,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
  }) {
    return opening(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
  }) {
    return opening?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    required TResult orElse(),
  }) {
    if (opening != null) {
      return opening(this);
    }
    return orElse();
  }
}

abstract class _Opening implements VaultState {
  const factory _Opening() = _$_Opening;
}

/// @nodoc
abstract class _$$_LockedCopyWith<$Res> {
  factory _$$_LockedCopyWith(_$_Locked value, $Res Function(_$_Locked) then) =
      __$$_LockedCopyWithImpl<$Res>;
  $Res call({VaultFile vault});

  $VaultFileCopyWith<$Res> get vault;
}

/// @nodoc
class __$$_LockedCopyWithImpl<$Res> extends _$VaultStateCopyWithImpl<$Res>
    implements _$$_LockedCopyWith<$Res> {
  __$$_LockedCopyWithImpl(_$_Locked _value, $Res Function(_$_Locked) _then)
      : super(_value, (v) => _then(v as _$_Locked));

  @override
  _$_Locked get _value => super._value as _$_Locked;

  @override
  $Res call({
    Object? vault = freezed,
  }) {
    return _then(_$_Locked(
      vault == freezed
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as VaultFile,
    ));
  }

  @override
  $VaultFileCopyWith<$Res> get vault {
    return $VaultFileCopyWith<$Res>(_value.vault, (value) {
      return _then(_value.copyWith(vault: value));
    });
  }
}

/// @nodoc

class _$_Locked implements _Locked {
  const _$_Locked(this.vault);

  @override
  final VaultFile vault;

  @override
  String toString() {
    return 'VaultState.locked(vault: $vault)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Locked &&
            const DeepCollectionEquality().equals(other.vault, vault));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(vault));

  @JsonKey(ignore: true)
  @override
  _$$_LockedCopyWith<_$_Locked> get copyWith =>
      __$$_LockedCopyWithImpl<_$_Locked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(VaultFile vault) locked,
    required TResult Function(VaultFile vault, String? masterKey) unlocked,
  }) {
    return locked(vault);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
  }) {
    return locked?.call(vault);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(vault);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Opening value) opening,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class _Locked implements VaultState {
  const factory _Locked(final VaultFile vault) = _$_Locked;

  VaultFile get vault => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LockedCopyWith<_$_Locked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnlockedCopyWith<$Res> {
  factory _$$_UnlockedCopyWith(
          _$_Unlocked value, $Res Function(_$_Unlocked) then) =
      __$$_UnlockedCopyWithImpl<$Res>;
  $Res call({VaultFile vault, String? masterKey});

  $VaultFileCopyWith<$Res> get vault;
}

/// @nodoc
class __$$_UnlockedCopyWithImpl<$Res> extends _$VaultStateCopyWithImpl<$Res>
    implements _$$_UnlockedCopyWith<$Res> {
  __$$_UnlockedCopyWithImpl(
      _$_Unlocked _value, $Res Function(_$_Unlocked) _then)
      : super(_value, (v) => _then(v as _$_Unlocked));

  @override
  _$_Unlocked get _value => super._value as _$_Unlocked;

  @override
  $Res call({
    Object? vault = freezed,
    Object? masterKey = freezed,
  }) {
    return _then(_$_Unlocked(
      vault == freezed
          ? _value.vault
          : vault // ignore: cast_nullable_to_non_nullable
              as VaultFile,
      masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $VaultFileCopyWith<$Res> get vault {
    return $VaultFileCopyWith<$Res>(_value.vault, (value) {
      return _then(_value.copyWith(vault: value));
    });
  }
}

/// @nodoc

class _$_Unlocked implements _Unlocked {
  const _$_Unlocked(this.vault, this.masterKey);

  @override
  final VaultFile vault;
  @override
  final String? masterKey;

  @override
  String toString() {
    return 'VaultState.unlocked(vault: $vault, masterKey: $masterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unlocked &&
            const DeepCollectionEquality().equals(other.vault, vault) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vault),
      const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  _$$_UnlockedCopyWith<_$_Unlocked> get copyWith =>
      __$$_UnlockedCopyWithImpl<_$_Unlocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() opening,
    required TResult Function(VaultFile vault) locked,
    required TResult Function(VaultFile vault, String? masterKey) unlocked,
  }) {
    return unlocked(vault, masterKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
  }) {
    return unlocked?.call(vault, masterKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? opening,
    TResult Function(VaultFile vault)? locked,
    TResult Function(VaultFile vault, String? masterKey)? unlocked,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(vault, masterKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_None value) none,
    required TResult Function(_Opening value) opening,
    required TResult Function(_Locked value) locked,
    required TResult Function(_Unlocked value) unlocked,
  }) {
    return unlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
  }) {
    return unlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_None value)? none,
    TResult Function(_Opening value)? opening,
    TResult Function(_Locked value)? locked,
    TResult Function(_Unlocked value)? unlocked,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(this);
    }
    return orElse();
  }
}

abstract class _Unlocked implements VaultState {
  const factory _Unlocked(final VaultFile vault, final String? masterKey) =
      _$_Unlocked;

  VaultFile get vault => throw _privateConstructorUsedError;
  String? get masterKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UnlockedCopyWith<_$_Unlocked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) opened,
    required TResult Function(String masterKey) unlocked,
    required TResult Function() locked,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenedEvent value) opened,
    required TResult Function(UnlockedEvent value) unlocked,
    required TResult Function(LockedEvent value) locked,
    required TResult Function(ClosedEvent value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultEventCopyWith<$Res> {
  factory $VaultEventCopyWith(
          VaultEvent value, $Res Function(VaultEvent) then) =
      _$VaultEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VaultEventCopyWithImpl<$Res> implements $VaultEventCopyWith<$Res> {
  _$VaultEventCopyWithImpl(this._value, this._then);

  final VaultEvent _value;
  // ignore: unused_field
  final $Res Function(VaultEvent) _then;
}

/// @nodoc
abstract class _$$OpenedEventCopyWith<$Res> {
  factory _$$OpenedEventCopyWith(
          _$OpenedEvent value, $Res Function(_$OpenedEvent) then) =
      __$$OpenedEventCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class __$$OpenedEventCopyWithImpl<$Res> extends _$VaultEventCopyWithImpl<$Res>
    implements _$$OpenedEventCopyWith<$Res> {
  __$$OpenedEventCopyWithImpl(
      _$OpenedEvent _value, $Res Function(_$OpenedEvent) _then)
      : super(_value, (v) => _then(v as _$OpenedEvent));

  @override
  _$OpenedEvent get _value => super._value as _$OpenedEvent;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(_$OpenedEvent(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenedEvent implements OpenedEvent {
  const _$OpenedEvent(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'VaultEvent.opened(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenedEvent &&
            const DeepCollectionEquality().equals(other.path, path));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(path));

  @JsonKey(ignore: true)
  @override
  _$$OpenedEventCopyWith<_$OpenedEvent> get copyWith =>
      __$$OpenedEventCopyWithImpl<_$OpenedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) opened,
    required TResult Function(String masterKey) unlocked,
    required TResult Function() locked,
    required TResult Function() closed,
  }) {
    return opened(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
  }) {
    return opened?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenedEvent value) opened,
    required TResult Function(UnlockedEvent value) unlocked,
    required TResult Function(LockedEvent value) locked,
    required TResult Function(ClosedEvent value) closed,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
  }) {
    return opened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class OpenedEvent implements VaultEvent {
  const factory OpenedEvent(final String path) = _$OpenedEvent;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OpenedEventCopyWith<_$OpenedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnlockedEventCopyWith<$Res> {
  factory _$$UnlockedEventCopyWith(
          _$UnlockedEvent value, $Res Function(_$UnlockedEvent) then) =
      __$$UnlockedEventCopyWithImpl<$Res>;
  $Res call({String masterKey});
}

/// @nodoc
class __$$UnlockedEventCopyWithImpl<$Res> extends _$VaultEventCopyWithImpl<$Res>
    implements _$$UnlockedEventCopyWith<$Res> {
  __$$UnlockedEventCopyWithImpl(
      _$UnlockedEvent _value, $Res Function(_$UnlockedEvent) _then)
      : super(_value, (v) => _then(v as _$UnlockedEvent));

  @override
  _$UnlockedEvent get _value => super._value as _$UnlockedEvent;

  @override
  $Res call({
    Object? masterKey = freezed,
  }) {
    return _then(_$UnlockedEvent(
      masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnlockedEvent implements UnlockedEvent {
  const _$UnlockedEvent(this.masterKey);

  @override
  final String masterKey;

  @override
  String toString() {
    return 'VaultEvent.unlocked(masterKey: $masterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnlockedEvent &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  _$$UnlockedEventCopyWith<_$UnlockedEvent> get copyWith =>
      __$$UnlockedEventCopyWithImpl<_$UnlockedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) opened,
    required TResult Function(String masterKey) unlocked,
    required TResult Function() locked,
    required TResult Function() closed,
  }) {
    return unlocked(masterKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
  }) {
    return unlocked?.call(masterKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(masterKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenedEvent value) opened,
    required TResult Function(UnlockedEvent value) unlocked,
    required TResult Function(LockedEvent value) locked,
    required TResult Function(ClosedEvent value) closed,
  }) {
    return unlocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
  }) {
    return unlocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
    required TResult orElse(),
  }) {
    if (unlocked != null) {
      return unlocked(this);
    }
    return orElse();
  }
}

abstract class UnlockedEvent implements VaultEvent {
  const factory UnlockedEvent(final String masterKey) = _$UnlockedEvent;

  String get masterKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UnlockedEventCopyWith<_$UnlockedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LockedEventCopyWith<$Res> {
  factory _$$LockedEventCopyWith(
          _$LockedEvent value, $Res Function(_$LockedEvent) then) =
      __$$LockedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LockedEventCopyWithImpl<$Res> extends _$VaultEventCopyWithImpl<$Res>
    implements _$$LockedEventCopyWith<$Res> {
  __$$LockedEventCopyWithImpl(
      _$LockedEvent _value, $Res Function(_$LockedEvent) _then)
      : super(_value, (v) => _then(v as _$LockedEvent));

  @override
  _$LockedEvent get _value => super._value as _$LockedEvent;
}

/// @nodoc

class _$LockedEvent implements LockedEvent {
  const _$LockedEvent();

  @override
  String toString() {
    return 'VaultEvent.locked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LockedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) opened,
    required TResult Function(String masterKey) unlocked,
    required TResult Function() locked,
    required TResult Function() closed,
  }) {
    return locked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
  }) {
    return locked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenedEvent value) opened,
    required TResult Function(UnlockedEvent value) unlocked,
    required TResult Function(LockedEvent value) locked,
    required TResult Function(ClosedEvent value) closed,
  }) {
    return locked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
  }) {
    return locked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
    required TResult orElse(),
  }) {
    if (locked != null) {
      return locked(this);
    }
    return orElse();
  }
}

abstract class LockedEvent implements VaultEvent {
  const factory LockedEvent() = _$LockedEvent;
}

/// @nodoc
abstract class _$$ClosedEventCopyWith<$Res> {
  factory _$$ClosedEventCopyWith(
          _$ClosedEvent value, $Res Function(_$ClosedEvent) then) =
      __$$ClosedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClosedEventCopyWithImpl<$Res> extends _$VaultEventCopyWithImpl<$Res>
    implements _$$ClosedEventCopyWith<$Res> {
  __$$ClosedEventCopyWithImpl(
      _$ClosedEvent _value, $Res Function(_$ClosedEvent) _then)
      : super(_value, (v) => _then(v as _$ClosedEvent));

  @override
  _$ClosedEvent get _value => super._value as _$ClosedEvent;
}

/// @nodoc

class _$ClosedEvent implements ClosedEvent {
  const _$ClosedEvent();

  @override
  String toString() {
    return 'VaultEvent.closed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) opened,
    required TResult Function(String masterKey) unlocked,
    required TResult Function() locked,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
  }) {
    return closed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? opened,
    TResult Function(String masterKey)? unlocked,
    TResult Function()? locked,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenedEvent value) opened,
    required TResult Function(UnlockedEvent value) unlocked,
    required TResult Function(LockedEvent value) locked,
    required TResult Function(ClosedEvent value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
  }) {
    return closed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenedEvent value)? opened,
    TResult Function(UnlockedEvent value)? unlocked,
    TResult Function(LockedEvent value)? locked,
    TResult Function(ClosedEvent value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class ClosedEvent implements VaultEvent {
  const factory ClosedEvent() = _$ClosedEvent;
}
