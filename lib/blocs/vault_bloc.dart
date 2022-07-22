import 'package:bloc/bloc.dart';
import 'package:provider/provider.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/data/vault_file.dart';
import 'package:polypass/blocs/app_settings_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_bloc.freezed.dart';

@freezed
class VaultState with _$VaultState {
  const factory VaultState.none() = _None;
  const factory VaultState.opening() = _Opening;
  const factory VaultState.locked(VaultFile vault) = _Locked;
  const factory VaultState.unlocking(VaultFile vault) = _Unlocking;
  const factory VaultState.unlocked(
      {required VaultFile vault,
      List<String>? selectedGroup,
      List<String>? selectedItem,
      @Default(false) bool viewingSelectedItem,
      Key? masterKey}) = _Unlocked;
}

@freezed
class VaultEvent with _$VaultEvent {
  const factory VaultEvent.opened(String path) = OpenedEvent;
  const factory VaultEvent.unlocked(Key masterKey) = UnlockedEvent;
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

  Future<void> _onVaultOpened(
      OpenedEvent event, Emitter<VaultState> emit) async {
    emit(const VaultState.opening());

    read<AppSettingsBloc>()
        .state
        .settings
        .copyWith(recentPath: event.path)
        .save();

    emit(VaultState.locked(await read<VaultRepository>().getFile(event.path)));
  }

  Future<void> _onVaultUnlocked(
      UnlockedEvent event, Emitter<VaultState> emit) async {
    final lockedVault =
        state.maybeWhen(locked: (vault) => vault, orElse: () => throw Error());

    emit(VaultState.unlocking(lockedVault));

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

    emit(unlockedState.copyWith(vault: event.newVault));

    read<VaultRepository>().updateFile(event.newVault, event.masterKey);
  }

  Future<void> _onVaultLocked(
      LockedEvent event, Emitter<VaultState> emit) async {
    final unlockedState =
        state.maybeMap(unlocked: (state) => state, orElse: () => throw Error());

    final encryptedFile =
        await read<VaultRepository>().getFile(unlockedState.vault.path!);

    emit(VaultState.locked(
        unlockedState.vault.copyWith(contents: encryptedFile.contents)));
  }

  Future<void> _onVaultClosed(
      ClosedEvent event, Emitter<VaultState> emit) async {
    read<AppSettingsBloc>().state.settings.copyWith(recentPath: null).save();

    emit(const VaultState.none());
  }
}
