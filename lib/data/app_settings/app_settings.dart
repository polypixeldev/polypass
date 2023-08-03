import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class AppSettings with _$AppSettings {
  AppSettings._();
  factory AppSettings(
      {required VaultSettings defaultVaultSettings,
      required VaultUrl? recentUrl,
      required Map<String, DateTime> lastSyncMap}) = _AppSettings;

  static final documentsDir = Platform.isAndroid
      ? getExternalStorageDirectory()
      : getApplicationDocumentsDirectory();

  static late final String polypassDir;

  static Future<void> loadPolypassDir() async {
    final polyPassDir = Directory(
        '${(await documentsDir)?.absolute.path}${Platform.pathSeparator}${kDebugMode ? 'polypass_debug' : 'polypass'}');
    if (!await polyPassDir.exists()) {
      await polyPassDir.create();
    }
    polypassDir = polyPassDir.absolute.path;
  }

  static Future<AppSettings> load() async {
    await loadPolypassDir();
    final file = File('$polypassDir/.settings.json');

    if (!(await file.exists())) {
      await file.writeAsString(jsonEncode(AppSettings.empty().toJson()));
      return AppSettings.empty();
    }

    final rawContents = await file.readAsString();
    return AppSettings.fromJson(jsonDecode(rawContents));
  }

  Future<void> save() async {
    await File('$polypassDir/.settings.json')
        .writeAsString(jsonEncode(toJson()));
  }

  factory AppSettings.empty() => AppSettings(
      defaultVaultSettings: VaultSettings.empty(),
      recentUrl: null,
      lastSyncMap: {});
  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
