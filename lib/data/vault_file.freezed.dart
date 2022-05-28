// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'vault_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EncryptedData<T extends ToJsonAble<dynamic>> {
  IV get iv => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv) encrypted,
    required TResult Function(@EncTypeConverter() T data, IV iv) decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Encrypted<T> value) encrypted,
    required TResult Function(_Decrypted<T> value) decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EncryptedDataCopyWith<T, EncryptedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedDataCopyWith<T extends ToJsonAble<dynamic>, $Res> {
  factory $EncryptedDataCopyWith(
          EncryptedData<T> value, $Res Function(EncryptedData<T>) then) =
      _$EncryptedDataCopyWithImpl<T, $Res>;
  $Res call({IV iv});
}

/// @nodoc
class _$EncryptedDataCopyWithImpl<T extends ToJsonAble<dynamic>, $Res>
    implements $EncryptedDataCopyWith<T, $Res> {
  _$EncryptedDataCopyWithImpl(this._value, this._then);

  final EncryptedData<T> _value;
  // ignore: unused_field
  final $Res Function(EncryptedData<T>) _then;

  @override
  $Res call({
    Object? iv = freezed,
  }) {
    return _then(_value.copyWith(
      iv: iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
    ));
  }
}

/// @nodoc
abstract class _$$_EncryptedCopyWith<T extends ToJsonAble<dynamic>, $Res>
    implements $EncryptedDataCopyWith<T, $Res> {
  factory _$$_EncryptedCopyWith(
          _$_Encrypted<T> value, $Res Function(_$_Encrypted<T>) then) =
      __$$_EncryptedCopyWithImpl<T, $Res>;
  @override
  $Res call({String data, IV iv});
}

/// @nodoc
class __$$_EncryptedCopyWithImpl<T extends ToJsonAble<dynamic>, $Res>
    extends _$EncryptedDataCopyWithImpl<T, $Res>
    implements _$$_EncryptedCopyWith<T, $Res> {
  __$$_EncryptedCopyWithImpl(
      _$_Encrypted<T> _value, $Res Function(_$_Encrypted<T>) _then)
      : super(_value, (v) => _then(v as _$_Encrypted<T>));

  @override
  _$_Encrypted<T> get _value => super._value as _$_Encrypted<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? iv = freezed,
  }) {
    return _then(_$_Encrypted<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
    ));
  }
}

/// @nodoc

class _$_Encrypted<T extends ToJsonAble<dynamic>> extends _Encrypted<T> {
  const _$_Encrypted(this.data, this.iv) : super._();

  @override
  final String data;
  @override
  final IV iv;

  @override
  String toString() {
    return 'EncryptedData<$T>.encrypted(data: $data, iv: $iv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Encrypted<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.iv, iv));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(iv));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptedCopyWith<T, _$_Encrypted<T>> get copyWith =>
      __$$_EncryptedCopyWithImpl<T, _$_Encrypted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv) encrypted,
    required TResult Function(@EncTypeConverter() T data, IV iv) decrypted,
  }) {
    return encrypted(data, iv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
  }) {
    return encrypted?.call(data, iv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
    required TResult orElse(),
  }) {
    if (encrypted != null) {
      return encrypted(data, iv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Encrypted<T> value) encrypted,
    required TResult Function(_Decrypted<T> value) decrypted,
  }) {
    return encrypted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
  }) {
    return encrypted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
    required TResult orElse(),
  }) {
    if (encrypted != null) {
      return encrypted(this);
    }
    return orElse();
  }
}

abstract class _Encrypted<T extends ToJsonAble<dynamic>>
    extends EncryptedData<T> {
  const factory _Encrypted(final String data, final IV iv) = _$_Encrypted<T>;
  const _Encrypted._() : super._();

  String get data => throw _privateConstructorUsedError;
  @override
  IV get iv => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedCopyWith<T, _$_Encrypted<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecryptedCopyWith<T extends ToJsonAble<dynamic>, $Res>
    implements $EncryptedDataCopyWith<T, $Res> {
  factory _$$_DecryptedCopyWith(
          _$_Decrypted<T> value, $Res Function(_$_Decrypted<T>) then) =
      __$$_DecryptedCopyWithImpl<T, $Res>;
  @override
  $Res call({@EncTypeConverter() T data, IV iv});
}

/// @nodoc
class __$$_DecryptedCopyWithImpl<T extends ToJsonAble<dynamic>, $Res>
    extends _$EncryptedDataCopyWithImpl<T, $Res>
    implements _$$_DecryptedCopyWith<T, $Res> {
  __$$_DecryptedCopyWithImpl(
      _$_Decrypted<T> _value, $Res Function(_$_Decrypted<T>) _then)
      : super(_value, (v) => _then(v as _$_Decrypted<T>));

  @override
  _$_Decrypted<T> get _value => super._value as _$_Decrypted<T>;

  @override
  $Res call({
    Object? data = freezed,
    Object? iv = freezed,
  }) {
    return _then(_$_Decrypted<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      iv == freezed
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
    ));
  }
}

/// @nodoc

class _$_Decrypted<T extends ToJsonAble<dynamic>> extends _Decrypted<T> {
  const _$_Decrypted(@EncTypeConverter() this.data, this.iv) : super._();

  @override
  @EncTypeConverter()
  final T data;
  @override
  final IV iv;

  @override
  String toString() {
    return 'EncryptedData<$T>.decrypted(data: $data, iv: $iv)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Decrypted<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.iv, iv));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(iv));

  @JsonKey(ignore: true)
  @override
  _$$_DecryptedCopyWith<T, _$_Decrypted<T>> get copyWith =>
      __$$_DecryptedCopyWithImpl<T, _$_Decrypted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv) encrypted,
    required TResult Function(@EncTypeConverter() T data, IV iv) decrypted,
  }) {
    return decrypted(data, iv);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
  }) {
    return decrypted?.call(data, iv);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv)? encrypted,
    TResult Function(@EncTypeConverter() T data, IV iv)? decrypted,
    required TResult orElse(),
  }) {
    if (decrypted != null) {
      return decrypted(data, iv);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Encrypted<T> value) encrypted,
    required TResult Function(_Decrypted<T> value) decrypted,
  }) {
    return decrypted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
  }) {
    return decrypted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Encrypted<T> value)? encrypted,
    TResult Function(_Decrypted<T> value)? decrypted,
    required TResult orElse(),
  }) {
    if (decrypted != null) {
      return decrypted(this);
    }
    return orElse();
  }
}

abstract class _Decrypted<T extends ToJsonAble<dynamic>>
    extends EncryptedData<T> {
  const factory _Decrypted(@EncTypeConverter() final T data, final IV iv) =
      _$_Decrypted<T>;
  const _Decrypted._() : super._();

  @EncTypeConverter()
  T get data => throw _privateConstructorUsedError;
  @override
  IV get iv => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DecryptedCopyWith<T, _$_Decrypted<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultFile _$VaultFileFromJson(Map<String, dynamic> json) {
  return _VaultFile.fromJson(json);
}

/// @nodoc
mixin _$VaultFile {
  VaultHeader get header => throw _privateConstructorUsedError;
  set header(VaultHeader value) => throw _privateConstructorUsedError;
  EncryptedData<VaultContents> get contents =>
      throw _privateConstructorUsedError;
  set contents(EncryptedData<VaultContents> value) =>
      throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  set path(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultFileCopyWith<VaultFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultFileCopyWith<$Res> {
  factory $VaultFileCopyWith(VaultFile value, $Res Function(VaultFile) then) =
      _$VaultFileCopyWithImpl<$Res>;
  $Res call(
      {VaultHeader header, EncryptedData<VaultContents> contents, String path});

  $VaultHeaderCopyWith<$Res> get header;
  $EncryptedDataCopyWith<VaultContents, $Res> get contents;
}

/// @nodoc
class _$VaultFileCopyWithImpl<$Res> implements $VaultFileCopyWith<$Res> {
  _$VaultFileCopyWithImpl(this._value, this._then);

  final VaultFile _value;
  // ignore: unused_field
  final $Res Function(VaultFile) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? contents = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as VaultHeader,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultContents>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $VaultHeaderCopyWith<$Res> get header {
    return $VaultHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  $EncryptedDataCopyWith<VaultContents, $Res> get contents {
    return $EncryptedDataCopyWith<VaultContents, $Res>(_value.contents,
        (value) {
      return _then(_value.copyWith(contents: value));
    });
  }
}

/// @nodoc
abstract class _$$_VaultFileCopyWith<$Res> implements $VaultFileCopyWith<$Res> {
  factory _$$_VaultFileCopyWith(
          _$_VaultFile value, $Res Function(_$_VaultFile) then) =
      __$$_VaultFileCopyWithImpl<$Res>;
  @override
  $Res call(
      {VaultHeader header, EncryptedData<VaultContents> contents, String path});

  @override
  $VaultHeaderCopyWith<$Res> get header;
  @override
  $EncryptedDataCopyWith<VaultContents, $Res> get contents;
}

/// @nodoc
class __$$_VaultFileCopyWithImpl<$Res> extends _$VaultFileCopyWithImpl<$Res>
    implements _$$_VaultFileCopyWith<$Res> {
  __$$_VaultFileCopyWithImpl(
      _$_VaultFile _value, $Res Function(_$_VaultFile) _then)
      : super(_value, (v) => _then(v as _$_VaultFile));

  @override
  _$_VaultFile get _value => super._value as _$_VaultFile;

  @override
  $Res call({
    Object? header = freezed,
    Object? contents = freezed,
    Object? path = freezed,
  }) {
    return _then(_$_VaultFile(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as VaultHeader,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultContents>,
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultFile extends _VaultFile {
  _$_VaultFile(
      {required this.header, required this.contents, required this.path})
      : super._();

  factory _$_VaultFile.fromJson(Map<String, dynamic> json) =>
      _$$_VaultFileFromJson(json);

  @override
  VaultHeader header;
  @override
  EncryptedData<VaultContents> contents;
  @override
  String path;

  @override
  String toString() {
    return 'VaultFile(header: $header, contents: $contents, path: $path)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultFileCopyWith<_$_VaultFile> get copyWith =>
      __$$_VaultFileCopyWithImpl<_$_VaultFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultFileToJson(this);
  }
}

abstract class _VaultFile extends VaultFile {
  factory _VaultFile(
      {required VaultHeader header,
      required EncryptedData<VaultContents> contents,
      required String path}) = _$_VaultFile;
  _VaultFile._() : super._();

  factory _VaultFile.fromJson(Map<String, dynamic> json) =
      _$_VaultFile.fromJson;

  @override
  VaultHeader get header => throw _privateConstructorUsedError;
  @override
  EncryptedData<VaultContents> get contents =>
      throw _privateConstructorUsedError;
  @override
  String get path => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultFileCopyWith<_$_VaultFile> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultHeader _$VaultHeaderFromJson(Map<String, dynamic> json) {
  return _VaultHeader.fromJson(json);
}

/// @nodoc
mixin _$VaultHeader {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultHeaderCopyWith<VaultHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHeaderCopyWith<$Res> {
  factory $VaultHeaderCopyWith(
          VaultHeader value, $Res Function(VaultHeader) then) =
      _$VaultHeaderCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$VaultHeaderCopyWithImpl<$Res> implements $VaultHeaderCopyWith<$Res> {
  _$VaultHeaderCopyWithImpl(this._value, this._then);

  final VaultHeader _value;
  // ignore: unused_field
  final $Res Function(VaultHeader) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultHeaderCopyWith<$Res>
    implements $VaultHeaderCopyWith<$Res> {
  factory _$$_VaultHeaderCopyWith(
          _$_VaultHeader value, $Res Function(_$_VaultHeader) then) =
      __$$_VaultHeaderCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$$_VaultHeaderCopyWithImpl<$Res> extends _$VaultHeaderCopyWithImpl<$Res>
    implements _$$_VaultHeaderCopyWith<$Res> {
  __$$_VaultHeaderCopyWithImpl(
      _$_VaultHeader _value, $Res Function(_$_VaultHeader) _then)
      : super(_value, (v) => _then(v as _$_VaultHeader));

  @override
  _$_VaultHeader get _value => super._value as _$_VaultHeader;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_VaultHeader(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultHeader implements _VaultHeader {
  const _$_VaultHeader({required this.name, required this.description});

  factory _$_VaultHeader.fromJson(Map<String, dynamic> json) =>
      _$$_VaultHeaderFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'VaultHeader(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaultHeader &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_VaultHeaderCopyWith<_$_VaultHeader> get copyWith =>
      __$$_VaultHeaderCopyWithImpl<_$_VaultHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultHeaderToJson(this);
  }
}

abstract class _VaultHeader implements VaultHeader {
  const factory _VaultHeader(
      {required final String name,
      required final String description}) = _$_VaultHeader;

  factory _VaultHeader.fromJson(Map<String, dynamic> json) =
      _$_VaultHeader.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultHeaderCopyWith<_$_VaultHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultContents _$VaultContentsFromJson(Map<String, dynamic> json) {
  return _VaultContents.fromJson(json);
}

/// @nodoc
mixin _$VaultContents {
  List<VaultComponent> get components => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultContentsCopyWith<VaultContents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultContentsCopyWith<$Res> {
  factory $VaultContentsCopyWith(
          VaultContents value, $Res Function(VaultContents) then) =
      _$VaultContentsCopyWithImpl<$Res>;
  $Res call({List<VaultComponent> components});
}

/// @nodoc
class _$VaultContentsCopyWithImpl<$Res>
    implements $VaultContentsCopyWith<$Res> {
  _$VaultContentsCopyWithImpl(this._value, this._then);

  final VaultContents _value;
  // ignore: unused_field
  final $Res Function(VaultContents) _then;

  @override
  $Res call({
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultContentsCopyWith<$Res>
    implements $VaultContentsCopyWith<$Res> {
  factory _$$_VaultContentsCopyWith(
          _$_VaultContents value, $Res Function(_$_VaultContents) then) =
      __$$_VaultContentsCopyWithImpl<$Res>;
  @override
  $Res call({List<VaultComponent> components});
}

/// @nodoc
class __$$_VaultContentsCopyWithImpl<$Res>
    extends _$VaultContentsCopyWithImpl<$Res>
    implements _$$_VaultContentsCopyWith<$Res> {
  __$$_VaultContentsCopyWithImpl(
      _$_VaultContents _value, $Res Function(_$_VaultContents) _then)
      : super(_value, (v) => _then(v as _$_VaultContents));

  @override
  _$_VaultContents get _value => super._value as _$_VaultContents;

  @override
  $Res call({
    Object? components = freezed,
  }) {
    return _then(_$_VaultContents(
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultContents implements _VaultContents {
  const _$_VaultContents({required final List<VaultComponent> components})
      : _components = components;

  factory _$_VaultContents.fromJson(Map<String, dynamic> json) =>
      _$$_VaultContentsFromJson(json);

  final List<VaultComponent> _components;
  @override
  List<VaultComponent> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  String toString() {
    return 'VaultContents(components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaultContents &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  _$$_VaultContentsCopyWith<_$_VaultContents> get copyWith =>
      __$$_VaultContentsCopyWithImpl<_$_VaultContents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultContentsToJson(this);
  }
}

abstract class _VaultContents implements VaultContents {
  const factory _VaultContents(
      {required final List<VaultComponent> components}) = _$_VaultContents;

  factory _VaultContents.fromJson(Map<String, dynamic> json) =
      _$_VaultContents.fromJson;

  @override
  List<VaultComponent> get components => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultContentsCopyWith<_$_VaultContents> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultComponent _$VaultComponentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'category':
      return Category.fromJson(json);
    case 'item':
      return Item.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'VaultComponent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VaultComponent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultCategory category) category,
    required TResult Function(VaultItem item) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Category value) category,
    required TResult Function(Item value) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultComponentCopyWith<$Res> {
  factory $VaultComponentCopyWith(
          VaultComponent value, $Res Function(VaultComponent) then) =
      _$VaultComponentCopyWithImpl<$Res>;
}

/// @nodoc
class _$VaultComponentCopyWithImpl<$Res>
    implements $VaultComponentCopyWith<$Res> {
  _$VaultComponentCopyWithImpl(this._value, this._then);

  final VaultComponent _value;
  // ignore: unused_field
  final $Res Function(VaultComponent) _then;
}

/// @nodoc
abstract class _$$CategoryCopyWith<$Res> {
  factory _$$CategoryCopyWith(
          _$Category value, $Res Function(_$Category) then) =
      __$$CategoryCopyWithImpl<$Res>;
  $Res call({VaultCategory category});

  $VaultCategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryCopyWithImpl<$Res> extends _$VaultComponentCopyWithImpl<$Res>
    implements _$$CategoryCopyWith<$Res> {
  __$$CategoryCopyWithImpl(_$Category _value, $Res Function(_$Category) _then)
      : super(_value, (v) => _then(v as _$Category));

  @override
  _$Category get _value => super._value as _$Category;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$Category(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as VaultCategory,
    ));
  }

  @override
  $VaultCategoryCopyWith<$Res> get category {
    return $VaultCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Category implements Category {
  const _$Category(this.category, {final String? $type})
      : $type = $type ?? 'category';

  factory _$Category.fromJson(Map<String, dynamic> json) =>
      _$$CategoryFromJson(json);

  @override
  final VaultCategory category;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultComponent.category(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Category &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$CategoryCopyWith<_$Category> get copyWith =>
      __$$CategoryCopyWithImpl<_$Category>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultCategory category) category,
    required TResult Function(VaultItem item) item,
  }) {
    return category(this.category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
  }) {
    return category?.call(this.category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this.category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Category value) category,
    required TResult Function(Item value) item,
  }) {
    return category(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
  }) {
    return category?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
    required TResult orElse(),
  }) {
    if (category != null) {
      return category(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryToJson(this);
  }
}

abstract class Category implements VaultComponent {
  const factory Category(final VaultCategory category) = _$Category;

  factory Category.fromJson(Map<String, dynamic> json) = _$Category.fromJson;

  VaultCategory get category => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$CategoryCopyWith<_$Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCopyWith<$Res> {
  factory _$$ItemCopyWith(_$Item value, $Res Function(_$Item) then) =
      __$$ItemCopyWithImpl<$Res>;
  $Res call({VaultItem item});

  $VaultItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemCopyWithImpl<$Res> extends _$VaultComponentCopyWithImpl<$Res>
    implements _$$ItemCopyWith<$Res> {
  __$$ItemCopyWithImpl(_$Item _value, $Res Function(_$Item) _then)
      : super(_value, (v) => _then(v as _$Item));

  @override
  _$Item get _value => super._value as _$Item;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(_$Item(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as VaultItem,
    ));
  }

  @override
  $VaultItemCopyWith<$Res> get item {
    return $VaultItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Item implements Item {
  const _$Item(this.item, {final String? $type}) : $type = $type ?? 'item';

  factory _$Item.fromJson(Map<String, dynamic> json) => _$$ItemFromJson(json);

  @override
  final VaultItem item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultComponent.item(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Item &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  _$$ItemCopyWith<_$Item> get copyWith =>
      __$$ItemCopyWithImpl<_$Item>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultCategory category) category,
    required TResult Function(VaultItem item) item,
  }) {
    return item(this.item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
  }) {
    return item?.call(this.item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultCategory category)? category,
    TResult Function(VaultItem item)? item,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this.item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Category value) category,
    required TResult Function(Item value) item,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Category value)? category,
    TResult Function(Item value)? item,
    required TResult orElse(),
  }) {
    if (item != null) {
      return item(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemToJson(this);
  }
}

abstract class Item implements VaultComponent {
  const factory Item(final VaultItem item) = _$Item;

  factory Item.fromJson(Map<String, dynamic> json) = _$Item.fromJson;

  VaultItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ItemCopyWith<_$Item> get copyWith => throw _privateConstructorUsedError;
}

VaultCategory _$VaultCategoryFromJson(Map<String, dynamic> json) {
  return _VaultCategory.fromJson(json);
}

/// @nodoc
mixin _$VaultCategory {
  String get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  List<VaultComponent> get components => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultCategoryCopyWith<VaultCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultCategoryCopyWith<$Res> {
  factory $VaultCategoryCopyWith(
          VaultCategory value, $Res Function(VaultCategory) then) =
      _$VaultCategoryCopyWithImpl<$Res>;
  $Res call({String name, String? icon, List<VaultComponent> components});
}

/// @nodoc
class _$VaultCategoryCopyWithImpl<$Res>
    implements $VaultCategoryCopyWith<$Res> {
  _$VaultCategoryCopyWithImpl(this._value, this._then);

  final VaultCategory _value;
  // ignore: unused_field
  final $Res Function(VaultCategory) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultCategoryCopyWith<$Res>
    implements $VaultCategoryCopyWith<$Res> {
  factory _$$_VaultCategoryCopyWith(
          _$_VaultCategory value, $Res Function(_$_VaultCategory) then) =
      __$$_VaultCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String name, String? icon, List<VaultComponent> components});
}

/// @nodoc
class __$$_VaultCategoryCopyWithImpl<$Res>
    extends _$VaultCategoryCopyWithImpl<$Res>
    implements _$$_VaultCategoryCopyWith<$Res> {
  __$$_VaultCategoryCopyWithImpl(
      _$_VaultCategory _value, $Res Function(_$_VaultCategory) _then)
      : super(_value, (v) => _then(v as _$_VaultCategory));

  @override
  _$_VaultCategory get _value => super._value as _$_VaultCategory;

  @override
  $Res call({
    Object? name = freezed,
    Object? icon = freezed,
    Object? components = freezed,
  }) {
    return _then(_$_VaultCategory(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultCategory implements _VaultCategory {
  const _$_VaultCategory(
      {required this.name,
      this.icon,
      final List<VaultComponent> components = const []})
      : _components = components;

  factory _$_VaultCategory.fromJson(Map<String, dynamic> json) =>
      _$$_VaultCategoryFromJson(json);

  @override
  final String name;
  @override
  final String? icon;
  final List<VaultComponent> _components;
  @override
  @JsonKey()
  List<VaultComponent> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  String toString() {
    return 'VaultCategory(name: $name, icon: $icon, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaultCategory &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  _$$_VaultCategoryCopyWith<_$_VaultCategory> get copyWith =>
      __$$_VaultCategoryCopyWithImpl<_$_VaultCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultCategoryToJson(this);
  }
}

abstract class _VaultCategory implements VaultCategory {
  const factory _VaultCategory(
      {required final String name,
      final String? icon,
      final List<VaultComponent> components}) = _$_VaultCategory;

  factory _VaultCategory.fromJson(Map<String, dynamic> json) =
      _$_VaultCategory.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override
  List<VaultComponent> get components => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultCategoryCopyWith<_$_VaultCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultItem _$VaultItemFromJson(Map<String, dynamic> json) {
  return _VaultItem.fromJson(json);
}

/// @nodoc
mixin _$VaultItem {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultItemCopyWith<$Res> {
  factory $VaultItemCopyWith(VaultItem value, $Res Function(VaultItem) then) =
      _$VaultItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$VaultItemCopyWithImpl<$Res> implements $VaultItemCopyWith<$Res> {
  _$VaultItemCopyWithImpl(this._value, this._then);

  final VaultItem _value;
  // ignore: unused_field
  final $Res Function(VaultItem) _then;
}

/// @nodoc
abstract class _$$_VaultItemCopyWith<$Res> {
  factory _$$_VaultItemCopyWith(
          _$_VaultItem value, $Res Function(_$_VaultItem) then) =
      __$$_VaultItemCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VaultItemCopyWithImpl<$Res> extends _$VaultItemCopyWithImpl<$Res>
    implements _$$_VaultItemCopyWith<$Res> {
  __$$_VaultItemCopyWithImpl(
      _$_VaultItem _value, $Res Function(_$_VaultItem) _then)
      : super(_value, (v) => _then(v as _$_VaultItem));

  @override
  _$_VaultItem get _value => super._value as _$_VaultItem;
}

/// @nodoc
@JsonSerializable()
class _$_VaultItem implements _VaultItem {
  const _$_VaultItem();

  factory _$_VaultItem.fromJson(Map<String, dynamic> json) =>
      _$$_VaultItemFromJson(json);

  @override
  String toString() {
    return 'VaultItem()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VaultItem);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultItemToJson(this);
  }
}

abstract class _VaultItem implements VaultItem {
  const factory _VaultItem() = _$_VaultItem;

  factory _VaultItem.fromJson(Map<String, dynamic> json) =
      _$_VaultItem.fromJson;
}
