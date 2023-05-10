// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  List<List<String>> get results => throw _privateConstructorUsedError;
  bool get treeVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VaultHomeStateCopyWith<VaultHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHomeStateCopyWith<$Res> {
  factory $VaultHomeStateCopyWith(
          VaultHomeState value, $Res Function(VaultHomeState) then) =
      _$VaultHomeStateCopyWithImpl<$Res, VaultHomeState>;
  @useResult
  $Res call(
      {String query,
      bool submitted,
      List<List<String>> results,
      bool treeVisible});
}

/// @nodoc
class _$VaultHomeStateCopyWithImpl<$Res, $Val extends VaultHomeState>
    implements $VaultHomeStateCopyWith<$Res> {
  _$VaultHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? submitted = null,
    Object? results = null,
    Object? treeVisible = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      treeVisible: null == treeVisible
          ? _value.treeVisible
          : treeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaultHomeStateCopyWith<$Res>
    implements $VaultHomeStateCopyWith<$Res> {
  factory _$$_VaultHomeStateCopyWith(
          _$_VaultHomeState value, $Res Function(_$_VaultHomeState) then) =
      __$$_VaultHomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      bool submitted,
      List<List<String>> results,
      bool treeVisible});
}

/// @nodoc
class __$$_VaultHomeStateCopyWithImpl<$Res>
    extends _$VaultHomeStateCopyWithImpl<$Res, _$_VaultHomeState>
    implements _$$_VaultHomeStateCopyWith<$Res> {
  __$$_VaultHomeStateCopyWithImpl(
      _$_VaultHomeState _value, $Res Function(_$_VaultHomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? submitted = null,
    Object? results = null,
    Object? treeVisible = null,
  }) {
    return _then(_$_VaultHomeState(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
      treeVisible: null == treeVisible
          ? _value.treeVisible
          : treeVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VaultHomeState implements _VaultHomeState {
  const _$_VaultHomeState(
      {required this.query,
      required this.submitted,
      required final List<List<String>> results,
      required this.treeVisible})
      : _results = results;

  @override
  final String query;
  @override
  final bool submitted;
  final List<List<String>> _results;
  @override
  List<List<String>> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool treeVisible;

  @override
  String toString() {
    return 'VaultHomeState(query: $query, submitted: $submitted, results: $results, treeVisible: $treeVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaultHomeState &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.treeVisible, treeVisible) ||
                other.treeVisible == treeVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, submitted,
      const DeepCollectionEquality().hash(_results), treeVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaultHomeStateCopyWith<_$_VaultHomeState> get copyWith =>
      __$$_VaultHomeStateCopyWithImpl<_$_VaultHomeState>(this, _$identity);
}

abstract class _VaultHomeState implements VaultHomeState {
  const factory _VaultHomeState(
      {required final String query,
      required final bool submitted,
      required final List<List<String>> results,
      required final bool treeVisible}) = _$_VaultHomeState;

  @override
  String get query;
  @override
  bool get submitted;
  @override
  List<List<String>> get results;
  @override
  bool get treeVisible;
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
    required TResult Function() treeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? treeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? treeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueryChangedEvent value) queryChanged,
    required TResult Function(SearchSubmittedEvent value) searchSubmitted,
    required TResult Function(TreeToggledEvent value) treeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QueryChangedEvent value)? queryChanged,
    TResult? Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult? Function(TreeToggledEvent value)? treeToggled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult Function(TreeToggledEvent value)? treeToggled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHomeEventCopyWith<$Res> {
  factory $VaultHomeEventCopyWith(
          VaultHomeEvent value, $Res Function(VaultHomeEvent) then) =
      _$VaultHomeEventCopyWithImpl<$Res, VaultHomeEvent>;
}

/// @nodoc
class _$VaultHomeEventCopyWithImpl<$Res, $Val extends VaultHomeEvent>
    implements $VaultHomeEventCopyWith<$Res> {
  _$VaultHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QueryChangedEventCopyWith<$Res> {
  factory _$$QueryChangedEventCopyWith(
          _$QueryChangedEvent value, $Res Function(_$QueryChangedEvent) then) =
      __$$QueryChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$QueryChangedEventCopyWithImpl<$Res>
    extends _$VaultHomeEventCopyWithImpl<$Res, _$QueryChangedEvent>
    implements _$$QueryChangedEventCopyWith<$Res> {
  __$$QueryChangedEventCopyWithImpl(
      _$QueryChangedEvent _value, $Res Function(_$QueryChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$QueryChangedEvent(
      null == query
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
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryChangedEventCopyWith<_$QueryChangedEvent> get copyWith =>
      __$$QueryChangedEventCopyWithImpl<_$QueryChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() treeToggled,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? treeToggled,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? treeToggled,
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
    required TResult Function(TreeToggledEvent value) treeToggled,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QueryChangedEvent value)? queryChanged,
    TResult? Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult? Function(TreeToggledEvent value)? treeToggled,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult Function(TreeToggledEvent value)? treeToggled,
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

  String get query;
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
    extends _$VaultHomeEventCopyWithImpl<$Res, _$SearchSubmittedEvent>
    implements _$$SearchSubmittedEventCopyWith<$Res> {
  __$$SearchSubmittedEventCopyWithImpl(_$SearchSubmittedEvent _value,
      $Res Function(_$SearchSubmittedEvent) _then)
      : super(_value, _then);
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
    required TResult Function() treeToggled,
  }) {
    return searchSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? treeToggled,
  }) {
    return searchSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? treeToggled,
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
    required TResult Function(TreeToggledEvent value) treeToggled,
  }) {
    return searchSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QueryChangedEvent value)? queryChanged,
    TResult? Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult? Function(TreeToggledEvent value)? treeToggled,
  }) {
    return searchSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult Function(TreeToggledEvent value)? treeToggled,
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

/// @nodoc
abstract class _$$TreeToggledEventCopyWith<$Res> {
  factory _$$TreeToggledEventCopyWith(
          _$TreeToggledEvent value, $Res Function(_$TreeToggledEvent) then) =
      __$$TreeToggledEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TreeToggledEventCopyWithImpl<$Res>
    extends _$VaultHomeEventCopyWithImpl<$Res, _$TreeToggledEvent>
    implements _$$TreeToggledEventCopyWith<$Res> {
  __$$TreeToggledEventCopyWithImpl(
      _$TreeToggledEvent _value, $Res Function(_$TreeToggledEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TreeToggledEvent implements TreeToggledEvent {
  const _$TreeToggledEvent();

  @override
  String toString() {
    return 'VaultHomeEvent.treeToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TreeToggledEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryChanged,
    required TResult Function() searchSubmitted,
    required TResult Function() treeToggled,
  }) {
    return treeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryChanged,
    TResult? Function()? searchSubmitted,
    TResult? Function()? treeToggled,
  }) {
    return treeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryChanged,
    TResult Function()? searchSubmitted,
    TResult Function()? treeToggled,
    required TResult orElse(),
  }) {
    if (treeToggled != null) {
      return treeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QueryChangedEvent value) queryChanged,
    required TResult Function(SearchSubmittedEvent value) searchSubmitted,
    required TResult Function(TreeToggledEvent value) treeToggled,
  }) {
    return treeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QueryChangedEvent value)? queryChanged,
    TResult? Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult? Function(TreeToggledEvent value)? treeToggled,
  }) {
    return treeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QueryChangedEvent value)? queryChanged,
    TResult Function(SearchSubmittedEvent value)? searchSubmitted,
    TResult Function(TreeToggledEvent value)? treeToggled,
    required TResult orElse(),
  }) {
    if (treeToggled != null) {
      return treeToggled(this);
    }
    return orElse();
  }
}

abstract class TreeToggledEvent implements VaultHomeEvent {
  const factory TreeToggledEvent() = _$TreeToggledEvent;
}
