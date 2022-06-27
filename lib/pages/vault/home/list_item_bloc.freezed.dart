// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListItemState {
  ListItemMode get mode => throw _privateConstructorUsedError;
  Key? get masterKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListItemStateCopyWith<ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemStateCopyWith<$Res> {
  factory $ListItemStateCopyWith(
          ListItemState value, $Res Function(ListItemState) then) =
      _$ListItemStateCopyWithImpl<$Res>;
  $Res call({ListItemMode mode, Key? masterKey});
}

/// @nodoc
class _$ListItemStateCopyWithImpl<$Res>
    implements $ListItemStateCopyWith<$Res> {
  _$ListItemStateCopyWithImpl(this._value, this._then);

  final ListItemState _value;
  // ignore: unused_field
  final $Res Function(ListItemState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? masterKey = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ListItemMode,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc
abstract class _$$_ListItemStateCopyWith<$Res>
    implements $ListItemStateCopyWith<$Res> {
  factory _$$_ListItemStateCopyWith(
          _$_ListItemState value, $Res Function(_$_ListItemState) then) =
      __$$_ListItemStateCopyWithImpl<$Res>;
  @override
  $Res call({ListItemMode mode, Key? masterKey});
}

/// @nodoc
class __$$_ListItemStateCopyWithImpl<$Res>
    extends _$ListItemStateCopyWithImpl<$Res>
    implements _$$_ListItemStateCopyWith<$Res> {
  __$$_ListItemStateCopyWithImpl(
      _$_ListItemState _value, $Res Function(_$_ListItemState) _then)
      : super(_value, (v) => _then(v as _$_ListItemState));

  @override
  _$_ListItemState get _value => super._value as _$_ListItemState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? masterKey = freezed,
  }) {
    return _then(_$_ListItemState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ListItemMode,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$_ListItemState implements _ListItemState {
  const _$_ListItemState({required this.mode, required this.masterKey});

  @override
  final ListItemMode mode;
  @override
  final Key? masterKey;

  @override
  String toString() {
    return 'ListItemState(mode: $mode, masterKey: $masterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      __$$_ListItemStateCopyWithImpl<_$_ListItemState>(this, _$identity);
}

abstract class _ListItemState implements ListItemState {
  const factory _ListItemState(
      {required final ListItemMode mode,
      required final Key? masterKey}) = _$_ListItemState;

  @override
  ListItemMode get mode => throw _privateConstructorUsedError;
  @override
  Key? get masterKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListItemMode? newMode) modeToggled,
    required TResult Function(Key? masterKey) masterKeyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(MasterKeyAcquiredEvent value) masterKeyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemEventCopyWith<$Res> {
  factory $ListItemEventCopyWith(
          ListItemEvent value, $Res Function(ListItemEvent) then) =
      _$ListItemEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListItemEventCopyWithImpl<$Res>
    implements $ListItemEventCopyWith<$Res> {
  _$ListItemEventCopyWithImpl(this._value, this._then);

  final ListItemEvent _value;
  // ignore: unused_field
  final $Res Function(ListItemEvent) _then;
}

/// @nodoc
abstract class _$$ModeToggledEventCopyWith<$Res> {
  factory _$$ModeToggledEventCopyWith(
          _$ModeToggledEvent value, $Res Function(_$ModeToggledEvent) then) =
      __$$ModeToggledEventCopyWithImpl<$Res>;
  $Res call({ListItemMode? newMode});
}

/// @nodoc
class __$$ModeToggledEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$ModeToggledEventCopyWith<$Res> {
  __$$ModeToggledEventCopyWithImpl(
      _$ModeToggledEvent _value, $Res Function(_$ModeToggledEvent) _then)
      : super(_value, (v) => _then(v as _$ModeToggledEvent));

  @override
  _$ModeToggledEvent get _value => super._value as _$ModeToggledEvent;

  @override
  $Res call({
    Object? newMode = freezed,
  }) {
    return _then(_$ModeToggledEvent(
      newMode: newMode == freezed
          ? _value.newMode
          : newMode // ignore: cast_nullable_to_non_nullable
              as ListItemMode?,
    ));
  }
}

/// @nodoc

class _$ModeToggledEvent implements ModeToggledEvent {
  const _$ModeToggledEvent({this.newMode});

  @override
  final ListItemMode? newMode;

  @override
  String toString() {
    return 'ListItemEvent.modeToggled(newMode: $newMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModeToggledEvent &&
            const DeepCollectionEquality().equals(other.newMode, newMode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMode));

  @JsonKey(ignore: true)
  @override
  _$$ModeToggledEventCopyWith<_$ModeToggledEvent> get copyWith =>
      __$$ModeToggledEventCopyWithImpl<_$ModeToggledEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListItemMode? newMode) modeToggled,
    required TResult Function(Key? masterKey) masterKeyChanged,
  }) {
    return modeToggled(newMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
  }) {
    return modeToggled?.call(newMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
    required TResult orElse(),
  }) {
    if (modeToggled != null) {
      return modeToggled(newMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(MasterKeyAcquiredEvent value) masterKeyChanged,
  }) {
    return modeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
  }) {
    return modeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
    required TResult orElse(),
  }) {
    if (modeToggled != null) {
      return modeToggled(this);
    }
    return orElse();
  }
}

abstract class ModeToggledEvent implements ListItemEvent {
  const factory ModeToggledEvent({final ListItemMode? newMode}) =
      _$ModeToggledEvent;

  ListItemMode? get newMode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ModeToggledEventCopyWith<_$ModeToggledEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MasterKeyAcquiredEventCopyWith<$Res> {
  factory _$$MasterKeyAcquiredEventCopyWith(_$MasterKeyAcquiredEvent value,
          $Res Function(_$MasterKeyAcquiredEvent) then) =
      __$$MasterKeyAcquiredEventCopyWithImpl<$Res>;
  $Res call({Key? masterKey});
}

/// @nodoc
class __$$MasterKeyAcquiredEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$MasterKeyAcquiredEventCopyWith<$Res> {
  __$$MasterKeyAcquiredEventCopyWithImpl(_$MasterKeyAcquiredEvent _value,
      $Res Function(_$MasterKeyAcquiredEvent) _then)
      : super(_value, (v) => _then(v as _$MasterKeyAcquiredEvent));

  @override
  _$MasterKeyAcquiredEvent get _value =>
      super._value as _$MasterKeyAcquiredEvent;

  @override
  $Res call({
    Object? masterKey = freezed,
  }) {
    return _then(_$MasterKeyAcquiredEvent(
      masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as Key?,
    ));
  }
}

/// @nodoc

class _$MasterKeyAcquiredEvent implements MasterKeyAcquiredEvent {
  const _$MasterKeyAcquiredEvent(this.masterKey);

  @override
  final Key? masterKey;

  @override
  String toString() {
    return 'ListItemEvent.masterKeyChanged(masterKey: $masterKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MasterKeyAcquiredEvent &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(masterKey));

  @JsonKey(ignore: true)
  @override
  _$$MasterKeyAcquiredEventCopyWith<_$MasterKeyAcquiredEvent> get copyWith =>
      __$$MasterKeyAcquiredEventCopyWithImpl<_$MasterKeyAcquiredEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ListItemMode? newMode) modeToggled,
    required TResult Function(Key? masterKey) masterKeyChanged,
  }) {
    return masterKeyChanged(masterKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
  }) {
    return masterKeyChanged?.call(masterKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ListItemMode? newMode)? modeToggled,
    TResult Function(Key? masterKey)? masterKeyChanged,
    required TResult orElse(),
  }) {
    if (masterKeyChanged != null) {
      return masterKeyChanged(masterKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(MasterKeyAcquiredEvent value) masterKeyChanged,
  }) {
    return masterKeyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
  }) {
    return masterKeyChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(MasterKeyAcquiredEvent value)? masterKeyChanged,
    required TResult orElse(),
  }) {
    if (masterKeyChanged != null) {
      return masterKeyChanged(this);
    }
    return orElse();
  }
}

abstract class MasterKeyAcquiredEvent implements ListItemEvent {
  const factory MasterKeyAcquiredEvent(final Key? masterKey) =
      _$MasterKeyAcquiredEvent;

  Key? get masterKey => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MasterKeyAcquiredEventCopyWith<_$MasterKeyAcquiredEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
