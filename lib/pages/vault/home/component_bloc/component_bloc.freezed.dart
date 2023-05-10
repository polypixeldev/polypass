// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComponentState {
  bool get inArea => throw _privateConstructorUsedError;
  ComponentMode get mode => throw _privateConstructorUsedError;
  ExpandMode get expand => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComponentStateCopyWith<ComponentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentStateCopyWith<$Res> {
  factory $ComponentStateCopyWith(
          ComponentState value, $Res Function(ComponentState) then) =
      _$ComponentStateCopyWithImpl<$Res, ComponentState>;
  @useResult
  $Res call({bool inArea, ComponentMode mode, ExpandMode expand});
}

/// @nodoc
class _$ComponentStateCopyWithImpl<$Res, $Val extends ComponentState>
    implements $ComponentStateCopyWith<$Res> {
  _$ComponentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inArea = null,
    Object? mode = null,
    Object? expand = null,
  }) {
    return _then(_value.copyWith(
      inArea: null == inArea
          ? _value.inArea
          : inArea // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ComponentMode,
      expand: null == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as ExpandMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComponentStateCopyWith<$Res>
    implements $ComponentStateCopyWith<$Res> {
  factory _$$_ComponentStateCopyWith(
          _$_ComponentState value, $Res Function(_$_ComponentState) then) =
      __$$_ComponentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool inArea, ComponentMode mode, ExpandMode expand});
}

/// @nodoc
class __$$_ComponentStateCopyWithImpl<$Res>
    extends _$ComponentStateCopyWithImpl<$Res, _$_ComponentState>
    implements _$$_ComponentStateCopyWith<$Res> {
  __$$_ComponentStateCopyWithImpl(
      _$_ComponentState _value, $Res Function(_$_ComponentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inArea = null,
    Object? mode = null,
    Object? expand = null,
  }) {
    return _then(_$_ComponentState(
      inArea: null == inArea
          ? _value.inArea
          : inArea // ignore: cast_nullable_to_non_nullable
              as bool,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ComponentMode,
      expand: null == expand
          ? _value.expand
          : expand // ignore: cast_nullable_to_non_nullable
              as ExpandMode,
    ));
  }
}

/// @nodoc

class _$_ComponentState implements _ComponentState {
  const _$_ComponentState(
      {required this.inArea, required this.mode, required this.expand});

  @override
  final bool inArea;
  @override
  final ComponentMode mode;
  @override
  final ExpandMode expand;

  @override
  String toString() {
    return 'ComponentState(inArea: $inArea, mode: $mode, expand: $expand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComponentState &&
            (identical(other.inArea, inArea) || other.inArea == inArea) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.expand, expand) || other.expand == expand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inArea, mode, expand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComponentStateCopyWith<_$_ComponentState> get copyWith =>
      __$$_ComponentStateCopyWithImpl<_$_ComponentState>(this, _$identity);
}

abstract class _ComponentState implements ComponentState {
  const factory _ComponentState(
      {required final bool inArea,
      required final ComponentMode mode,
      required final ExpandMode expand}) = _$_ComponentState;

  @override
  bool get inArea;
  @override
  ComponentMode get mode;
  @override
  ExpandMode get expand;
  @override
  @JsonKey(ignore: true)
  _$$_ComponentStateCopyWith<_$_ComponentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComponentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() entered,
    required TResult Function() exited,
    required TResult Function() modeToggled,
    required TResult Function() expandToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? entered,
    TResult? Function()? exited,
    TResult? Function()? modeToggled,
    TResult? Function()? expandToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    TResult Function()? modeToggled,
    TResult Function()? expandToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(ExpandToggledEvent value) expandToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredEvent value)? entered,
    TResult? Function(ExitedEvent value)? exited,
    TResult? Function(ModeToggledEvent value)? modeToggled,
    TResult? Function(ExpandToggledEvent value)? expandToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(ExpandToggledEvent value)? expandToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentEventCopyWith<$Res> {
  factory $ComponentEventCopyWith(
          ComponentEvent value, $Res Function(ComponentEvent) then) =
      _$ComponentEventCopyWithImpl<$Res, ComponentEvent>;
}

/// @nodoc
class _$ComponentEventCopyWithImpl<$Res, $Val extends ComponentEvent>
    implements $ComponentEventCopyWith<$Res> {
  _$ComponentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnteredEventCopyWith<$Res> {
  factory _$$EnteredEventCopyWith(
          _$EnteredEvent value, $Res Function(_$EnteredEvent) then) =
      __$$EnteredEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnteredEventCopyWithImpl<$Res>
    extends _$ComponentEventCopyWithImpl<$Res, _$EnteredEvent>
    implements _$$EnteredEventCopyWith<$Res> {
  __$$EnteredEventCopyWithImpl(
      _$EnteredEvent _value, $Res Function(_$EnteredEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnteredEvent implements EnteredEvent {
  const _$EnteredEvent();

  @override
  String toString() {
    return 'ComponentEvent.entered()';
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
    required TResult Function() modeToggled,
    required TResult Function() expandToggled,
  }) {
    return entered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? entered,
    TResult? Function()? exited,
    TResult? Function()? modeToggled,
    TResult? Function()? expandToggled,
  }) {
    return entered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    TResult Function()? modeToggled,
    TResult Function()? expandToggled,
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
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(ExpandToggledEvent value) expandToggled,
  }) {
    return entered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredEvent value)? entered,
    TResult? Function(ExitedEvent value)? exited,
    TResult? Function(ModeToggledEvent value)? modeToggled,
    TResult? Function(ExpandToggledEvent value)? expandToggled,
  }) {
    return entered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(ExpandToggledEvent value)? expandToggled,
    required TResult orElse(),
  }) {
    if (entered != null) {
      return entered(this);
    }
    return orElse();
  }
}

abstract class EnteredEvent implements ComponentEvent {
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
    extends _$ComponentEventCopyWithImpl<$Res, _$ExitedEvent>
    implements _$$ExitedEventCopyWith<$Res> {
  __$$ExitedEventCopyWithImpl(
      _$ExitedEvent _value, $Res Function(_$ExitedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExitedEvent implements ExitedEvent {
  const _$ExitedEvent();

  @override
  String toString() {
    return 'ComponentEvent.exited()';
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
    required TResult Function() modeToggled,
    required TResult Function() expandToggled,
  }) {
    return exited();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? entered,
    TResult? Function()? exited,
    TResult? Function()? modeToggled,
    TResult? Function()? expandToggled,
  }) {
    return exited?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    TResult Function()? modeToggled,
    TResult Function()? expandToggled,
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
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(ExpandToggledEvent value) expandToggled,
  }) {
    return exited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredEvent value)? entered,
    TResult? Function(ExitedEvent value)? exited,
    TResult? Function(ModeToggledEvent value)? modeToggled,
    TResult? Function(ExpandToggledEvent value)? expandToggled,
  }) {
    return exited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(ExpandToggledEvent value)? expandToggled,
    required TResult orElse(),
  }) {
    if (exited != null) {
      return exited(this);
    }
    return orElse();
  }
}

abstract class ExitedEvent implements ComponentEvent {
  const factory ExitedEvent() = _$ExitedEvent;
}

/// @nodoc
abstract class _$$ModeToggledEventCopyWith<$Res> {
  factory _$$ModeToggledEventCopyWith(
          _$ModeToggledEvent value, $Res Function(_$ModeToggledEvent) then) =
      __$$ModeToggledEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModeToggledEventCopyWithImpl<$Res>
    extends _$ComponentEventCopyWithImpl<$Res, _$ModeToggledEvent>
    implements _$$ModeToggledEventCopyWith<$Res> {
  __$$ModeToggledEventCopyWithImpl(
      _$ModeToggledEvent _value, $Res Function(_$ModeToggledEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ModeToggledEvent implements ModeToggledEvent {
  const _$ModeToggledEvent();

  @override
  String toString() {
    return 'ComponentEvent.modeToggled()';
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
    required TResult Function() entered,
    required TResult Function() exited,
    required TResult Function() modeToggled,
    required TResult Function() expandToggled,
  }) {
    return modeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? entered,
    TResult? Function()? exited,
    TResult? Function()? modeToggled,
    TResult? Function()? expandToggled,
  }) {
    return modeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    TResult Function()? modeToggled,
    TResult Function()? expandToggled,
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
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(ExpandToggledEvent value) expandToggled,
  }) {
    return modeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredEvent value)? entered,
    TResult? Function(ExitedEvent value)? exited,
    TResult? Function(ModeToggledEvent value)? modeToggled,
    TResult? Function(ExpandToggledEvent value)? expandToggled,
  }) {
    return modeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(ExpandToggledEvent value)? expandToggled,
    required TResult orElse(),
  }) {
    if (modeToggled != null) {
      return modeToggled(this);
    }
    return orElse();
  }
}

abstract class ModeToggledEvent implements ComponentEvent {
  const factory ModeToggledEvent() = _$ModeToggledEvent;
}

/// @nodoc
abstract class _$$ExpandToggledEventCopyWith<$Res> {
  factory _$$ExpandToggledEventCopyWith(_$ExpandToggledEvent value,
          $Res Function(_$ExpandToggledEvent) then) =
      __$$ExpandToggledEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpandToggledEventCopyWithImpl<$Res>
    extends _$ComponentEventCopyWithImpl<$Res, _$ExpandToggledEvent>
    implements _$$ExpandToggledEventCopyWith<$Res> {
  __$$ExpandToggledEventCopyWithImpl(
      _$ExpandToggledEvent _value, $Res Function(_$ExpandToggledEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpandToggledEvent implements ExpandToggledEvent {
  const _$ExpandToggledEvent();

  @override
  String toString() {
    return 'ComponentEvent.expandToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpandToggledEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() entered,
    required TResult Function() exited,
    required TResult Function() modeToggled,
    required TResult Function() expandToggled,
  }) {
    return expandToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? entered,
    TResult? Function()? exited,
    TResult? Function()? modeToggled,
    TResult? Function()? expandToggled,
  }) {
    return expandToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? entered,
    TResult Function()? exited,
    TResult Function()? modeToggled,
    TResult Function()? expandToggled,
    required TResult orElse(),
  }) {
    if (expandToggled != null) {
      return expandToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredEvent value) entered,
    required TResult Function(ExitedEvent value) exited,
    required TResult Function(ModeToggledEvent value) modeToggled,
    required TResult Function(ExpandToggledEvent value) expandToggled,
  }) {
    return expandToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredEvent value)? entered,
    TResult? Function(ExitedEvent value)? exited,
    TResult? Function(ModeToggledEvent value)? modeToggled,
    TResult? Function(ExpandToggledEvent value)? expandToggled,
  }) {
    return expandToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredEvent value)? entered,
    TResult Function(ExitedEvent value)? exited,
    TResult Function(ModeToggledEvent value)? modeToggled,
    TResult Function(ExpandToggledEvent value)? expandToggled,
    required TResult orElse(),
  }) {
    if (expandToggled != null) {
      return expandToggled(this);
    }
    return orElse();
  }
}

abstract class ExpandToggledEvent implements ComponentEvent {
  const factory ExpandToggledEvent() = _$ExpandToggledEvent;
}
