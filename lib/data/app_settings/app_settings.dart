import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

import 'package:polypass/data/vault_file/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_settings.freezed.dart';
part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();
  const factory AppSettings(
      {required VaultSettings defaultVaultSettings,
      required String? recentPath}) = _AppSettings;

  static final documentsDir = Platform.isAndroid
      ? getExternalStorageDirectory()
      : getApplicationDocumentsDirectory();

  static Future<AppSettings> load() async {
    final file = File(
        '${(await documentsDir)?.absolute.path}/polypass/.settings/settings.json');

    if (!(await file.exists())) {
      final settingsDir = Directory(
          '${(await documentsDir)?.absolute.path}/polypass/.settings');

      if (!(await settingsDir.exists())) {
        await settingsDir.create(recursive: true);
      }

      await file.writeAsString(jsonEncode(AppSettings.empty().toJson()));
      return AppSettings.empty();
    }

    final rawContents = await file.readAsString();
    return AppSettings.fromJson(jsonDecode(rawContents));
  }

  Future<void> save() async {
    await File(
            '${(await documentsDir)?.absolute.path}/polypass/.settings/settings.json')
        .writeAsString(jsonEncode(toJson()));
  }

  factory AppSettings.empty() => AppSettings(
      defaultVaultSettings: VaultSettings.empty(), recentPath: null);
  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
