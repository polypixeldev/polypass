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
  bool get inArea => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListItemStateCopyWith<ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemStateCopyWith<$Res> {
  factory $ListItemStateCopyWith(
          ListItemState value, $Res Function(ListItemState) then) =
      _$ListItemStateCopyWithImpl<$Res>;
  $Res call({bool inArea});
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
    Object? inArea = freezed,
  }) {
    return _then(_value.copyWith(
      inArea: inArea == freezed
          ? _value.inArea
          : inArea // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({bool inArea});
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
    Object? inArea = freezed,
  }) {
    return _then(_$_ListItemState(
      inArea == freezed
          ? _value.inArea
          : inArea // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ListItemState implements _ListItemState {
  const _$_ListItemState(this.inArea);

  @override
  final bool inArea;

  @override
  String toString() {
    return 'ListItemState(inArea: $inArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemState &&
            const DeepCollectionEquality().equals(other.inArea, inArea));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(inArea));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      __$$_ListItemStateCopyWithImpl<_$_ListItemState>(this, _$identity);
}

abstract class _ListItemState implements ListItemState {
  const factory _ListItemState(final bool inArea) = _$_ListItemState;

  @override
  bool get inArea => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemStateCopyWith<_$_ListItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() entered,
    required TResult Function() exited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
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
abstract class _$$EnteredEventCopyWith<$Res> {
  factory _$$EnteredEventCopyWith(
          _$EnteredEvent value, $Res Function(_$EnteredEvent) then) =
      __$$EnteredEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnteredEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$EnteredEventCopyWith<$Res> {
  __$$EnteredEventCopyWithImpl(
      _$EnteredEvent _value, $Res Function(_$EnteredEvent) _then)
      : super(_value, (v) => _then(v as _$EnteredEvent));

  @override
  _$EnteredEvent get _value => super._value as _$EnteredEvent;
}

/// @nodoc

class _$EnteredEvent implements EnteredEvent {
  const _$EnteredEvent();

  @override
  String toString() {
    return 'ListItemEvent.entered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnteredEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() entered,
    required TResult Function() exited,
  }) {
    return entered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
  }) {
    return entered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    required TResult orElse(),
  }) {
    if (entered != null) {
      return entered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
  }) {
    return entered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
  }) {
    return entered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    required TResult orElse(),
  }) {
    if (entered != null) {
      return entered(this);
    }
    return orElse();
  }
}

abstract class EnteredEvent implements ListItemEvent {
  const factory EnteredEvent() = _$EnteredEvent;
}

/// @nodoc
abstract class _$$ExitedEventCopyWith<$Res> {
  factory _$$ExitedEventCopyWith(
          _$ExitedEvent value, $Res Function(_$ExitedEvent) then) =
      __$$ExitedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitedEventCopyWithImpl<$Res>
    extends _$ListItemEventCopyWithImpl<$Res>
    implements _$$ExitedEventCopyWith<$Res> {
  __$$ExitedEventCopyWithImpl(
      _$ExitedEvent _value, $Res Function(_$ExitedEvent) _then)
      : super(_value, (v) => _then(v as _$ExitedEvent));

  @override
  _$ExitedEvent get _value => super._value as _$ExitedEvent;
}

/// @nodoc

class _$ExitedEvent implements ExitedEvent {
  const _$ExitedEvent();

  @override
  String toString() {
    return 'ListItemEvent.exited()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() entered,
    required TResult Function() exited,
  }) {
    return exited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
  }) {
    return exited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    required TResult orElse(),
  }) {
    if (exited != null) {
      return exited();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
  }) {
    return exited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
  }) {
    return exited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    required TResult orElse(),
  }) {
    if (exited != null) {
      return exited(this);
    }
    return orElse();
  }
}

abstract class ExitedEvent implements ListItemEvent {
  const factory ExitedEvent() = _$ExitedEvent;
}
