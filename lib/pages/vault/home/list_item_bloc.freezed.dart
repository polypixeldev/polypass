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

  @JsonKey(ignore: true)
  $ListItemStateCopyWith<ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemStateCopyWith<$Res> {
  factory $ListItemStateCopyWith(
          ListItemState value, $Res Function(ListItemState) then) =
      _$ListItemStateCopyWithImpl<$Res>;
  $Res call({ListItemMode mode});
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
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ListItemMode,
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
  $Res call({ListItemMode mode});
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
  }) {
    return _then(_$_ListItemState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ListItemMode,
    ));
  }
}

/// @nodoc

class _$_ListItemState implements _ListItemState {
  const _$_ListItemState({required this.mode});

  @override
  final ListItemMode mode;

  @override
  String toString() {
    return 'ListItemState(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemState &&
            const DeepCollectionEquality().equals(other.mode, mode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(mode));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      __$$_ListItemStateCopyWithImpl<_$_ListItemState>(this, _$identity);
}

abstract class _ListItemState implements ListItemState {
  const factory _ListItemState({required final ListItemMode mode}) =
      _$_ListItemState;

  @override
  ListItemMode get mode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() modeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? modeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? modeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModeToggledEvent value) modeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
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
}

/// @nodoc

class _$ModeToggledEvent implements ModeToggledEvent {
  const _$ModeToggledEvent();

  @override
  String toString() {
    return 'ListItemEvent.modeToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ModeToggledEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() modeToggled,
  }) {
    return modeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? modeToggled,
  }) {
    return modeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? modeToggled,
    required TResult orElse(),
  }) {
    if (modeToggled != null) {
      return modeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ModeToggledEvent value) modeToggled,
  }) {
    return modeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
  }) {
    return modeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ModeToggledEvent value)? modeToggled,
    required TResult orElse(),
  }) {
    if (modeToggled != null) {
      return modeToggled(this);
    }
    return orElse();
  }
}

abstract class ModeToggledEvent implements ListItemEvent {
  const factory ModeToggledEvent() = _$ModeToggledEvent;
}
