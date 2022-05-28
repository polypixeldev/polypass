// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vault_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaultFile _$$_VaultFileFromJson(Map<String, dynamic> json) => _$_VaultFile(
      header: VaultHeader.fromJson(json['header'] as Map<String, dynamic>),
      contents: EncryptedData<VaultContents>.fromJson(
          json['contents'] as Map<String, dynamic>),
      path: json['path'] as String,
    );

Map<String, dynamic> _$$_VaultFileToJson(_$_VaultFile instance) =>
    <String, dynamic>{
      'header': instance.header,
      'contents': instance.contents,
      'path': instance.path,
    };

_$_VaultHeader _$$_VaultHeaderFromJson(Map<String, dynamic> json) =>
    _$_VaultHeader(
      name: json['name'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_VaultHeaderToJson(_$_VaultHeader instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

_$_VaultContents _$$_VaultContentsFromJson(Map<String, dynamic> json) =>
    _$_VaultContents(
      components: (json['components'] as List<dynamic>)
          .map((e) => VaultComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaultContentsToJson(_$_VaultContents instance) =>
    <String, dynamic>{
      'components': instance.components,
    };

_$Category _$$CategoryFromJson(Map<String, dynamic> json) => _$Category(
      VaultCategory.fromJson(json['category'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$CategoryToJson(_$Category instance) =>
    <String, dynamic>{
      'category': instance.category,
      'runtimeType': instance.$type,
    };

_$Item _$$ItemFromJson(Map<String, dynamic> json) => _$Item(
      VaultItem.fromJson(json['item'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ItemToJson(_$Item instance) => <String, dynamic>{
      'item': instance.item,
      'runtimeType': instance.$type,
    };

_$_VaultCategory _$$_VaultCategoryFromJson(Map<String, dynamic> json) =>
    _$_VaultCategory(
      name: json['name'] as String,
      icon: json['icon'] as String?,
      components: (json['components'] as List<dynamic>?)
              ?.map((e) => VaultComponent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VaultCategoryToJson(_$_VaultCategory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      'components': instance.components,
    };

_$_VaultItem _$$_VaultItemFromJson(Map<String, dynamic> json) => _$_VaultItem();

Map<String, dynamic> _$$_VaultItemToJson(_$_VaultItem instance) =>
    <String, dynamic>{};
