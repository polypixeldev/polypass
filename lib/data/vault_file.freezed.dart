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
  set iv(IV value) => throw _privateConstructorUsedError;
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
  _$_Encrypted(this.data, this.iv) : super._();

  @override
  String data;
  @override
  IV iv;

  @override
  String toString() {
    return 'EncryptedData<$T>.encrypted(data: $data, iv: $iv)';
  }

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
  factory _Encrypted(String data, IV iv) = _$_Encrypted<T>;
  _Encrypted._() : super._();

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
  _$_Decrypted(@EncTypeConverter() this.data, this.iv) : super._();

  @override
  @EncTypeConverter()
  T data;
  @override
  IV iv;

  @override
  String toString() {
    return 'EncryptedData<$T>.decrypted(data: $data, iv: $iv)';
  }

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
  factory _Decrypted(@EncTypeConverter() T data, IV iv) = _$_Decrypted<T>;
  _Decrypted._() : super._();

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
  @JsonKey(ignore: true)
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  set path(String? value) => throw _privateConstructorUsedError;

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
      {VaultHeader header,
      EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) String? path});

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
              as String?,
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
      {VaultHeader header,
      EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) String? path});

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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultFile extends _VaultFile {
  _$_VaultFile(
      {required this.header,
      required this.contents,
      @JsonKey(ignore: true) this.path})
      : super._();

  factory _$_VaultFile.fromJson(Map<String, dynamic> json) =>
      _$$_VaultFileFromJson(json);

  @override
  VaultHeader header;
  @override
  EncryptedData<VaultContents> contents;
  @override
  @JsonKey(ignore: true)
  String? path;

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
      @JsonKey(ignore: true) String? path}) = _$_VaultFile;
  _VaultFile._() : super._();

  factory _VaultFile.fromJson(Map<String, dynamic> json) =
      _$_VaultFile.fromJson;

  @override
  VaultHeader get header => throw _privateConstructorUsedError;
  @override
  EncryptedData<VaultContents> get contents =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  String? get path => throw _privateConstructorUsedError;
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
  set name(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  VaultSettings get settings => throw _privateConstructorUsedError;
  set settings(VaultSettings value) => throw _privateConstructorUsedError;
  MagicValue get magic => throw _privateConstructorUsedError;
  set magic(MagicValue value) => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  set key(String value) => throw _privateConstructorUsedError;

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
  $Res call(
      {String name,
      String description,
      VaultSettings settings,
      MagicValue magic,
      String key});

  $VaultSettingsCopyWith<$Res> get settings;
  $MagicValueCopyWith<$Res> get magic;
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
    Object? settings = freezed,
    Object? magic = freezed,
    Object? key = freezed,
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
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      magic: magic == freezed
          ? _value.magic
          : magic // ignore: cast_nullable_to_non_nullable
              as MagicValue,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $VaultSettingsCopyWith<$Res> get settings {
    return $VaultSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value));
    });
  }

  @override
  $MagicValueCopyWith<$Res> get magic {
    return $MagicValueCopyWith<$Res>(_value.magic, (value) {
      return _then(_value.copyWith(magic: value));
    });
  }
}

/// @nodoc
abstract class _$$_VaultHeaderCopyWith<$Res>
    implements $VaultHeaderCopyWith<$Res> {
  factory _$$_VaultHeaderCopyWith(
          _$_VaultHeader value, $Res Function(_$_VaultHeader) then) =
      __$$_VaultHeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      VaultSettings settings,
      MagicValue magic,
      String key});

  @override
  $VaultSettingsCopyWith<$Res> get settings;
  @override
  $MagicValueCopyWith<$Res> get magic;
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
    Object? settings = freezed,
    Object? magic = freezed,
    Object? key = freezed,
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
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      magic: magic == freezed
          ? _value.magic
          : magic // ignore: cast_nullable_to_non_nullable
              as MagicValue,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultHeader extends _VaultHeader {
  _$_VaultHeader(
      {required this.name,
      required this.description,
      required this.settings,
      required this.magic,
      required this.key})
      : super._();

  factory _$_VaultHeader.fromJson(Map<String, dynamic> json) =>
      _$$_VaultHeaderFromJson(json);

  @override
  String name;
  @override
  String description;
  @override
  VaultSettings settings;
  @override
  MagicValue magic;
  @override
  String key;

  @override
  String toString() {
    return 'VaultHeader(name: $name, description: $description, settings: $settings, magic: $magic, key: $key)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultHeaderCopyWith<_$_VaultHeader> get copyWith =>
      __$$_VaultHeaderCopyWithImpl<_$_VaultHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultHeaderToJson(this);
  }
}

abstract class _VaultHeader extends VaultHeader {
  factory _VaultHeader(
      {required String name,
      required String description,
      required VaultSettings settings,
      required MagicValue magic,
      required String key}) = _$_VaultHeader;
  _VaultHeader._() : super._();

  factory _VaultHeader.fromJson(Map<String, dynamic> json) =
      _$_VaultHeader.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  VaultSettings get settings => throw _privateConstructorUsedError;
  @override
  MagicValue get magic => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultHeaderCopyWith<_$_VaultHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

MagicValue _$MagicValueFromJson(Map<String, dynamic> json) {
  return _MagicValue.fromJson(json);
}

/// @nodoc
mixin _$MagicValue {
  String get value => throw _privateConstructorUsedError;
  set value(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MagicValueCopyWith<MagicValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagicValueCopyWith<$Res> {
  factory $MagicValueCopyWith(
          MagicValue value, $Res Function(MagicValue) then) =
      _$MagicValueCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$MagicValueCopyWithImpl<$Res> implements $MagicValueCopyWith<$Res> {
  _$MagicValueCopyWithImpl(this._value, this._then);

  final MagicValue _value;
  // ignore: unused_field
  final $Res Function(MagicValue) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MagicValueCopyWith<$Res>
    implements $MagicValueCopyWith<$Res> {
  factory _$$_MagicValueCopyWith(
          _$_MagicValue value, $Res Function(_$_MagicValue) then) =
      __$$_MagicValueCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_MagicValueCopyWithImpl<$Res> extends _$MagicValueCopyWithImpl<$Res>
    implements _$$_MagicValueCopyWith<$Res> {
  __$$_MagicValueCopyWithImpl(
      _$_MagicValue _value, $Res Function(_$_MagicValue) _then)
      : super(_value, (v) => _then(v as _$_MagicValue));

  @override
  _$_MagicValue get _value => super._value as _$_MagicValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_MagicValue(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MagicValue implements _MagicValue {
  _$_MagicValue(this.value);

  factory _$_MagicValue.fromJson(Map<String, dynamic> json) =>
      _$$_MagicValueFromJson(json);

  @override
  String value;

  @override
  String toString() {
    return 'MagicValue(value: $value)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_MagicValueCopyWith<_$_MagicValue> get copyWith =>
      __$$_MagicValueCopyWithImpl<_$_MagicValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MagicValueToJson(this);
  }
}

abstract class _MagicValue implements MagicValue {
  factory _MagicValue(String value) = _$_MagicValue;

  factory _MagicValue.fromJson(Map<String, dynamic> json) =
      _$_MagicValue.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MagicValueCopyWith<_$_MagicValue> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultSettings _$VaultSettingsFromJson(Map<String, dynamic> json) {
  return _VaultSettings.fromJson(json);
}

/// @nodoc
mixin _$VaultSettings {
  bool get saveKeyInMemory => throw _privateConstructorUsedError;
  set saveKeyInMemory(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultSettingsCopyWith<VaultSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultSettingsCopyWith<$Res> {
  factory $VaultSettingsCopyWith(
          VaultSettings value, $Res Function(VaultSettings) then) =
      _$VaultSettingsCopyWithImpl<$Res>;
  $Res call({bool saveKeyInMemory});
}

/// @nodoc
class _$VaultSettingsCopyWithImpl<$Res>
    implements $VaultSettingsCopyWith<$Res> {
  _$VaultSettingsCopyWithImpl(this._value, this._then);

  final VaultSettings _value;
  // ignore: unused_field
  final $Res Function(VaultSettings) _then;

  @override
  $Res call({
    Object? saveKeyInMemory = freezed,
  }) {
    return _then(_value.copyWith(
      saveKeyInMemory: saveKeyInMemory == freezed
          ? _value.saveKeyInMemory
          : saveKeyInMemory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultSettingsCopyWith<$Res>
    implements $VaultSettingsCopyWith<$Res> {
  factory _$$_VaultSettingsCopyWith(
          _$_VaultSettings value, $Res Function(_$_VaultSettings) then) =
      __$$_VaultSettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool saveKeyInMemory});
}

/// @nodoc
class __$$_VaultSettingsCopyWithImpl<$Res>
    extends _$VaultSettingsCopyWithImpl<$Res>
    implements _$$_VaultSettingsCopyWith<$Res> {
  __$$_VaultSettingsCopyWithImpl(
      _$_VaultSettings _value, $Res Function(_$_VaultSettings) _then)
      : super(_value, (v) => _then(v as _$_VaultSettings));

  @override
  _$_VaultSettings get _value => super._value as _$_VaultSettings;

  @override
  $Res call({
    Object? saveKeyInMemory = freezed,
  }) {
    return _then(_$_VaultSettings(
      saveKeyInMemory: saveKeyInMemory == freezed
          ? _value.saveKeyInMemory
          : saveKeyInMemory // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultSettings implements _VaultSettings {
  _$_VaultSettings({required this.saveKeyInMemory});

  factory _$_VaultSettings.fromJson(Map<String, dynamic> json) =>
      _$$_VaultSettingsFromJson(json);

  @override
  bool saveKeyInMemory;

  @override
  String toString() {
    return 'VaultSettings(saveKeyInMemory: $saveKeyInMemory)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultSettingsCopyWith<_$_VaultSettings> get copyWith =>
      __$$_VaultSettingsCopyWithImpl<_$_VaultSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultSettingsToJson(this);
  }
}

abstract class _VaultSettings implements VaultSettings {
  factory _VaultSettings({required bool saveKeyInMemory}) = _$_VaultSettings;

  factory _VaultSettings.fromJson(Map<String, dynamic> json) =
      _$_VaultSettings.fromJson;

  @override
  bool get saveKeyInMemory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultSettingsCopyWith<_$_VaultSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultContents _$VaultContentsFromJson(Map<String, dynamic> json) {
  return _VaultContents.fromJson(json);
}

/// @nodoc
mixin _$VaultContents {
  List<VaultComponent> get components => throw _privateConstructorUsedError;
  set components(List<VaultComponent> value) =>
      throw _privateConstructorUsedError;

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
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultContents implements _VaultContents {
  _$_VaultContents({required this.components});

  factory _$_VaultContents.fromJson(Map<String, dynamic> json) =>
      _$$_VaultContentsFromJson(json);

  @override
  List<VaultComponent> components;

  @override
  String toString() {
    return 'VaultContents(components: $components)';
  }

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
  factory _VaultContents({required List<VaultComponent> components}) =
      _$_VaultContents;

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
    case 'group':
      return Group.fromJson(json);
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
    required TResult Function(VaultGroup group) group,
    required TResult Function(VaultItem item) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
    TResult Function(VaultItem item)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
    TResult Function(VaultItem item)? item,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Group value) group,
    required TResult Function(Item value) item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Item value)? item,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
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
abstract class _$$GroupCopyWith<$Res> {
  factory _$$GroupCopyWith(_$Group value, $Res Function(_$Group) then) =
      __$$GroupCopyWithImpl<$Res>;
  $Res call({VaultGroup group});

  $VaultGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupCopyWithImpl<$Res> extends _$VaultComponentCopyWithImpl<$Res>
    implements _$$GroupCopyWith<$Res> {
  __$$GroupCopyWithImpl(_$Group _value, $Res Function(_$Group) _then)
      : super(_value, (v) => _then(v as _$Group));

  @override
  _$Group get _value => super._value as _$Group;

  @override
  $Res call({
    Object? group = freezed,
  }) {
    return _then(_$Group(
      group == freezed
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as VaultGroup,
    ));
  }

  @override
  $VaultGroupCopyWith<$Res> get group {
    return $VaultGroupCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Group implements Group {
  _$Group(this.group, {final String? $type}) : $type = $type ?? 'group';

  factory _$Group.fromJson(Map<String, dynamic> json) => _$$GroupFromJson(json);

  @override
  VaultGroup group;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultComponent.group(group: $group)';
  }

  @JsonKey(ignore: true)
  @override
  _$$GroupCopyWith<_$Group> get copyWith =>
      __$$GroupCopyWithImpl<_$Group>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultGroup group) group,
    required TResult Function(VaultItem item) item,
  }) {
    return group(this.group);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
    TResult Function(VaultItem item)? item,
  }) {
    return group?.call(this.group);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
    TResult Function(VaultItem item)? item,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this.group);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Group value) group,
    required TResult Function(Item value) item,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Item value)? item,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Item value)? item,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupToJson(this);
  }
}

abstract class Group implements VaultComponent {
  factory Group(VaultGroup group) = _$Group;

  factory Group.fromJson(Map<String, dynamic> json) = _$Group.fromJson;

  VaultGroup get group => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GroupCopyWith<_$Group> get copyWith => throw _privateConstructorUsedError;
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
  _$Item(this.item, {final String? $type}) : $type = $type ?? 'item';

  factory _$Item.fromJson(Map<String, dynamic> json) => _$$ItemFromJson(json);

  @override
  VaultItem item;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultComponent.item(item: $item)';
  }

  @JsonKey(ignore: true)
  @override
  _$$ItemCopyWith<_$Item> get copyWith =>
      __$$ItemCopyWithImpl<_$Item>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VaultGroup group) group,
    required TResult Function(VaultItem item) item,
  }) {
    return item(this.item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
    TResult Function(VaultItem item)? item,
  }) {
    return item?.call(this.item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VaultGroup group)? group,
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
    required TResult Function(Group value) group,
    required TResult Function(Item value) item,
  }) {
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Group value)? group,
    TResult Function(Item value)? item,
  }) {
    return item?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Group value)? group,
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
  factory Item(VaultItem item) = _$Item;

  factory Item.fromJson(Map<String, dynamic> json) = _$Item.fromJson;

  VaultItem get item => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ItemCopyWith<_$Item> get copyWith => throw _privateConstructorUsedError;
}

VaultGroup _$VaultGroupFromJson(Map<String, dynamic> json) {
  return _VaultGroup.fromJson(json);
}

/// @nodoc
mixin _$VaultGroup {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  List<VaultComponent> get components => throw _privateConstructorUsedError;
  set components(List<VaultComponent> value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultGroupCopyWith<VaultGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultGroupCopyWith<$Res> {
  factory $VaultGroupCopyWith(
          VaultGroup value, $Res Function(VaultGroup) then) =
      _$VaultGroupCopyWithImpl<$Res>;
  $Res call({String name, List<VaultComponent> components});
}

/// @nodoc
class _$VaultGroupCopyWithImpl<$Res> implements $VaultGroupCopyWith<$Res> {
  _$VaultGroupCopyWithImpl(this._value, this._then);

  final VaultGroup _value;
  // ignore: unused_field
  final $Res Function(VaultGroup) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultGroupCopyWith<$Res>
    implements $VaultGroupCopyWith<$Res> {
  factory _$$_VaultGroupCopyWith(
          _$_VaultGroup value, $Res Function(_$_VaultGroup) then) =
      __$$_VaultGroupCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<VaultComponent> components});
}

/// @nodoc
class __$$_VaultGroupCopyWithImpl<$Res> extends _$VaultGroupCopyWithImpl<$Res>
    implements _$$_VaultGroupCopyWith<$Res> {
  __$$_VaultGroupCopyWithImpl(
      _$_VaultGroup _value, $Res Function(_$_VaultGroup) _then)
      : super(_value, (v) => _then(v as _$_VaultGroup));

  @override
  _$_VaultGroup get _value => super._value as _$_VaultGroup;

  @override
  $Res call({
    Object? name = freezed,
    Object? components = freezed,
  }) {
    return _then(_$_VaultGroup(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultGroup implements _VaultGroup {
  _$_VaultGroup({required this.name, this.components = const []});

  factory _$_VaultGroup.fromJson(Map<String, dynamic> json) =>
      _$$_VaultGroupFromJson(json);

  @override
  String name;
  @override
  @JsonKey()
  List<VaultComponent> components;

  @override
  String toString() {
    return 'VaultGroup(name: $name, components: $components)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultGroupCopyWith<_$_VaultGroup> get copyWith =>
      __$$_VaultGroupCopyWithImpl<_$_VaultGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultGroupToJson(this);
  }
}

abstract class _VaultGroup implements VaultGroup {
  factory _VaultGroup({required String name, List<VaultComponent> components}) =
      _$_VaultGroup;

  factory _VaultGroup.fromJson(Map<String, dynamic> json) =
      _$_VaultGroup.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<VaultComponent> get components => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultGroupCopyWith<_$_VaultGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultItem _$VaultItemFromJson(Map<String, dynamic> json) {
  return _VaultItem.fromJson(json);
}

/// @nodoc
mixin _$VaultItem {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  set username(String value) => throw _privateConstructorUsedError;
  EncryptedData<VaultPassword> get password =>
      throw _privateConstructorUsedError;
  set password(EncryptedData<VaultPassword> value) =>
      throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;
  set notes(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultItemCopyWith<VaultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultItemCopyWith<$Res> {
  factory $VaultItemCopyWith(VaultItem value, $Res Function(VaultItem) then) =
      _$VaultItemCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String username,
      EncryptedData<VaultPassword> password,
      String notes});

  $EncryptedDataCopyWith<VaultPassword, $Res> get password;
}

/// @nodoc
class _$VaultItemCopyWithImpl<$Res> implements $VaultItemCopyWith<$Res> {
  _$VaultItemCopyWithImpl(this._value, this._then);

  final VaultItem _value;
  // ignore: unused_field
  final $Res Function(VaultItem) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultPassword>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $EncryptedDataCopyWith<VaultPassword, $Res> get password {
    return $EncryptedDataCopyWith<VaultPassword, $Res>(_value.password,
        (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$$_VaultItemCopyWith<$Res> implements $VaultItemCopyWith<$Res> {
  factory _$$_VaultItemCopyWith(
          _$_VaultItem value, $Res Function(_$_VaultItem) then) =
      __$$_VaultItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String username,
      EncryptedData<VaultPassword> password,
      String notes});

  @override
  $EncryptedDataCopyWith<VaultPassword, $Res> get password;
}

/// @nodoc
class __$$_VaultItemCopyWithImpl<$Res> extends _$VaultItemCopyWithImpl<$Res>
    implements _$$_VaultItemCopyWith<$Res> {
  __$$_VaultItemCopyWithImpl(
      _$_VaultItem _value, $Res Function(_$_VaultItem) _then)
      : super(_value, (v) => _then(v as _$_VaultItem));

  @override
  _$_VaultItem get _value => super._value as _$_VaultItem;

  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_VaultItem(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultPassword>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultItem implements _VaultItem {
  _$_VaultItem(
      {required this.name,
      required this.username,
      required this.password,
      required this.notes});

  factory _$_VaultItem.fromJson(Map<String, dynamic> json) =>
      _$$_VaultItemFromJson(json);

  @override
  String name;
  @override
  String username;
  @override
  EncryptedData<VaultPassword> password;
  @override
  String notes;

  @override
  String toString() {
    return 'VaultItem(name: $name, username: $username, password: $password, notes: $notes)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultItemCopyWith<_$_VaultItem> get copyWith =>
      __$$_VaultItemCopyWithImpl<_$_VaultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultItemToJson(this);
  }
}

abstract class _VaultItem implements VaultItem {
  factory _VaultItem(
      {required String name,
      required String username,
      required EncryptedData<VaultPassword> password,
      required String notes}) = _$_VaultItem;

  factory _VaultItem.fromJson(Map<String, dynamic> json) =
      _$_VaultItem.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  EncryptedData<VaultPassword> get password =>
      throw _privateConstructorUsedError;
  @override
  String get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultItemCopyWith<_$_VaultItem> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultPassword _$VaultPasswordFromJson(Map<String, dynamic> json) {
  return _VaultPassword.fromJson(json);
}

/// @nodoc
mixin _$VaultPassword {
  String get password => throw _privateConstructorUsedError;
  set password(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultPasswordCopyWith<VaultPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultPasswordCopyWith<$Res> {
  factory $VaultPasswordCopyWith(
          VaultPassword value, $Res Function(VaultPassword) then) =
      _$VaultPasswordCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$VaultPasswordCopyWithImpl<$Res>
    implements $VaultPasswordCopyWith<$Res> {
  _$VaultPasswordCopyWithImpl(this._value, this._then);

  final VaultPassword _value;
  // ignore: unused_field
  final $Res Function(VaultPassword) _then;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VaultPasswordCopyWith<$Res>
    implements $VaultPasswordCopyWith<$Res> {
  factory _$$_VaultPasswordCopyWith(
          _$_VaultPassword value, $Res Function(_$_VaultPassword) then) =
      __$$_VaultPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String password});
}

/// @nodoc
class __$$_VaultPasswordCopyWithImpl<$Res>
    extends _$VaultPasswordCopyWithImpl<$Res>
    implements _$$_VaultPasswordCopyWith<$Res> {
  __$$_VaultPasswordCopyWithImpl(
      _$_VaultPassword _value, $Res Function(_$_VaultPassword) _then)
      : super(_value, (v) => _then(v as _$_VaultPassword));

  @override
  _$_VaultPassword get _value => super._value as _$_VaultPassword;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_VaultPassword(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultPassword implements _VaultPassword {
  _$_VaultPassword(this.password);

  factory _$_VaultPassword.fromJson(Map<String, dynamic> json) =>
      _$$_VaultPasswordFromJson(json);

  @override
  String password;

  @override
  String toString() {
    return 'VaultPassword(password: $password)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_VaultPasswordCopyWith<_$_VaultPassword> get copyWith =>
      __$$_VaultPasswordCopyWithImpl<_$_VaultPassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultPasswordToJson(this);
  }
}

abstract class _VaultPassword implements VaultPassword {
  factory _VaultPassword(String password) = _$_VaultPassword;

  factory _VaultPassword.fromJson(Map<String, dynamic> json) =
      _$_VaultPassword.fromJson;

  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VaultPasswordCopyWith<_$_VaultPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
