import 'dart:collection';

import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_bloc.freezed.dart';

@freezed
class VaultState with _$VaultState {
  const factory VaultState.none() = _None;
  const factory VaultState.opening() = _Opening;
  const factory VaultState.locked(VaultFile vault) = _Locked;
  const factory VaultState.unlocking(VaultFile vault) = _Unlocking;
  const factory VaultState.failed({
    required VaultFile vault,
    required String failedKey,
    required int tries
  }) = _Failed;
  const factory VaultState.unlocked({
    required VaultFile vault,
    List<String>? selectedGroup,
    List<String>? selectedItem,
    String? masterKey
  }) = _Unlocked;
}

@freezed
class VaultEvent with _$VaultEvent {
  const factory VaultEvent.opened(String path) = OpenedEvent;
  const factory VaultEvent.unlocked(String masterKey) = UnlockedEvent;
  const factory VaultEvent.groupSelected(List<String>? path, bool deselect) = GroupSelectedEvent;
  const factory VaultEvent.itemSelected(List<String>? path, bool deselect) = ItemSelectedEvent;
  const factory VaultEvent.updated(VaultFile newVault, String masterKey) = UpdatedEvent;
  const factory VaultEvent.locked() = LockedEvent;
  const factory VaultEvent.closed() = ClosedEvent;
}

class VaultBloc extends Bloc<VaultEvent, VaultState> {
  VaultBloc({
    required this.repository,
    VaultFile? vault,
  }) : super(const VaultState.none()) {
    on<VaultEvent>((rawEvent, emit) async {
      await rawEvent.map(
        opened: (event) => _onVaultOpened(event, emit),
        unlocked: (event) => _onVaultUnlocked(event, emit),
        groupSelected: (event) => _onGroupSelected(event, emit),
        itemSelected: (event) => _onItemSelected(event, emit),
        updated: (event) => _onVaultUpdated(event, emit),
        locked: (event) => _onVaultLocked(event, emit),
        closed: (event) => _onVaultClosed(event, emit)
      );
    });
  }

  final VaultRepository repository;

  Future<void> _onVaultOpened(OpenedEvent event, Emitter<VaultState> emit) async {
    emit(const VaultState.opening());

    emit(VaultState.locked(await repository.getFile(event.path)));
  }

  Future<void> _onVaultUnlocked(UnlockedEvent event, Emitter<VaultState> emit) async {
    final lockedVault = state.maybeWhen(
      locked: (vault) => vault,
      failed: (vault, failedKey, tries) {
        if (failedKey == event.masterKey) {
          emit(VaultState.failed(
            vault: vault,
            failedKey: failedKey,
            tries: tries + 1
          ));
          return null;
        } else {
          return vault;
        }
      },
      orElse: () => throw Error()
    );

    if (lockedVault == null) {
      return;
    }

    emit(VaultState.unlocking(lockedVault));

    final EncryptedData<VaultContents> decryptedContents;
    try {
      decryptedContents = lockedVault.contents.decrypt(event.masterKey);
    } catch (_e) {
      return emit(
        VaultState.failed(
          vault: lockedVault,
          failedKey: event.masterKey,
          tries: 1
        )
      );
    }

    // TODO: Allow user to choose whether or not to keep key in memory while open
    emit(
      VaultState.unlocked(
        vault: lockedVault.copyWith(
          contents: decryptedContents
        ),
        masterKey: event.masterKey
      )
    );
  }

  Future<void> _onGroupSelected(GroupSelectedEvent event, Emitter<VaultState> emit) async {
    final unlockedState = state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    emit(unlockedState.copyWith(
      selectedGroup: event.deselect ? null : event.path
    ));
  }

  Future<void> _onItemSelected(ItemSelectedEvent event, Emitter<VaultState> emit) async {
    final unlockedState = state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    emit(unlockedState.copyWith(
      selectedItem: event.deselect ? null : event.path
    ));
  }

  Future<void> _onVaultUpdated(UpdatedEvent event, Emitter<VaultState> emit) async {
    final unlockedState = state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    emit(unlockedState.copyWith(
      vault: event.newVault
    ));

    repository.updateFile(event.newVault, event.masterKey);
  }

  Future<void> _onVaultLocked(LockedEvent event, Emitter<VaultState> emit) async {
    final unlockedState = state.maybeMap(
      unlocked: (state) => state,
      orElse: () => throw Error()
    );

    final encryptedFile = await repository.getFile(unlockedState.vault.path);
    
    emit(
      VaultState.locked(unlockedState.vault.copyWith(
        contents: encryptedFile.contents
      ))
    );
  }

  Future<void> _onVaultClosed(ClosedEvent event, Emitter<VaultState> emit) async {
    emit(const VaultState.none());
  }
}