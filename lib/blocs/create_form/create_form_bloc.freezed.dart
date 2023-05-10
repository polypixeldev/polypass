// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFormState {
  String get name => throw _privateConstructorUsedError;
  String get masterPassword => throw _privateConstructorUsedError;
  VaultUrl? get url => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  bool get created => throw _privateConstructorUsedError;
  int get errorCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFormStateCopyWith<CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFormStateCopyWith<$Res> {
  factory $CreateFormStateCopyWith(
          CreateFormState value, $Res Function(CreateFormState) then) =
      _$CreateFormStateCopyWithImpl<$Res, CreateFormState>;
  @useResult
  $Res call(
      {String name,
      String masterPassword,
      VaultUrl? url,
      bool submitted,
      bool created,
      int errorCount});

  $VaultUrlCopyWith<$Res>? get url;
}

/// @nodoc
class _$CreateFormStateCopyWithImpl<$Res, $Val extends CreateFormState>
    implements $CreateFormStateCopyWith<$Res> {
  _$CreateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? masterPassword = null,
    Object? url = freezed,
    Object? submitted = null,
    Object? created = null,
    Object? errorCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      masterPassword: null == masterPassword
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaultUrlCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $VaultUrlCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateFormStateCopyWith<$Res>
    implements $CreateFormStateCopyWith<$Res> {
  factory _$$_CreateFormStateCopyWith(
          _$_CreateFormState value, $Res Function(_$_CreateFormState) then) =
      __$$_CreateFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String masterPassword,
      VaultUrl? url,
      bool submitted,
      bool created,
      int errorCount});

  @override
  $VaultUrlCopyWith<$Res>? get url;
}

/// @nodoc
class __$$_CreateFormStateCopyWithImpl<$Res>
    extends _$CreateFormStateCopyWithImpl<$Res, _$_CreateFormState>
    implements _$$_CreateFormStateCopyWith<$Res> {
  __$$_CreateFormStateCopyWithImpl(
      _$_CreateFormState _value, $Res Function(_$_CreateFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? masterPassword = null,
    Object? url = freezed,
    Object? submitted = null,
    Object? created = null,
    Object? errorCount = null,
  }) {
    return _then(_$_CreateFormState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      masterPassword: null == masterPassword
          ? _value.masterPassword
          : masterPassword // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as bool,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCount: null == errorCount
          ? _value.errorCount
          : errorCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateFormState extends _CreateFormState {
  const _$_CreateFormState(
      {required this.name,
      required this.masterPassword,
      required this.url,
      required this.submitted,
      required this.created,
      required this.errorCount})
      : super._();

  @override
  final String name;
  @override
  final String masterPassword;
  @override
  final VaultUrl? url;
  @override
  final bool submitted;
  @override
  final bool created;
  @override
  final int errorCount;

  @override
  String toString() {
    return 'CreateFormState(name: $name, masterPassword: $masterPassword, url: $url, submitted: $submitted, created: $created, errorCount: $errorCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFormState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.masterPassword, masterPassword) ||
                other.masterPassword == masterPassword) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.errorCount, errorCount) ||
                other.errorCount == errorCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, masterPassword, url, submitted, created, errorCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      __$$_CreateFormStateCopyWithImpl<_$_CreateFormState>(this, _$identity);
}

abstract class _CreateFormState extends CreateFormState {
  const factory _CreateFormState(
      {required final String name,
      required final String masterPassword,
      required final VaultUrl? url,
      required final bool submitted,
      required final bool created,
      required final int errorCount}) = _$_CreateFormState;
  const _CreateFormState._() : super._();

  @override
  String get name;
  @override
  String get masterPassword;
  @override
  VaultUrl? get url;
  @override
  bool get submitted;
  @override
  bool get created;
  @override
  int get errorCount;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFormEventCopyWith<$Res> {
  factory $CreateFormEventCopyWith(
          CreateFormEvent value, $Res Function(CreateFormEvent) then) =
      _$CreateFormEventCopyWithImpl<$Res, CreateFormEvent>;
}

/// @nodoc
class _$CreateFormEventCopyWithImpl<$Res, $Val extends CreateFormEvent>
    implements $CreateFormEventCopyWith<$Res> {
  _$CreateFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NameChangedEventCopyWith<$Res> {
  factory _$$NameChangedEventCopyWith(
          _$NameChangedEvent value, $Res Function(_$NameChangedEvent) then) =
      __$$NameChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedEventCopyWithImpl<$Res>
    extends _$CreateFormEventCopyWithImpl<$Res, _$NameChangedEvent>
    implements _$$NameChangedEventCopyWith<$Res> {
  __$$NameChangedEventCopyWithImpl(
      _$NameChangedEvent _value, $Res Function(_$NameChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedEvent(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedEvent implements NameChangedEvent {
  const _$NameChangedEvent(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedEvent &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedEventCopyWith<_$NameChangedEvent> get copyWith =>
      __$$NameChangedEventCopyWithImpl<_$NameChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChangedEvent implements CreateFormEvent {
  const factory NameChangedEvent(final String name) = _$NameChangedEvent;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedEventCopyWith<_$NameChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CreateFormEventCopyWithImpl<$Res, _$MasterPasswordChangedEvent>
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
    return 'CreateFormEvent.masterPasswordChanged(masterPassword: $masterPassword)';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) {
    return masterPasswordChanged(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) {
    return masterPasswordChanged?.call(masterPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
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
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) {
    return masterPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) {
    return masterPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) {
    if (masterPasswordChanged != null) {
      return masterPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class MasterPasswordChangedEvent implements CreateFormEvent {
  const factory MasterPasswordChangedEvent(final String masterPassword) =
      _$MasterPasswordChangedEvent;

  String get masterPassword;
  @JsonKey(ignore: true)
  _$$MasterPasswordChangedEventCopyWith<_$MasterPasswordChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UrlChangedEventCopyWith<$Res> {
  factory _$$UrlChangedEventCopyWith(
          _$UrlChangedEvent value, $Res Function(_$UrlChangedEvent) then) =
      __$$UrlChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({VaultUrl url});

  $VaultUrlCopyWith<$Res> get url;
}

/// @nodoc
class __$$UrlChangedEventCopyWithImpl<$Res>
    extends _$CreateFormEventCopyWithImpl<$Res, _$UrlChangedEvent>
    implements _$$UrlChangedEventCopyWith<$Res> {
  __$$UrlChangedEventCopyWithImpl(
      _$UrlChangedEvent _value, $Res Function(_$UrlChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$UrlChangedEvent(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as VaultUrl,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VaultUrlCopyWith<$Res> get url {
    return $VaultUrlCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value));
    });
  }
}

/// @nodoc

class _$UrlChangedEvent implements UrlChangedEvent {
  const _$UrlChangedEvent(this.url);

  @override
  final VaultUrl url;

  @override
  String toString() {
    return 'CreateFormEvent.urlChanged(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlChangedEvent &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlChangedEventCopyWith<_$UrlChangedEvent> get copyWith =>
      __$$UrlChangedEventCopyWithImpl<_$UrlChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) {
    return urlChanged(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) {
    return urlChanged?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) {
    return urlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) {
    return urlChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(this);
    }
    return orElse();
  }
}

abstract class UrlChangedEvent implements CreateFormEvent {
  const factory UrlChangedEvent(final VaultUrl url) = _$UrlChangedEvent;

  VaultUrl get url;
  @JsonKey(ignore: true)
  _$$UrlChangedEventCopyWith<_$UrlChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormSubmittedEventCopyWith<$Res> {
  factory _$$FormSubmittedEventCopyWith(_$FormSubmittedEvent value,
          $Res Function(_$FormSubmittedEvent) then) =
      __$$FormSubmittedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FormSubmittedEventCopyWithImpl<$Res>
    extends _$CreateFormEventCopyWithImpl<$Res, _$FormSubmittedEvent>
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
    return 'CreateFormEvent.formSubmitted()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
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
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmittedEvent implements CreateFormEvent {
  const factory FormSubmittedEvent() = _$FormSubmittedEvent;
}

/// @nodoc
abstract class _$$DataClearedEventCopyWith<$Res> {
  factory _$$DataClearedEventCopyWith(
          _$DataClearedEvent value, $Res Function(_$DataClearedEvent) then) =
      __$$DataClearedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataClearedEventCopyWithImpl<$Res>
    extends _$CreateFormEventCopyWithImpl<$Res, _$DataClearedEvent>
    implements _$$DataClearedEventCopyWith<$Res> {
  __$$DataClearedEventCopyWithImpl(
      _$DataClearedEvent _value, $Res Function(_$DataClearedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataClearedEvent implements DataClearedEvent {
  const _$DataClearedEvent();

  @override
  String toString() {
    return 'CreateFormEvent.dataCleared()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataClearedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String masterPassword) masterPasswordChanged,
    required TResult Function(VaultUrl url) urlChanged,
    required TResult Function() formSubmitted,
    required TResult Function() dataCleared,
  }) {
    return dataCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String masterPassword)? masterPasswordChanged,
    TResult? Function(VaultUrl url)? urlChanged,
    TResult? Function()? formSubmitted,
    TResult? Function()? dataCleared,
  }) {
    return dataCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String masterPassword)? masterPasswordChanged,
    TResult Function(VaultUrl url)? urlChanged,
    TResult Function()? formSubmitted,
    TResult Function()? dataCleared,
    required TResult orElse(),
  }) {
    if (dataCleared != null) {
      return dataCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChangedEvent value) nameChanged,
    required TResult Function(MasterPasswordChangedEvent value)
        masterPasswordChanged,
    required TResult Function(UrlChangedEvent value) urlChanged,
    required TResult Function(FormSubmittedEvent value) formSubmitted,
    required TResult Function(DataClearedEvent value) dataCleared,
  }) {
    return dataCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChangedEvent value)? nameChanged,
    TResult? Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult? Function(UrlChangedEvent value)? urlChanged,
    TResult? Function(FormSubmittedEvent value)? formSubmitted,
    TResult? Function(DataClearedEvent value)? dataCleared,
  }) {
    return dataCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChangedEvent value)? nameChanged,
    TResult Function(MasterPasswordChangedEvent value)? masterPasswordChanged,
    TResult Function(UrlChangedEvent value)? urlChanged,
    TResult Function(FormSubmittedEvent value)? formSubmitted,
    TResult Function(DataClearedEvent value)? dataCleared,
    required TResult orElse(),
  }) {
    if (dataCleared != null) {
      return dataCleared(this);
    }
    return orElse();
  }
}

abstract class DataClearedEvent implements CreateFormEvent {
  const factory DataClearedEvent() = _$DataClearedEvent;
}
