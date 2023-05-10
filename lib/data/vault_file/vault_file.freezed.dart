// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vault_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EncryptedData<T extends ToJsonAble<dynamic>> {
  Object get data => throw _privateConstructorUsedError;
  IV get iv => throw _privateConstructorUsedError;
  set iv(IV value) => throw _privateConstructorUsedError;
  int get version => throw _privateConstructorUsedError;
  set version(int value) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv, int version) encrypted,
    required TResult Function(T data, IV iv, int version) decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, IV iv, int version)? encrypted,
    TResult? Function(T data, IV iv, int version)? decrypted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv, int version)? encrypted,
    TResult Function(T data, IV iv, int version)? decrypted,
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
    TResult? Function(_Encrypted<T> value)? encrypted,
    TResult? Function(_Decrypted<T> value)? decrypted,
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
      _$EncryptedDataCopyWithImpl<T, $Res, EncryptedData<T>>;
  @useResult
  $Res call({IV iv, int version});
}

/// @nodoc
class _$EncryptedDataCopyWithImpl<T extends ToJsonAble<dynamic>, $Res,
    $Val extends EncryptedData<T>> implements $EncryptedDataCopyWith<T, $Res> {
  _$EncryptedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iv = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      iv: null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EncryptedCopyWith<T extends ToJsonAble<dynamic>, $Res>
    implements $EncryptedDataCopyWith<T, $Res> {
  factory _$$_EncryptedCopyWith(
          _$_Encrypted<T> value, $Res Function(_$_Encrypted<T>) then) =
      __$$_EncryptedCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String data, IV iv, int version});
}

/// @nodoc
class __$$_EncryptedCopyWithImpl<T extends ToJsonAble<dynamic>, $Res>
    extends _$EncryptedDataCopyWithImpl<T, $Res, _$_Encrypted<T>>
    implements _$$_EncryptedCopyWith<T, $Res> {
  __$$_EncryptedCopyWithImpl(
      _$_Encrypted<T> _value, $Res Function(_$_Encrypted<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? iv = null,
    Object? version = null,
  }) {
    return _then(_$_Encrypted<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Encrypted<T extends ToJsonAble<dynamic>> extends _Encrypted<T> {
  _$_Encrypted(this.data, this.iv, this.version) : super._();

  @override
  String data;
  @override
  IV iv;
  @override
  int version;

  @override
  String toString() {
    return 'EncryptedData<$T>.encrypted(data: $data, iv: $iv, version: $version)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EncryptedCopyWith<T, _$_Encrypted<T>> get copyWith =>
      __$$_EncryptedCopyWithImpl<T, _$_Encrypted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv, int version) encrypted,
    required TResult Function(T data, IV iv, int version) decrypted,
  }) {
    return encrypted(data, iv, version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, IV iv, int version)? encrypted,
    TResult? Function(T data, IV iv, int version)? decrypted,
  }) {
    return encrypted?.call(data, iv, version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv, int version)? encrypted,
    TResult Function(T data, IV iv, int version)? decrypted,
    required TResult orElse(),
  }) {
    if (encrypted != null) {
      return encrypted(data, iv, version);
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
    TResult? Function(_Encrypted<T> value)? encrypted,
    TResult? Function(_Decrypted<T> value)? decrypted,
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
  factory _Encrypted(String data, IV iv, int version) = _$_Encrypted<T>;
  _Encrypted._() : super._();

  @override
  String get data;
  set data(String value);
  @override
  IV get iv;
  set iv(IV value);
  @override
  int get version;
  set version(int value);
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
  @useResult
  $Res call({T data, IV iv, int version});
}

/// @nodoc
class __$$_DecryptedCopyWithImpl<T extends ToJsonAble<dynamic>, $Res>
    extends _$EncryptedDataCopyWithImpl<T, $Res, _$_Decrypted<T>>
    implements _$$_DecryptedCopyWith<T, $Res> {
  __$$_DecryptedCopyWithImpl(
      _$_Decrypted<T> _value, $Res Function(_$_Decrypted<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? iv = null,
    Object? version = null,
  }) {
    return _then(_$_Decrypted<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      null == iv
          ? _value.iv
          : iv // ignore: cast_nullable_to_non_nullable
              as IV,
      null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Decrypted<T extends ToJsonAble<dynamic>> extends _Decrypted<T> {
  _$_Decrypted(this.data, this.iv, this.version) : super._();

  @override
  T data;
  @override
  IV iv;
  @override
  int version;

  @override
  String toString() {
    return 'EncryptedData<$T>.decrypted(data: $data, iv: $iv, version: $version)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecryptedCopyWith<T, _$_Decrypted<T>> get copyWith =>
      __$$_DecryptedCopyWithImpl<T, _$_Decrypted<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data, IV iv, int version) encrypted,
    required TResult Function(T data, IV iv, int version) decrypted,
  }) {
    return decrypted(data, iv, version);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data, IV iv, int version)? encrypted,
    TResult? Function(T data, IV iv, int version)? decrypted,
  }) {
    return decrypted?.call(data, iv, version);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data, IV iv, int version)? encrypted,
    TResult Function(T data, IV iv, int version)? decrypted,
    required TResult orElse(),
  }) {
    if (decrypted != null) {
      return decrypted(data, iv, version);
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
    TResult? Function(_Encrypted<T> value)? encrypted,
    TResult? Function(_Decrypted<T> value)? decrypted,
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
  factory _Decrypted(T data, IV iv, int version) = _$_Decrypted<T>;
  _Decrypted._() : super._();

  @override
  T get data;
  set data(T value);
  @override
  IV get iv;
  set iv(IV value);
  @override
  int get version;
  set version(int value);
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
  VaultUrl? get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  set url(VaultUrl? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultFileCopyWith<VaultFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultFileCopyWith<$Res> {
  factory $VaultFileCopyWith(VaultFile value, $Res Function(VaultFile) then) =
      _$VaultFileCopyWithImpl<$Res, VaultFile>;
  @useResult
  $Res call(
      {VaultHeader header,
      EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) VaultUrl? url});

  $VaultHeaderCopyWith<$Res> get header;
  $EncryptedDataCopyWith<VaultContents, $Res> get contents;
  $VaultUrlCopyWith<$Res>? get url;
}

/// @nodoc
class _$VaultFileCopyWithImpl<$Res, $Val extends VaultFile>
    implements $VaultFileCopyWith<$Res> {
  _$VaultFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? contents = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as VaultHeader,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultContents>,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaultHeaderCopyWith<$Res> get header {
    return $VaultHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EncryptedDataCopyWith<VaultContents, $Res> get contents {
    return $EncryptedDataCopyWith<VaultContents, $Res>(_value.contents,
        (value) {
      return _then(_value.copyWith(contents: value) as $Val);
    });
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
abstract class _$$_VaultFileCopyWith<$Res> implements $VaultFileCopyWith<$Res> {
  factory _$$_VaultFileCopyWith(
          _$_VaultFile value, $Res Function(_$_VaultFile) then) =
      __$$_VaultFileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VaultHeader header,
      EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) VaultUrl? url});

  @override
  $VaultHeaderCopyWith<$Res> get header;
  @override
  $EncryptedDataCopyWith<VaultContents, $Res> get contents;
  @override
  $VaultUrlCopyWith<$Res>? get url;
}

/// @nodoc
class __$$_VaultFileCopyWithImpl<$Res>
    extends _$VaultFileCopyWithImpl<$Res, _$_VaultFile>
    implements _$$_VaultFileCopyWith<$Res> {
  __$$_VaultFileCopyWithImpl(
      _$_VaultFile _value, $Res Function(_$_VaultFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? contents = null,
    Object? url = freezed,
  }) {
    return _then(_$_VaultFile(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as VaultHeader,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultContents>,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultFile extends _VaultFile {
  _$_VaultFile(
      {required this.header,
      required this.contents,
      @JsonKey(ignore: true) this.url})
      : super._();

  factory _$_VaultFile.fromJson(Map<String, dynamic> json) =>
      _$$_VaultFileFromJson(json);

  @override
  VaultHeader header;
  @override
  EncryptedData<VaultContents> contents;
  @override
  @JsonKey(ignore: true)
  VaultUrl? url;

  @override
  String toString() {
    return 'VaultFile(header: $header, contents: $contents, url: $url)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaultFileCopyWith<_$_VaultFile> get copyWith =>
      __$$_VaultFileCopyWithImpl<_$_VaultFile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultFileToJson(
      this,
    );
  }
}

abstract class _VaultFile extends VaultFile {
  factory _VaultFile(
      {required VaultHeader header,
      required EncryptedData<VaultContents> contents,
      @JsonKey(ignore: true) VaultUrl? url}) = _$_VaultFile;
  _VaultFile._() : super._();

  factory _VaultFile.fromJson(Map<String, dynamic> json) =
      _$_VaultFile.fromJson;

  @override
  VaultHeader get header;
  set header(VaultHeader value);
  @override
  EncryptedData<VaultContents> get contents;
  set contents(EncryptedData<VaultContents> value);
  @override
  @JsonKey(ignore: true)
  VaultUrl? get url;
  @JsonKey(ignore: true)
  set url(VaultUrl? value);
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
  int get majorVersion => throw _privateConstructorUsedError;
  set majorVersion(int value) => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  set uuid(String value) => throw _privateConstructorUsedError;
  EncryptedData<VaultUrl>? get remoteUrl => throw _privateConstructorUsedError;
  set remoteUrl(EncryptedData<VaultUrl>? value) =>
      throw _privateConstructorUsedError;
  VaultSettings get settings => throw _privateConstructorUsedError;
  set settings(VaultSettings value) => throw _privateConstructorUsedError;
  DateTime get lastUpdate => throw _privateConstructorUsedError;
  set lastUpdate(DateTime value) => throw _privateConstructorUsedError;
  MagicValue get magic => throw _privateConstructorUsedError;
  set magic(MagicValue value) => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  set key(String value) => throw _privateConstructorUsedError;
  List<int> get salt => throw _privateConstructorUsedError;
  set salt(List<int> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultHeaderCopyWith<VaultHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultHeaderCopyWith<$Res> {
  factory $VaultHeaderCopyWith(
          VaultHeader value, $Res Function(VaultHeader) then) =
      _$VaultHeaderCopyWithImpl<$Res, VaultHeader>;
  @useResult
  $Res call(
      {String name,
      int majorVersion,
      String uuid,
      EncryptedData<VaultUrl>? remoteUrl,
      VaultSettings settings,
      DateTime lastUpdate,
      MagicValue magic,
      String key,
      List<int> salt});

  $EncryptedDataCopyWith<VaultUrl, $Res>? get remoteUrl;
  $VaultSettingsCopyWith<$Res> get settings;
  $MagicValueCopyWith<$Res> get magic;
}

/// @nodoc
class _$VaultHeaderCopyWithImpl<$Res, $Val extends VaultHeader>
    implements $VaultHeaderCopyWith<$Res> {
  _$VaultHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? majorVersion = null,
    Object? uuid = null,
    Object? remoteUrl = freezed,
    Object? settings = null,
    Object? lastUpdate = null,
    Object? magic = null,
    Object? key = null,
    Object? salt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      remoteUrl: freezed == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultUrl>?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      magic: null == magic
          ? _value.magic
          : magic // ignore: cast_nullable_to_non_nullable
              as MagicValue,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncryptedDataCopyWith<VaultUrl, $Res>? get remoteUrl {
    if (_value.remoteUrl == null) {
      return null;
    }

    return $EncryptedDataCopyWith<VaultUrl, $Res>(_value.remoteUrl!, (value) {
      return _then(_value.copyWith(remoteUrl: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VaultSettingsCopyWith<$Res> get settings {
    return $VaultSettingsCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MagicValueCopyWith<$Res> get magic {
    return $MagicValueCopyWith<$Res>(_value.magic, (value) {
      return _then(_value.copyWith(magic: value) as $Val);
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
  @useResult
  $Res call(
      {String name,
      int majorVersion,
      String uuid,
      EncryptedData<VaultUrl>? remoteUrl,
      VaultSettings settings,
      DateTime lastUpdate,
      MagicValue magic,
      String key,
      List<int> salt});

  @override
  $EncryptedDataCopyWith<VaultUrl, $Res>? get remoteUrl;
  @override
  $VaultSettingsCopyWith<$Res> get settings;
  @override
  $MagicValueCopyWith<$Res> get magic;
}

/// @nodoc
class __$$_VaultHeaderCopyWithImpl<$Res>
    extends _$VaultHeaderCopyWithImpl<$Res, _$_VaultHeader>
    implements _$$_VaultHeaderCopyWith<$Res> {
  __$$_VaultHeaderCopyWithImpl(
      _$_VaultHeader _value, $Res Function(_$_VaultHeader) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? majorVersion = null,
    Object? uuid = null,
    Object? remoteUrl = freezed,
    Object? settings = null,
    Object? lastUpdate = null,
    Object? magic = null,
    Object? key = null,
    Object? salt = null,
  }) {
    return _then(_$_VaultHeader(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      majorVersion: null == majorVersion
          ? _value.majorVersion
          : majorVersion // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      remoteUrl: freezed == remoteUrl
          ? _value.remoteUrl
          : remoteUrl // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultUrl>?,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      magic: null == magic
          ? _value.magic
          : magic // ignore: cast_nullable_to_non_nullable
              as MagicValue,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      salt: null == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultHeader extends _VaultHeader {
  _$_VaultHeader(
      {required this.name,
      required this.majorVersion,
      required this.uuid,
      required this.remoteUrl,
      required this.settings,
      required this.lastUpdate,
      required this.magic,
      required this.key,
      required this.salt})
      : super._();

  factory _$_VaultHeader.fromJson(Map<String, dynamic> json) =>
      _$$_VaultHeaderFromJson(json);

  @override
  String name;
  @override
  int majorVersion;
  @override
  String uuid;
  @override
  EncryptedData<VaultUrl>? remoteUrl;
  @override
  VaultSettings settings;
  @override
  DateTime lastUpdate;
  @override
  MagicValue magic;
  @override
  String key;
  @override
  List<int> salt;

  @override
  String toString() {
    return 'VaultHeader(name: $name, majorVersion: $majorVersion, uuid: $uuid, remoteUrl: $remoteUrl, settings: $settings, lastUpdate: $lastUpdate, magic: $magic, key: $key, salt: $salt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaultHeaderCopyWith<_$_VaultHeader> get copyWith =>
      __$$_VaultHeaderCopyWithImpl<_$_VaultHeader>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultHeaderToJson(
      this,
    );
  }
}

abstract class _VaultHeader extends VaultHeader {
  factory _VaultHeader(
      {required String name,
      required int majorVersion,
      required String uuid,
      required EncryptedData<VaultUrl>? remoteUrl,
      required VaultSettings settings,
      required DateTime lastUpdate,
      required MagicValue magic,
      required String key,
      required List<int> salt}) = _$_VaultHeader;
  _VaultHeader._() : super._();

  factory _VaultHeader.fromJson(Map<String, dynamic> json) =
      _$_VaultHeader.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  int get majorVersion;
  set majorVersion(int value);
  @override
  String get uuid;
  set uuid(String value);
  @override
  EncryptedData<VaultUrl>? get remoteUrl;
  set remoteUrl(EncryptedData<VaultUrl>? value);
  @override
  VaultSettings get settings;
  set settings(VaultSettings value);
  @override
  DateTime get lastUpdate;
  set lastUpdate(DateTime value);
  @override
  MagicValue get magic;
  set magic(MagicValue value);
  @override
  String get key;
  set key(String value);
  @override
  List<int> get salt;
  set salt(List<int> value);
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
      _$MagicValueCopyWithImpl<$Res, MagicValue>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$MagicValueCopyWithImpl<$Res, $Val extends MagicValue>
    implements $MagicValueCopyWith<$Res> {
  _$MagicValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MagicValueCopyWith<$Res>
    implements $MagicValueCopyWith<$Res> {
  factory _$$_MagicValueCopyWith(
          _$_MagicValue value, $Res Function(_$_MagicValue) then) =
      __$$_MagicValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_MagicValueCopyWithImpl<$Res>
    extends _$MagicValueCopyWithImpl<$Res, _$_MagicValue>
    implements _$$_MagicValueCopyWith<$Res> {
  __$$_MagicValueCopyWithImpl(
      _$_MagicValue _value, $Res Function(_$_MagicValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_MagicValue(
      null == value
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
  @pragma('vm:prefer-inline')
  _$$_MagicValueCopyWith<_$_MagicValue> get copyWith =>
      __$$_MagicValueCopyWithImpl<_$_MagicValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MagicValueToJson(
      this,
    );
  }
}

abstract class _MagicValue implements MagicValue {
  factory _MagicValue(String value) = _$_MagicValue;

  factory _MagicValue.fromJson(Map<String, dynamic> json) =
      _$_MagicValue.fromJson;

  @override
  String get value;
  set value(String value);
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
  int get iterations => throw _privateConstructorUsedError;
  set iterations(int value) => throw _privateConstructorUsedError;
  int get threads => throw _privateConstructorUsedError;
  set threads(int value) => throw _privateConstructorUsedError;
  int get memory => throw _privateConstructorUsedError;
  set memory(int value) => throw _privateConstructorUsedError;
  int get clipboardClearSeconds => throw _privateConstructorUsedError;
  set clipboardClearSeconds(int value) => throw _privateConstructorUsedError;
  int get vaultAutoLockSeconds => throw _privateConstructorUsedError;
  set vaultAutoLockSeconds(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaultSettingsCopyWith<VaultSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultSettingsCopyWith<$Res> {
  factory $VaultSettingsCopyWith(
          VaultSettings value, $Res Function(VaultSettings) then) =
      _$VaultSettingsCopyWithImpl<$Res, VaultSettings>;
  @useResult
  $Res call(
      {bool saveKeyInMemory,
      int iterations,
      int threads,
      int memory,
      int clipboardClearSeconds,
      int vaultAutoLockSeconds});
}

/// @nodoc
class _$VaultSettingsCopyWithImpl<$Res, $Val extends VaultSettings>
    implements $VaultSettingsCopyWith<$Res> {
  _$VaultSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveKeyInMemory = null,
    Object? iterations = null,
    Object? threads = null,
    Object? memory = null,
    Object? clipboardClearSeconds = null,
    Object? vaultAutoLockSeconds = null,
  }) {
    return _then(_value.copyWith(
      saveKeyInMemory: null == saveKeyInMemory
          ? _value.saveKeyInMemory
          : saveKeyInMemory // ignore: cast_nullable_to_non_nullable
              as bool,
      iterations: null == iterations
          ? _value.iterations
          : iterations // ignore: cast_nullable_to_non_nullable
              as int,
      threads: null == threads
          ? _value.threads
          : threads // ignore: cast_nullable_to_non_nullable
              as int,
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as int,
      clipboardClearSeconds: null == clipboardClearSeconds
          ? _value.clipboardClearSeconds
          : clipboardClearSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      vaultAutoLockSeconds: null == vaultAutoLockSeconds
          ? _value.vaultAutoLockSeconds
          : vaultAutoLockSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaultSettingsCopyWith<$Res>
    implements $VaultSettingsCopyWith<$Res> {
  factory _$$_VaultSettingsCopyWith(
          _$_VaultSettings value, $Res Function(_$_VaultSettings) then) =
      __$$_VaultSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool saveKeyInMemory,
      int iterations,
      int threads,
      int memory,
      int clipboardClearSeconds,
      int vaultAutoLockSeconds});
}

/// @nodoc
class __$$_VaultSettingsCopyWithImpl<$Res>
    extends _$VaultSettingsCopyWithImpl<$Res, _$_VaultSettings>
    implements _$$_VaultSettingsCopyWith<$Res> {
  __$$_VaultSettingsCopyWithImpl(
      _$_VaultSettings _value, $Res Function(_$_VaultSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saveKeyInMemory = null,
    Object? iterations = null,
    Object? threads = null,
    Object? memory = null,
    Object? clipboardClearSeconds = null,
    Object? vaultAutoLockSeconds = null,
  }) {
    return _then(_$_VaultSettings(
      saveKeyInMemory: null == saveKeyInMemory
          ? _value.saveKeyInMemory
          : saveKeyInMemory // ignore: cast_nullable_to_non_nullable
              as bool,
      iterations: null == iterations
          ? _value.iterations
          : iterations // ignore: cast_nullable_to_non_nullable
              as int,
      threads: null == threads
          ? _value.threads
          : threads // ignore: cast_nullable_to_non_nullable
              as int,
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as int,
      clipboardClearSeconds: null == clipboardClearSeconds
          ? _value.clipboardClearSeconds
          : clipboardClearSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      vaultAutoLockSeconds: null == vaultAutoLockSeconds
          ? _value.vaultAutoLockSeconds
          : vaultAutoLockSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultSettings implements _VaultSettings {
  _$_VaultSettings(
      {required this.saveKeyInMemory,
      required this.iterations,
      required this.threads,
      required this.memory,
      required this.clipboardClearSeconds,
      required this.vaultAutoLockSeconds});

  factory _$_VaultSettings.fromJson(Map<String, dynamic> json) =>
      _$$_VaultSettingsFromJson(json);

  @override
  bool saveKeyInMemory;
  @override
  int iterations;
  @override
  int threads;
  @override
  int memory;
  @override
  int clipboardClearSeconds;
  @override
  int vaultAutoLockSeconds;

  @override
  String toString() {
    return 'VaultSettings(saveKeyInMemory: $saveKeyInMemory, iterations: $iterations, threads: $threads, memory: $memory, clipboardClearSeconds: $clipboardClearSeconds, vaultAutoLockSeconds: $vaultAutoLockSeconds)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaultSettingsCopyWith<_$_VaultSettings> get copyWith =>
      __$$_VaultSettingsCopyWithImpl<_$_VaultSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultSettingsToJson(
      this,
    );
  }
}

abstract class _VaultSettings implements VaultSettings {
  factory _VaultSettings(
      {required bool saveKeyInMemory,
      required int iterations,
      required int threads,
      required int memory,
      required int clipboardClearSeconds,
      required int vaultAutoLockSeconds}) = _$_VaultSettings;

  factory _VaultSettings.fromJson(Map<String, dynamic> json) =
      _$_VaultSettings.fromJson;

  @override
  bool get saveKeyInMemory;
  set saveKeyInMemory(bool value);
  @override
  int get iterations;
  set iterations(int value);
  @override
  int get threads;
  set threads(int value);
  @override
  int get memory;
  set memory(int value);
  @override
  int get clipboardClearSeconds;
  set clipboardClearSeconds(int value);
  @override
  int get vaultAutoLockSeconds;
  set vaultAutoLockSeconds(int value);
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
      _$VaultContentsCopyWithImpl<$Res, VaultContents>;
  @useResult
  $Res call({List<VaultComponent> components});
}

/// @nodoc
class _$VaultContentsCopyWithImpl<$Res, $Val extends VaultContents>
    implements $VaultContentsCopyWith<$Res> {
  _$VaultContentsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaultContentsCopyWith<$Res>
    implements $VaultContentsCopyWith<$Res> {
  factory _$$_VaultContentsCopyWith(
          _$_VaultContents value, $Res Function(_$_VaultContents) then) =
      __$$_VaultContentsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<VaultComponent> components});
}

/// @nodoc
class __$$_VaultContentsCopyWithImpl<$Res>
    extends _$VaultContentsCopyWithImpl<$Res, _$_VaultContents>
    implements _$$_VaultContentsCopyWith<$Res> {
  __$$_VaultContentsCopyWithImpl(
      _$_VaultContents _value, $Res Function(_$_VaultContents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? components = null,
  }) {
    return _then(_$_VaultContents(
      components: null == components
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
  @pragma('vm:prefer-inline')
  _$$_VaultContentsCopyWith<_$_VaultContents> get copyWith =>
      __$$_VaultContentsCopyWithImpl<_$_VaultContents>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultContentsToJson(
      this,
    );
  }
}

abstract class _VaultContents implements VaultContents {
  factory _VaultContents({required List<VaultComponent> components}) =
      _$_VaultContents;

  factory _VaultContents.fromJson(Map<String, dynamic> json) =
      _$_VaultContents.fromJson;

  @override
  List<VaultComponent> get components;
  set components(List<VaultComponent> value);
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
    TResult? Function(VaultGroup group)? group,
    TResult? Function(VaultItem item)? item,
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
    TResult? Function(Group value)? group,
    TResult? Function(Item value)? item,
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
      _$VaultComponentCopyWithImpl<$Res, VaultComponent>;
}

/// @nodoc
class _$VaultComponentCopyWithImpl<$Res, $Val extends VaultComponent>
    implements $VaultComponentCopyWith<$Res> {
  _$VaultComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroupCopyWith<$Res> {
  factory _$$GroupCopyWith(_$Group value, $Res Function(_$Group) then) =
      __$$GroupCopyWithImpl<$Res>;
  @useResult
  $Res call({VaultGroup group});

  $VaultGroupCopyWith<$Res> get group;
}

/// @nodoc
class __$$GroupCopyWithImpl<$Res>
    extends _$VaultComponentCopyWithImpl<$Res, _$Group>
    implements _$$GroupCopyWith<$Res> {
  __$$GroupCopyWithImpl(_$Group _value, $Res Function(_$Group) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
  }) {
    return _then(_$Group(
      null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as VaultGroup,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
  @pragma('vm:prefer-inline')
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
    TResult? Function(VaultGroup group)? group,
    TResult? Function(VaultItem item)? item,
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
    TResult? Function(Group value)? group,
    TResult? Function(Item value)? item,
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
    return _$$GroupToJson(
      this,
    );
  }
}

abstract class Group implements VaultComponent {
  factory Group(VaultGroup group) = _$Group;

  factory Group.fromJson(Map<String, dynamic> json) = _$Group.fromJson;

  VaultGroup get group;
  set group(VaultGroup value);
  @JsonKey(ignore: true)
  _$$GroupCopyWith<_$Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemCopyWith<$Res> {
  factory _$$ItemCopyWith(_$Item value, $Res Function(_$Item) then) =
      __$$ItemCopyWithImpl<$Res>;
  @useResult
  $Res call({VaultItem item});

  $VaultItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ItemCopyWithImpl<$Res>
    extends _$VaultComponentCopyWithImpl<$Res, _$Item>
    implements _$$ItemCopyWith<$Res> {
  __$$ItemCopyWithImpl(_$Item _value, $Res Function(_$Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$Item(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as VaultItem,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
  @pragma('vm:prefer-inline')
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
    TResult? Function(VaultGroup group)? group,
    TResult? Function(VaultItem item)? item,
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
    TResult? Function(Group value)? group,
    TResult? Function(Item value)? item,
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
    return _$$ItemToJson(
      this,
    );
  }
}

abstract class Item implements VaultComponent {
  factory Item(VaultItem item) = _$Item;

  factory Item.fromJson(Map<String, dynamic> json) = _$Item.fromJson;

  VaultItem get item;
  set item(VaultItem value);
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
  dynamic get expanded => throw _privateConstructorUsedError;
  set expanded(dynamic value) => throw _privateConstructorUsedError;
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
      _$VaultGroupCopyWithImpl<$Res, VaultGroup>;
  @useResult
  $Res call({String name, dynamic expanded, List<VaultComponent> components});
}

/// @nodoc
class _$VaultGroupCopyWithImpl<$Res, $Val extends VaultGroup>
    implements $VaultGroupCopyWith<$Res> {
  _$VaultGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? expanded = freezed,
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as dynamic,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaultGroupCopyWith<$Res>
    implements $VaultGroupCopyWith<$Res> {
  factory _$$_VaultGroupCopyWith(
          _$_VaultGroup value, $Res Function(_$_VaultGroup) then) =
      __$$_VaultGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic expanded, List<VaultComponent> components});
}

/// @nodoc
class __$$_VaultGroupCopyWithImpl<$Res>
    extends _$VaultGroupCopyWithImpl<$Res, _$_VaultGroup>
    implements _$$_VaultGroupCopyWith<$Res> {
  __$$_VaultGroupCopyWithImpl(
      _$_VaultGroup _value, $Res Function(_$_VaultGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? expanded = freezed,
    Object? components = null,
  }) {
    return _then(_$_VaultGroup(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      expanded: freezed == expanded ? _value.expanded! : expanded,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<VaultComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VaultGroup implements _VaultGroup {
  _$_VaultGroup(
      {required this.name, this.expanded = false, this.components = const []});

  factory _$_VaultGroup.fromJson(Map<String, dynamic> json) =>
      _$$_VaultGroupFromJson(json);

  @override
  String name;
  @override
  @JsonKey()
  dynamic expanded;
  @override
  @JsonKey()
  List<VaultComponent> components;

  @override
  String toString() {
    return 'VaultGroup(name: $name, expanded: $expanded, components: $components)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VaultGroupCopyWith<_$_VaultGroup> get copyWith =>
      __$$_VaultGroupCopyWithImpl<_$_VaultGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultGroupToJson(
      this,
    );
  }
}

abstract class _VaultGroup implements VaultGroup {
  factory _VaultGroup(
      {required String name,
      dynamic expanded,
      List<VaultComponent> components}) = _$_VaultGroup;

  factory _VaultGroup.fromJson(Map<String, dynamic> json) =
      _$_VaultGroup.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  dynamic get expanded;
  set expanded(dynamic value);
  @override
  List<VaultComponent> get components;
  set components(List<VaultComponent> value);
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
      _$VaultItemCopyWithImpl<$Res, VaultItem>;
  @useResult
  $Res call(
      {String name,
      String username,
      EncryptedData<VaultPassword> password,
      String notes});

  $EncryptedDataCopyWith<VaultPassword, $Res> get password;
}

/// @nodoc
class _$VaultItemCopyWithImpl<$Res, $Val extends VaultItem>
    implements $VaultItemCopyWith<$Res> {
  _$VaultItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultPassword>,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EncryptedDataCopyWith<VaultPassword, $Res> get password {
    return $EncryptedDataCopyWith<VaultPassword, $Res>(_value.password,
        (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VaultItemCopyWith<$Res> implements $VaultItemCopyWith<$Res> {
  factory _$$_VaultItemCopyWith(
          _$_VaultItem value, $Res Function(_$_VaultItem) then) =
      __$$_VaultItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String username,
      EncryptedData<VaultPassword> password,
      String notes});

  @override
  $EncryptedDataCopyWith<VaultPassword, $Res> get password;
}

/// @nodoc
class __$$_VaultItemCopyWithImpl<$Res>
    extends _$VaultItemCopyWithImpl<$Res, _$_VaultItem>
    implements _$$_VaultItemCopyWith<$Res> {
  __$$_VaultItemCopyWithImpl(
      _$_VaultItem _value, $Res Function(_$_VaultItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? notes = null,
  }) {
    return _then(_$_VaultItem(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as EncryptedData<VaultPassword>,
      notes: null == notes
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
  @pragma('vm:prefer-inline')
  _$$_VaultItemCopyWith<_$_VaultItem> get copyWith =>
      __$$_VaultItemCopyWithImpl<_$_VaultItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultItemToJson(
      this,
    );
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
  String get name;
  set name(String value);
  @override
  String get username;
  set username(String value);
  @override
  EncryptedData<VaultPassword> get password;
  set password(EncryptedData<VaultPassword> value);
  @override
  String get notes;
  set notes(String value);
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
      _$VaultPasswordCopyWithImpl<$Res, VaultPassword>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$VaultPasswordCopyWithImpl<$Res, $Val extends VaultPassword>
    implements $VaultPasswordCopyWith<$Res> {
  _$VaultPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VaultPasswordCopyWith<$Res>
    implements $VaultPasswordCopyWith<$Res> {
  factory _$$_VaultPasswordCopyWith(
          _$_VaultPassword value, $Res Function(_$_VaultPassword) then) =
      __$$_VaultPasswordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_VaultPasswordCopyWithImpl<$Res>
    extends _$VaultPasswordCopyWithImpl<$Res, _$_VaultPassword>
    implements _$$_VaultPasswordCopyWith<$Res> {
  __$$_VaultPasswordCopyWithImpl(
      _$_VaultPassword _value, $Res Function(_$_VaultPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_VaultPassword(
      null == password
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
  @pragma('vm:prefer-inline')
  _$$_VaultPasswordCopyWith<_$_VaultPassword> get copyWith =>
      __$$_VaultPasswordCopyWithImpl<_$_VaultPassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaultPasswordToJson(
      this,
    );
  }
}

abstract class _VaultPassword implements VaultPassword {
  factory _VaultPassword(String password) = _$_VaultPassword;

  factory _VaultPassword.fromJson(Map<String, dynamic> json) =
      _$_VaultPassword.fromJson;

  @override
  String get password;
  set password(String value);
  @override
  @JsonKey(ignore: true)
  _$$_VaultPasswordCopyWith<_$_VaultPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

VaultUrl _$VaultUrlFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'file':
      return FileVaultUrl.fromJson(json);
    case 'ftp':
      return FtpVaultUrl.fromJson(json);
    case 'cached':
      return CachedVaultUrl.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'VaultUrl',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VaultUrl {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) file,
    required TResult Function(
            String host, String user, String password, String path)
        ftp,
    required TResult Function(String uuid) cached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? file,
    TResult? Function(String host, String user, String password, String path)?
        ftp,
    TResult? Function(String uuid)? cached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? file,
    TResult Function(String host, String user, String password, String path)?
        ftp,
    TResult Function(String uuid)? cached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileVaultUrl value) file,
    required TResult Function(FtpVaultUrl value) ftp,
    required TResult Function(CachedVaultUrl value) cached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileVaultUrl value)? file,
    TResult? Function(FtpVaultUrl value)? ftp,
    TResult? Function(CachedVaultUrl value)? cached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileVaultUrl value)? file,
    TResult Function(FtpVaultUrl value)? ftp,
    TResult Function(CachedVaultUrl value)? cached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaultUrlCopyWith<$Res> {
  factory $VaultUrlCopyWith(VaultUrl value, $Res Function(VaultUrl) then) =
      _$VaultUrlCopyWithImpl<$Res, VaultUrl>;
}

/// @nodoc
class _$VaultUrlCopyWithImpl<$Res, $Val extends VaultUrl>
    implements $VaultUrlCopyWith<$Res> {
  _$VaultUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileVaultUrlCopyWith<$Res> {
  factory _$$FileVaultUrlCopyWith(
          _$FileVaultUrl value, $Res Function(_$FileVaultUrl) then) =
      __$$FileVaultUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$FileVaultUrlCopyWithImpl<$Res>
    extends _$VaultUrlCopyWithImpl<$Res, _$FileVaultUrl>
    implements _$$FileVaultUrlCopyWith<$Res> {
  __$$FileVaultUrlCopyWithImpl(
      _$FileVaultUrl _value, $Res Function(_$FileVaultUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$FileVaultUrl(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileVaultUrl extends FileVaultUrl {
  _$FileVaultUrl(this.path, {final String? $type})
      : $type = $type ?? 'file',
        super._();

  factory _$FileVaultUrl.fromJson(Map<String, dynamic> json) =>
      _$$FileVaultUrlFromJson(json);

  @override
  String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultUrl.file(path: $path)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileVaultUrlCopyWith<_$FileVaultUrl> get copyWith =>
      __$$FileVaultUrlCopyWithImpl<_$FileVaultUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) file,
    required TResult Function(
            String host, String user, String password, String path)
        ftp,
    required TResult Function(String uuid) cached,
  }) {
    return file(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? file,
    TResult? Function(String host, String user, String password, String path)?
        ftp,
    TResult? Function(String uuid)? cached,
  }) {
    return file?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? file,
    TResult Function(String host, String user, String password, String path)?
        ftp,
    TResult Function(String uuid)? cached,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileVaultUrl value) file,
    required TResult Function(FtpVaultUrl value) ftp,
    required TResult Function(CachedVaultUrl value) cached,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileVaultUrl value)? file,
    TResult? Function(FtpVaultUrl value)? ftp,
    TResult? Function(CachedVaultUrl value)? cached,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileVaultUrl value)? file,
    TResult Function(FtpVaultUrl value)? ftp,
    TResult Function(CachedVaultUrl value)? cached,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileVaultUrlToJson(
      this,
    );
  }
}

abstract class FileVaultUrl extends VaultUrl {
  factory FileVaultUrl(String path) = _$FileVaultUrl;
  FileVaultUrl._() : super._();

  factory FileVaultUrl.fromJson(Map<String, dynamic> json) =
      _$FileVaultUrl.fromJson;

  String get path;
  set path(String value);
  @JsonKey(ignore: true)
  _$$FileVaultUrlCopyWith<_$FileVaultUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FtpVaultUrlCopyWith<$Res> {
  factory _$$FtpVaultUrlCopyWith(
          _$FtpVaultUrl value, $Res Function(_$FtpVaultUrl) then) =
      __$$FtpVaultUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String host, String user, String password, String path});
}

/// @nodoc
class __$$FtpVaultUrlCopyWithImpl<$Res>
    extends _$VaultUrlCopyWithImpl<$Res, _$FtpVaultUrl>
    implements _$$FtpVaultUrlCopyWith<$Res> {
  __$$FtpVaultUrlCopyWithImpl(
      _$FtpVaultUrl _value, $Res Function(_$FtpVaultUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? user = null,
    Object? password = null,
    Object? path = null,
  }) {
    return _then(_$FtpVaultUrl(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FtpVaultUrl extends FtpVaultUrl {
  _$FtpVaultUrl(
      {required this.host,
      required this.user,
      required this.password,
      required this.path,
      final String? $type})
      : $type = $type ?? 'ftp',
        super._();

  factory _$FtpVaultUrl.fromJson(Map<String, dynamic> json) =>
      _$$FtpVaultUrlFromJson(json);

  @override
  String host;
  @override
  String user;
  @override
  String password;
  @override
  String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultUrl.ftp(host: $host, user: $user, password: $password, path: $path)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FtpVaultUrlCopyWith<_$FtpVaultUrl> get copyWith =>
      __$$FtpVaultUrlCopyWithImpl<_$FtpVaultUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) file,
    required TResult Function(
            String host, String user, String password, String path)
        ftp,
    required TResult Function(String uuid) cached,
  }) {
    return ftp(host, user, password, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? file,
    TResult? Function(String host, String user, String password, String path)?
        ftp,
    TResult? Function(String uuid)? cached,
  }) {
    return ftp?.call(host, user, password, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? file,
    TResult Function(String host, String user, String password, String path)?
        ftp,
    TResult Function(String uuid)? cached,
    required TResult orElse(),
  }) {
    if (ftp != null) {
      return ftp(host, user, password, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileVaultUrl value) file,
    required TResult Function(FtpVaultUrl value) ftp,
    required TResult Function(CachedVaultUrl value) cached,
  }) {
    return ftp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileVaultUrl value)? file,
    TResult? Function(FtpVaultUrl value)? ftp,
    TResult? Function(CachedVaultUrl value)? cached,
  }) {
    return ftp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileVaultUrl value)? file,
    TResult Function(FtpVaultUrl value)? ftp,
    TResult Function(CachedVaultUrl value)? cached,
    required TResult orElse(),
  }) {
    if (ftp != null) {
      return ftp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FtpVaultUrlToJson(
      this,
    );
  }
}

abstract class FtpVaultUrl extends VaultUrl {
  factory FtpVaultUrl(
      {required String host,
      required String user,
      required String password,
      required String path}) = _$FtpVaultUrl;
  FtpVaultUrl._() : super._();

  factory FtpVaultUrl.fromJson(Map<String, dynamic> json) =
      _$FtpVaultUrl.fromJson;

  String get host;
  set host(String value);
  String get user;
  set user(String value);
  String get password;
  set password(String value);
  String get path;
  set path(String value);
  @JsonKey(ignore: true)
  _$$FtpVaultUrlCopyWith<_$FtpVaultUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CachedVaultUrlCopyWith<$Res> {
  factory _$$CachedVaultUrlCopyWith(
          _$CachedVaultUrl value, $Res Function(_$CachedVaultUrl) then) =
      __$$CachedVaultUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$CachedVaultUrlCopyWithImpl<$Res>
    extends _$VaultUrlCopyWithImpl<$Res, _$CachedVaultUrl>
    implements _$$CachedVaultUrlCopyWith<$Res> {
  __$$CachedVaultUrlCopyWithImpl(
      _$CachedVaultUrl _value, $Res Function(_$CachedVaultUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$CachedVaultUrl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CachedVaultUrl extends CachedVaultUrl {
  _$CachedVaultUrl({required this.uuid, final String? $type})
      : $type = $type ?? 'cached',
        super._();

  factory _$CachedVaultUrl.fromJson(Map<String, dynamic> json) =>
      _$$CachedVaultUrlFromJson(json);

  @override
  String uuid;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VaultUrl.cached(uuid: $uuid)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedVaultUrlCopyWith<_$CachedVaultUrl> get copyWith =>
      __$$CachedVaultUrlCopyWithImpl<_$CachedVaultUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) file,
    required TResult Function(
            String host, String user, String password, String path)
        ftp,
    required TResult Function(String uuid) cached,
  }) {
    return cached(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? file,
    TResult? Function(String host, String user, String password, String path)?
        ftp,
    TResult? Function(String uuid)? cached,
  }) {
    return cached?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? file,
    TResult Function(String host, String user, String password, String path)?
        ftp,
    TResult Function(String uuid)? cached,
    required TResult orElse(),
  }) {
    if (cached != null) {
      return cached(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileVaultUrl value) file,
    required TResult Function(FtpVaultUrl value) ftp,
    required TResult Function(CachedVaultUrl value) cached,
  }) {
    return cached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileVaultUrl value)? file,
    TResult? Function(FtpVaultUrl value)? ftp,
    TResult? Function(CachedVaultUrl value)? cached,
  }) {
    return cached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileVaultUrl value)? file,
    TResult Function(FtpVaultUrl value)? ftp,
    TResult Function(CachedVaultUrl value)? cached,
    required TResult orElse(),
  }) {
    if (cached != null) {
      return cached(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CachedVaultUrlToJson(
      this,
    );
  }
}

abstract class CachedVaultUrl extends VaultUrl {
  factory CachedVaultUrl({required String uuid}) = _$CachedVaultUrl;
  CachedVaultUrl._() : super._();

  factory CachedVaultUrl.fromJson(Map<String, dynamic> json) =
      _$CachedVaultUrl.fromJson;

  String get uuid;
  set uuid(String value);
  @JsonKey(ignore: true)
  _$$CachedVaultUrlCopyWith<_$CachedVaultUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
