// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecentState {
  VaultUrl? get recentUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentStateCopyWith<RecentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentStateCopyWith<$Res> {
  factory $RecentStateCopyWith(
          RecentState value, $Res Function(RecentState) then) =
      _$RecentStateCopyWithImpl<$Res>;
  $Res call({VaultUrl? recentUrl});

  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class _$RecentStateCopyWithImpl<$Res> implements $RecentStateCopyWith<$Res> {
  _$RecentStateCopyWithImpl(this._value, this._then);

  final RecentState _value;
  // ignore: unused_field
  final $Res Function(RecentState) _then;

  @override
  $Res call({
    Object? recentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      recentUrl: recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ));
  }

  @override
  $VaultUrlCopyWith<$Res>? get recentUrl {
    if (_value.recentUrl == null) {
      return null;
    }

    return $VaultUrlCopyWith<$Res>(_value.recentUrl!, (value) {
      return _then(_value.copyWith(recentUrl: value));
    });
  }
}

/// @nodoc
abstract class _$$_RecentStateCopyWith<$Res>
    implements $RecentStateCopyWith<$Res> {
  factory _$$_RecentStateCopyWith(
          _$_RecentState value, $Res Function(_$_RecentState) then) =
      __$$_RecentStateCopyWithImpl<$Res>;
  @override
  $Res call({VaultUrl? recentUrl});

  @override
  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class __$$_RecentStateCopyWithImpl<$Res> extends _$RecentStateCopyWithImpl<$Res>
    implements _$$_RecentStateCopyWith<$Res> {
  __$$_RecentStateCopyWithImpl(
      _$_RecentState _value, $Res Function(_$_RecentState) _then)
      : super(_value, (v) => _then(v as _$_RecentState));

  @override
  _$_RecentState get _value => super._value as _$_RecentState;

  @override
  $Res call({
    Object? recentUrl = freezed,
  }) {
    return _then(_$_RecentState(
      recentUrl: recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ));
  }
}

/// @nodoc

class _$_RecentState implements _RecentState {
  const _$_RecentState({this.recentUrl});

  @override
  final VaultUrl? recentUrl;

  @override
  String toString() {
    return 'RecentState(recentUrl: $recentUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentState &&
            const DeepCollectionEquality().equals(other.recentUrl, recentUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recentUrl));

  @JsonKey(ignore: true)
  @override
  _$$_RecentStateCopyWith<_$_RecentState> get copyWith =>
      __$$_RecentStateCopyWithImpl<_$_RecentState>(this, _$identity);
}

abstract class _RecentState implements RecentState {
  const factory _RecentState({final VaultUrl? recentUrl}) = _$_RecentState;

  @override
  VaultUrl? get recentUrl;
  @override
  @JsonKey(ignore: true)
  _$$_RecentStateCopyWith<_$_RecentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentEvent {
  VaultUrl? get recentUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultUrl? recentUrl) recentUrlChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultUrl? recentUrl)? recentUrlChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultUrl? recentUrl)? recentUrlChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentUrlChangedEvent value) recentUrlChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentUrlChangedEvent value)? recentUrlChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentUrlChangedEvent value)? recentUrlChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecentEventCopyWith<RecentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentEventCopyWith<$Res> {
  factory $RecentEventCopyWith(
          RecentEvent value, $Res Function(RecentEvent) then) =
      _$RecentEventCopyWithImpl<$Res>;
  $Res call({VaultUrl? recentUrl});

  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class _$RecentEventCopyWithImpl<$Res> implements $RecentEventCopyWith<$Res> {
  _$RecentEventCopyWithImpl(this._value, this._then);

  final RecentEvent _value;
  // ignore: unused_field
  final $Res Function(RecentEvent) _then;

  @override
  $Res call({
    Object? recentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      recentUrl: recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ));
  }

  @override
  $VaultUrlCopyWith<$Res>? get recentUrl {
    if (_value.recentUrl == null) {
      return null;
    }

    return $VaultUrlCopyWith<$Res>(_value.recentUrl!, (value) {
      return _then(_value.copyWith(recentUrl: value));
    });
  }
}

/// @nodoc
abstract class _$$RecentUrlChangedEventCopyWith<$Res>
    implements $RecentEventCopyWith<$Res> {
  factory _$$RecentUrlChangedEventCopyWith(_$RecentUrlChangedEvent value,
          $Res Function(_$RecentUrlChangedEvent) then) =
      __$$RecentUrlChangedEventCopyWithImpl<$Res>;
  @override
  $Res call({VaultUrl? recentUrl});

  @override
  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class __$$RecentUrlChangedEventCopyWithImpl<$Res>
    extends _$RecentEventCopyWithImpl<$Res>
    implements _$$RecentUrlChangedEventCopyWith<$Res> {
  __$$RecentUrlChangedEventCopyWithImpl(_$RecentUrlChangedEvent _value,
      $Res Function(_$RecentUrlChangedEvent) _then)
      : super(_value, (v) => _then(v as _$RecentUrlChangedEvent));

  @override
  _$RecentUrlChangedEvent get _value => super._value as _$RecentUrlChangedEvent;

  @override
  $Res call({
    Object? recentUrl = freezed,
  }) {
    return _then(_$RecentUrlChangedEvent(
      recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ));
  }
}

/// @nodoc

class _$RecentUrlChangedEvent implements RecentUrlChangedEvent {
  const _$RecentUrlChangedEvent(this.recentUrl);

  @override
  final VaultUrl? recentUrl;

  @override
  String toString() {
    return 'RecentEvent.recentUrlChanged(recentUrl: $recentUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentUrlChangedEvent &&
            const DeepCollectionEquality().equals(other.recentUrl, recentUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(recentUrl));

  @JsonKey(ignore: true)
  @override
  _$$RecentUrlChangedEventCopyWith<_$RecentUrlChangedEvent> get copyWith =>
      __$$RecentUrlChangedEventCopyWithImpl<_$RecentUrlChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultUrl? recentUrl) recentUrlChanged,
  }) {
    return recentUrlChanged(recentUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultUrl? recentUrl)? recentUrlChanged,
  }) {
    return recentUrlChanged?.call(recentUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultUrl? recentUrl)? recentUrlChanged,
    required TResult orElse(),
  }) {
    if (recentUrlChanged != null) {
      return recentUrlChanged(recentUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentUrlChangedEvent value) recentUrlChanged,
  }) {
    return recentUrlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentUrlChangedEvent value)? recentUrlChanged,
  }) {
    return recentUrlChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentUrlChangedEvent value)? recentUrlChanged,
    required TResult orElse(),
  }) {
    if (recentUrlChanged != null) {
      return recentUrlChanged(this);
    }
    return orElse();
  }
}

abstract class RecentUrlChangedEvent implements RecentEvent {
  const factory RecentUrlChangedEvent(final VaultUrl? recentUrl) =
      _$RecentUrlChangedEvent;

  @override
  VaultUrl? get recentUrl;
  @override
  @JsonKey(ignore: true)
  _$$RecentUrlChangedEventCopyWith<_$RecentUrlChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
