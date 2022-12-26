// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppSettings _$AppSettingsFromJson(Map<String, dynamic> json) {
  return _AppSettings.fromJson(json);
}

/// @nodoc
mixin _$AppSettings {
  VaultSettings get defaultVaultSettings => throw _privateConstructorUsedError;
  VaultUrl? get recentUrl => throw _privateConstructorUsedError;
  Map<String, DateTime> get lastSyncMap => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res>;
  $Res call(
      {VaultSettings defaultVaultSettings,
      VaultUrl? recentUrl,
      Map<String, DateTime> lastSyncMap});

  $VaultSettingsCopyWith<$Res> get defaultVaultSettings;
  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res> implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  final AppSettings _value;
  // ignore: unused_field
  final $Res Function(AppSettings) _then;

  @override
  $Res call({
    Object? defaultVaultSettings = freezed,
    Object? recentUrl = freezed,
    Object? lastSyncMap = freezed,
  }) {
    return _then(_value.copyWith(
      defaultVaultSettings: defaultVaultSettings == freezed
          ? _value.defaultVaultSettings
          : defaultVaultSettings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      recentUrl: recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
      lastSyncMap: lastSyncMap == freezed
          ? _value.lastSyncMap
          : lastSyncMap // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ));
  }

  @override
  $VaultSettingsCopyWith<$Res> get defaultVaultSettings {
    return $VaultSettingsCopyWith<$Res>(_value.defaultVaultSettings, (value) {
      return _then(_value.copyWith(defaultVaultSettings: value));
    });
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
abstract class _$$_AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$$_AppSettingsCopyWith(
          _$_AppSettings value, $Res Function(_$_AppSettings) then) =
      __$$_AppSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {VaultSettings defaultVaultSettings,
      VaultUrl? recentUrl,
      Map<String, DateTime> lastSyncMap});

  @override
  $VaultSettingsCopyWith<$Res> get defaultVaultSettings;
  @override
  $VaultUrlCopyWith<$Res>? get recentUrl;
}

/// @nodoc
class __$$_AppSettingsCopyWithImpl<$Res> extends _$AppSettingsCopyWithImpl<$Res>
    implements _$$_AppSettingsCopyWith<$Res> {
  __$$_AppSettingsCopyWithImpl(
      _$_AppSettings _value, $Res Function(_$_AppSettings) _then)
      : super(_value, (v) => _then(v as _$_AppSettings));

  @override
  _$_AppSettings get _value => super._value as _$_AppSettings;

  @override
  $Res call({
    Object? defaultVaultSettings = freezed,
    Object? recentUrl = freezed,
    Object? lastSyncMap = freezed,
  }) {
    return _then(_$_AppSettings(
      defaultVaultSettings: defaultVaultSettings == freezed
          ? _value.defaultVaultSettings
          : defaultVaultSettings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
      recentUrl: recentUrl == freezed
          ? _value.recentUrl
          : recentUrl // ignore: cast_nullable_to_non_nullable
              as VaultUrl?,
      lastSyncMap: lastSyncMap == freezed
          ? _value.lastSyncMap
          : lastSyncMap // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettings extends _AppSettings {
  _$_AppSettings(
      {required this.defaultVaultSettings,
      required this.recentUrl,
      required this.lastSyncMap})
      : super._();

  factory _$_AppSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsFromJson(json);

  @override
  final VaultSettings defaultVaultSettings;
  @override
  final VaultUrl? recentUrl;
  @override
  final Map<String, DateTime> lastSyncMap;

  @override
  String toString() {
    return 'AppSettings(defaultVaultSettings: $defaultVaultSettings, recentUrl: $recentUrl, lastSyncMap: $lastSyncMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettings &&
            const DeepCollectionEquality()
                .equals(other.defaultVaultSettings, defaultVaultSettings) &&
            const DeepCollectionEquality().equals(other.recentUrl, recentUrl) &&
            const DeepCollectionEquality()
                .equals(other.lastSyncMap, lastSyncMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(defaultVaultSettings),
      const DeepCollectionEquality().hash(recentUrl),
      const DeepCollectionEquality().hash(lastSyncMap));

  @JsonKey(ignore: true)
  @override
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      __$$_AppSettingsCopyWithImpl<_$_AppSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsToJson(
      this,
    );
  }
}

abstract class _AppSettings extends AppSettings {
  factory _AppSettings(
      {required final VaultSettings defaultVaultSettings,
      required final VaultUrl? recentUrl,
      required final Map<String, DateTime> lastSyncMap}) = _$_AppSettings;
  _AppSettings._() : super._();

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$_AppSettings.fromJson;

  @override
  VaultSettings get defaultVaultSettings;
  @override
  VaultUrl? get recentUrl;
  @override
  Map<String, DateTime> get lastSyncMap;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
