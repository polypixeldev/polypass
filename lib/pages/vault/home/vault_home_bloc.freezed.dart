// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vault_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VaultHomeState {
  String get query => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  VaultGroup? get focusedGroup => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaultHomeStateCopyWith<VaultHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHomeStateCopyWith<$Res> {
  factory $VaultHomeStateCopyWith(
          VaultHomeState value, $Res Function(VaultHomeState) then) =
      _$VaultHomeStateCopyWithImpl<$Res>;
  $Res call({String query, bool submitted, VaultGroup? focusedGroup});

  $VaultGroupCopyWith<$Res>? get focusedGroup;
}

/// @nodoc
class _$VaultHomeStateCopyWithImpl<$Res>
    implements $VaultHomeStateCopyWith<$Res> {
  _$VaultHomeStateCopyWithImpl(this._value, this._then);

  final VaultHomeState _value;
  // ignore: unused_field
  final $Res Function(VaultHomeState) _then;

  @override
  $Res call({
    Object? query = freezed,
    Object? submitted = freezed,
    Object? focusedGroup = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      focusedGroup: focusedGroup == freezed
          ? _value.focusedGroup
          : focusedGroup // ignore: cast_nullable_to_non_nullable
              as VaultGroup?,
    ));
  }

  @override
  $VaultGroupCopyWith<$Res>? get focusedGroup {
    if (_value.focusedGroup == null) {
      return null;
    }

    return $VaultGroupCopyWith<$Res>(_value.focusedGroup!, (value) {
      return _then(_value.copyWith(focusedGroup: value));
    });
  }
}

/// @nodoc
abstract class _$$_VaultHomeStateCopyWith<$Res>
    implements $VaultHomeStateCopyWith<$Res> {
  factory _$$_VaultHomeStateCopyWith(
          _$_VaultHomeState value, $Res Function(_$_VaultHomeState) then) =
      __$$_VaultHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({String query, bool submitted, VaultGroup? focusedGroup});

  @override
  $VaultGroupCopyWith<$Res>? get focusedGroup;
}

/// @nodoc
class __$$_VaultHomeStateCopyWithImpl<$Res>
    extends _$VaultHomeStateCopyWithImpl<$Res>
    implements _$$_VaultHomeStateCopyWith<$Res> {
  __$$_VaultHomeStateCopyWithImpl(
      _$_VaultHomeState _value, $Res Function(_$_VaultHomeState) _then)
      : super(_value, (v) => _then(v as _$_VaultHomeState));

  @override
  _$_VaultHomeState get _value => super._value as _$_VaultHomeState;

  @override
  $Res call({
    Object? query = freezed,
    Object? submitted = freezed,
    Object? focusedGroup = freezed,
  }) {
    return _then(_$_VaultHomeState(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      focusedGroup: focusedGroup == freezed
          ? _value.focusedGroup
          : focusedGroup // ignore: cast_nullable_to_non_nullable
              as VaultGroup?,
    ));
  }
}

/// @nodoc

class _$_VaultHomeState implements _VaultHomeState {
  const _$_VaultHomeState(
      {required this.query,
      required this.submitted,
      required this.focusedGroup});

  @override
  final String query;
  @override
  final bool submitted;
  @override
  final VaultGroup? focusedGroup;

  @override
  String toString() {
    return 'VaultHomeState(query: $query, submitted: $submitted, focusedGroup: $focusedGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaultHomeState &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.submitted, submitted) &&
            const DeepCollectionEquality()
                .equals(other.focusedGroup, focusedGroup));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(submitted),
      const DeepCollectionEquality().hash(focusedGroup));

  @JsonKey(ignore: true)
  @override
  _$$_VaultHomeStateCopyWith<_$_VaultHomeState> get copyWith =>
      __$$_VaultHomeStateCopyWithImpl<_$_VaultHomeState>(this, _$identity);
}

abstract class _VaultHomeState implements VaultHomeState {
  const factory _VaultHomeState(
      {required final String query,
      required final bool submitted,
      required final VaultGroup? focusedGroup}) = _$_VaultHomeState;

  @override
  String get query => throw _privateConstructorUsedError;
  @override
  bool get submitted => throw _privateConstructorUsedError;
  @override
  VaultGroup? get focusedGroup => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultHomeStateCopyWith<_$_VaultHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VaultHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function() searchSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueryChangedEvent value) queryChanged,
    required TResult Function(SearchSubmittedEvent value) searchSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHomeEventCopyWith<$Res> {
  factory $VaultHomeEventCopyWith(
          VaultHomeEvent value, $Res Function(VaultHomeEvent) then) =
      _$VaultHomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VaultHomeEventCopyWithImpl<$Res>
    implements $VaultHomeEventCopyWith<$Res> {
  _$VaultHomeEventCopyWithImpl(this._value, this._then);

  final VaultHomeEvent _value;
  // ignore: unused_field
  final $Res Function(VaultHomeEvent) _then;
}

/// @nodoc
abstract class _$$QueryChangedEventCopyWith<$Res> {
  factory _$$QueryChangedEventCopyWith(
          _$QueryChangedEvent value, $Res Function(_$QueryChangedEvent) then) =
      __$$QueryChangedEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$QueryChangedEventCopyWithImpl<$Res>
    extends _$VaultHomeEventCopyWithImpl<$Res>
    implements _$$QueryChangedEventCopyWith<$Res> {
  __$$QueryChangedEventCopyWithImpl(
      _$QueryChangedEvent _value, $Res Function(_$QueryChangedEvent) _then)
      : super(_value, (v) => _then(v as _$QueryChangedEvent));

  @override
  _$QueryChangedEvent get _value => super._value as _$QueryChangedEvent;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$QueryChangedEvent(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryChangedEvent implements QueryChangedEvent {
  const _$QueryChangedEvent(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'VaultHomeEvent.queryChanged(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryChangedEvent &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$QueryChangedEventCopyWith<_$QueryChangedEvent> get copyWith =>
      __$$QueryChangedEventCopyWithImpl<_$QueryChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function() searchSubmitted,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueryChangedEvent value) queryChanged,
    required TResult Function(SearchSubmittedEvent value) searchSubmitted,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class QueryChangedEvent implements VaultHomeEvent {
  const factory QueryChangedEvent(final String query) = _$QueryChangedEvent;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QueryChangedEventCopyWith<_$QueryChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchSubmittedEventCopyWith<$Res> {
  factory _$$SearchSubmittedEventCopyWith(_$SearchSubmittedEvent value,
          $Res Function(_$SearchSubmittedEvent) then) =
      __$$SearchSubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchSubmittedEventCopyWithImpl<$Res>
    extends _$VaultHomeEventCopyWithImpl<$Res>
    implements _$$SearchSubmittedEventCopyWith<$Res> {
  __$$SearchSubmittedEventCopyWithImpl(_$SearchSubmittedEvent _value,
      $Res Function(_$SearchSubmittedEvent) _then)
      : super(_value, (v) => _then(v as _$SearchSubmittedEvent));

  @override
  _$SearchSubmittedEvent get _value => super._value as _$SearchSubmittedEvent;
}

/// @nodoc

class _$SearchSubmittedEvent implements SearchSubmittedEvent {
  const _$SearchSubmittedEvent();

  @override
  String toString() {
    return 'VaultHomeEvent.searchSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchSubmittedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function() searchSubmitted,
  }) {
    return searchSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
  }) {
    return searchSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueryChangedEvent value) queryChanged,
    required TResult Function(SearchSubmittedEvent value) searchSubmitted,
  }) {
    return searchSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
  }) {
    return searchSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(this);
    }
    return orElse();
  }
}

abstract class SearchSubmittedEvent implements VaultHomeEvent {
  const factory SearchSubmittedEvent() = _$SearchSubmittedEvent;
}
