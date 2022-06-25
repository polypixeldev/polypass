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
  $Res call({VaultSettings defaultVaultSettings});

  $VaultSettingsCopyWith<$Res> get defaultVaultSettings;
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
  }) {
    return _then(_value.copyWith(
      defaultVaultSettings: defaultVaultSettings == freezed
          ? _value.defaultVaultSettings
          : defaultVaultSettings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
    ));
  }

  @override
  $VaultSettingsCopyWith<$Res> get defaultVaultSettings {
    return $VaultSettingsCopyWith<$Res>(_value.defaultVaultSettings, (value) {
      return _then(_value.copyWith(defaultVaultSettings: value));
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
  $Res call({VaultSettings defaultVaultSettings});

  @override
  $VaultSettingsCopyWith<$Res> get defaultVaultSettings;
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
  }) {
    return _then(_$_AppSettings(
      defaultVaultSettings: defaultVaultSettings == freezed
          ? _value.defaultVaultSettings
          : defaultVaultSettings // ignore: cast_nullable_to_non_nullable
              as VaultSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppSettings extends _AppSettings {
  const _$_AppSettings({required this.defaultVaultSettings}) : super._();

  factory _$_AppSettings.fromJson(Map<String, dynamic> json) =>
      _$$_AppSettingsFromJson(json);

  @override
  final VaultSettings defaultVaultSettings;

  @override
  String toString() {
    return 'AppSettings(defaultVaultSettings: $defaultVaultSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppSettings &&
            const DeepCollectionEquality()
                .equals(other.defaultVaultSettings, defaultVaultSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(defaultVaultSettings));

  @JsonKey(ignore: true)
  @override
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      __$$_AppSettingsCopyWithImpl<_$_AppSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppSettingsToJson(this);
  }
}

abstract class _AppSettings extends AppSettings {
  const factory _AppSettings(
      {required final VaultSettings defaultVaultSettings}) = _$_AppSettings;
  const _AppSettings._() : super._();

  factory _AppSettings.fromJson(Map<String, dynamic> json) =
      _$_AppSettings.fromJson;

  @override
  VaultSettings get defaultVaultSettings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppSettingsCopyWith<_$_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
