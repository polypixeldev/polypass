import 'package:bloc/bloc.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/blocs/app_settings_bloc/app_settings_bloc.dart';
import 'package:polypass/blocs/create_form/create_form_bloc.dart';
import 'package:polypass/data/cache/cache.dart';
import 'package:polypass/main.dart' show polypassMajorVersion;

import 'package:polypass/components/merge_conflict_dialog/merge_conflict_dialog.dart';
import 'package:polypass/components/master_password_dialog/master_password_dialog.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_bloc.freezed.dart';

@freezed
class VaultState with _$VaultState {
  const factory VaultState.none() = _None;
  const factory VaultState.opening({@Default(0) int errorCount}) = _Opening;
  const factory VaultState.locked(VaultFile vault) = _Locked;
  const factory VaultState.unlocking(VaultFile vault) = _Unlocking;
  const factory VaultState.unlocked(
      {required VaultFile vault,
      List<String>? selectedGroup,
      List<String>? selectedItem,
      @Default(false) bool viewingSelectedItem,
      Key? masterKey,
      @Default(0) int errorCounts}) = _Unlocked;
}

@freezed
class VaultEvent with _$VaultEvent {
  const factory VaultEvent.opened(VaultUrl url, BuildContext context) =
      OpenedEvent;
  const factory VaultEvent.unlocked(Key masterKey, BuildContext context) =
      UnlockedEvent;
  const factory VaultEvent.masterKeyChanged(Key? masterKey) =
      MasterKeyChangedEvent;
  const factory VaultEvent.groupSelected(List<String>? path, bool deselect) =
      GroupSelectedEvent;
  const factory VaultEvent.itemSelected(List<String>? path, bool deselect) =
      ItemSelectedEvent;
  const factory VaultEvent.selectedItemViewToggled() =
      SelectedItemViewToggledEvent;
  const factory VaultEvent.updated(VaultFile newVault, Key masterKey) =
      UpdatedEvent;
  const factory VaultEvent.locked() = LockedEvent;
  const factory VaultEvent.closed() = ClosedEvent;
}

class VaultBloc extends Bloc<VaultEvent, VaultState> {
  VaultBloc({required this.read}) : super(const VaultState.none()) {
    on<VaultEvent>((rawEvent, emit) async {
      await rawEvent.map(
          opened: (event) => _onVaultOpened(event, emit),
          unlocked: (event) => _onVaultUnlocked(event, emit),
          masterKeyChanged: (event) => _onMasterKeyChanged(event, emit),
          groupSelected: (event) => _onGroupSelected(event, emit),
          itemSelected: (event) => _onItemSelected(event, emit),
          selectedItemViewToggled: (event) =>
              _onSelectedItemViewToggled(event, emit),
          updated: (event) => _onVaultUpdated(event, emit),
          locked: (event) => _onVaultLocked(event, emit),
          closed: (event) => _onVaultClosed(event, emit));
    });
  }

  final Locator read;

  Future<Key?> Function(VaultFile, bool) _getRemoteUrlKeyFunction(
      BuildContext context) {
    return (VaultFile file, bool cancelMain) async {
      final keys = await getMasterKey(context,
          forceDialog: true,
          customFile: file,
          cancelUrl: cancelMain ? '/' : '/vault/home');
      return keys.masterKey;
    };
  }

  Future<void> _onVaultOpened(
      OpenedEvent event, Emitter<VaultState> emit) async {
    emit(const VaultState.opening());

    await event.url.maybeMap(file: (url) async {
      final VaultFile file;

      try {
        file = await read<VaultRepository>()
            .getFile(event.url, read<AppSettingsBloc>());
      } catch (e) {
        emit(VaultState.opening(
            errorCount:
                state.mapOrNull(opening: (state) => state.errorCount + 1)!));
        await read<VaultRepository>().clearPoison(event.url);
        return;
      }

      read<AppSettingsBloc>()
          .state
          .settings
          .copyWith(recentUrl: event.url)
          .save();

      emit(VaultState.locked(file.copyWith(url: event.url)));

      read<CreateFormBloc>().add(const CreateFormEvent.dataCleared());
    }, cached: (url) async {
      VaultFile file;

      final vaultRepository = read<VaultRepository>();
      final appSettingsBloc = read<AppSettingsBloc>();

      try {
        file = await vaultRepository.getFile(event.url, appSettingsBloc);
      } catch (e) {
        emit(VaultState.opening(
            errorCount:
                state.mapOrNull(opening: (state) => state.errorCount + 1)!));
        await read<VaultRepository>().clearPoison(event.url);
        return;
      }

      final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;
      lastSyncMap[url.uuid] = DateTime.now();

      final newSettings = appSettingsBloc.state.settings
          .copyWith(lastSyncMap: lastSyncMap, recentUrl: event.url);

      appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
      newSettings.save();

      emit(VaultState.locked(file.copyWith(url: event.url)));

      read<CreateFormBloc>().add(const CreateFormEvent.dataCleared());
    }, orElse: () async {
      VaultFile file;

      final getFunc = _getRemoteUrlKeyFunction(event.context);

      try {
        file = await read<VaultRepository>()
            .getFile(event.url, read<AppSettingsBloc>());
      } catch (e) {
        emit(VaultState.opening(
            errorCount:
                state.mapOrNull(opening: (state) => state.errorCount + 1)!));
        await read<VaultRepository>().clearPoison(event.url);
        return;
      }

      final cachedUrl = VaultUrl.cached(uuid: file.header.uuid);

      final key = await getFunc(file, true);

      if (key == null) {
        emit(const VaultState.none());
        return;
      }

      file = file.copyWith(
          url: cachedUrl,
          header: file.header.copyWith(
              remoteUrl: EncryptedData.decrypted(
                      event.url, IV.fromSecureRandom(16), polypassMajorVersion)
                  .encrypt(key)));

      addToCache(file);

      final appSettingsBloc = read<AppSettingsBloc>();

      final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;
      lastSyncMap[file.header.uuid] = DateTime.now();

      final newSettings = appSettingsBloc.state.settings
          .copyWith(lastSyncMap: lastSyncMap, recentUrl: cachedUrl);

      appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
      newSettings.save();

      emit(VaultState.locked(file));

      read<CreateFormBloc>().add(const CreateFormEvent.dataCleared());
    });
  }

  Future<void> _onVaultUnlocked(
      UnlockedEvent event, Emitter<VaultState> emit) async {
    var lockedVault = state.maybeMap(
        locked: (state) => state.vault, orElse: () => throw Error());

    emit(VaultState.unlocking(lockedVault));

    await lockedVault.url!.mapOrNull(cached: (cachedUrl) async {
      final remoteUrl = lockedVault.header.remoteUrl;
      final decryptedRemoteUrl = lockedVault.header.remoteUrl!
          .decrypt(event.masterKey)
          .mapOrNull(decrypted: (value) => value)!
          .data;

      VaultFile remoteFile;

      try {
        remoteFile = await read<VaultRepository>()
            .getFile(decryptedRemoteUrl, read<AppSettingsBloc>());
      } catch (e) {
        await read<VaultRepository>().clearPoison(decryptedRemoteUrl);
        return;
      }

      final appSettingsBloc = read<AppSettingsBloc>();

      try {
        lockedVault = await read<VaultRepository>().syncFiles(
            appSettingsBloc: appSettingsBloc,
            cachedUrl: cachedUrl,
            decryptedRemoteUrl: decryptedRemoteUrl,
            cachedFile: lockedVault,
            remoteFile: remoteFile);
      } on MergeException catch (e) {
        // ignore: use_build_context_synchronously
        lockedVault = await resolveConflict(event.context,
            local: e.local, remote: e.remote);
        await read<VaultRepository>().updateEncryptedLocalFile(
            lockedVault.copyWith(
                url: cachedUrl,
                header: lockedVault.header.copyWith(remoteUrl: remoteUrl)));
        await read<VaultRepository>().updateEncryptedRemoteFile(
            lockedVault.copyWith(url: decryptedRemoteUrl), decryptedRemoteUrl);

        final lastSyncMap = appSettingsBloc.state.settings.lastSyncMap;
        lastSyncMap[cachedUrl.uuid] = DateTime.now();

        final newSettings =
            appSettingsBloc.state.settings.copyWith(lastSyncMap: lastSyncMap);

        appSettingsBloc.add(AppSettingsEvent.settingsUpdated(newSettings));
        newSettings.save();
      }
    });

    final decryptedContents = lockedVault.contents.decrypt(event.masterKey);

    emit(VaultState.unlocked(
        vault: lockedVault.copyWith(contents: decryptedContents),
        masterKey: lockedVault.header.settings.saveKeyInMemory
            ? event.masterKey
            : null));
  }

  Future<void> _onMasterKeyChanged(
      MasterKeyChangedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    emit(unlockedState.copyWith(masterKey: event.masterKey));
  }

  Future<void> _onGroupSelected(
      GroupSelectedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    emit(unlockedState.copyWith(
        selectedGroup: event.deselect ? null : event.path));
  }

  Future<void> _onItemSelected(
      ItemSelectedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    emit(unlockedState.copyWith(
        selectedItem: event.deselect ? null : event.path));
  }

  Future<void> _onSelectedItemViewToggled(
      SelectedItemViewToggledEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    emit(unlockedState.copyWith(
        viewingSelectedItem: !unlockedState.viewingSelectedItem));
  }

  Future<void> _onVaultUpdated(
      UpdatedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    final newVault = event.newVault.copyWith(
        header: event.newVault.header.copyWith(lastUpdate: DateTime.now()));

    emit(unlockedState.copyWith(vault: newVault));

    try {
      read<VaultRepository>()
          .updateFile(newVault, event.masterKey, read<AppSettingsBloc>());
    } catch (e) {
      emit(unlockedState.copyWith(errorCounts: unlockedState.errorCounts + 1));
    }
  }

  Future<void> _onVaultLocked(
      LockedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    final encryptedFile =
        await read<VaultRepository>().getLocalFile(unlockedState.vault.url!);
    await read<VaultRepository>().disconnect(unlockedState.vault.url!);

    emit(VaultState.locked(
        unlockedState.vault.copyWith(contents: encryptedFile.contents)));
  }

  Future<void> _onVaultClosed(
      ClosedEvent event, Emitter<VaultState> emit) async {
    read<AppSettingsBloc>().state.settings.copyWith(recentUrl: null).save();

    emit(const VaultState.none());
  }
}
