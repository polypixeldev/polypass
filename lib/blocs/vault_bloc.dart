import 'package:bloc/bloc.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'vault_bloc.freezed.dart';

enum VaultStatus { none, opening, unlocked, locked}

@freezed
class VaultState with _$VaultState {
  const factory VaultState.none() = _None;
  const factory VaultState.opening() = _Opening;
  const factory VaultState.locked(VaultFile vault) = _Locked;
  const factory VaultState.unlocked(VaultFile vault, String? masterKey) = _Unlocked;
}

@freezed
class VaultEvent with _$VaultEvent {
  const factory VaultEvent.opened(String path) = OpenedEvent;
  const factory VaultEvent.unlocked(String masterKey) = UnlockedEvent;
  const factory VaultEvent.locked() = LockedEvent;
  const factory VaultEvent.closed() = ClosedEvent;
}

class VaultBloc extends Bloc<VaultEvent, VaultState> {
  VaultBloc({
    required this.repository,
    VaultFile? vault,
    VaultStatus status = VaultStatus.none
  }) : super(const VaultState.none()) {
    on<VaultEvent>((rawEvent, emit) async {
      await rawEvent.map(
        opened: (event) => _onVaultOpened(event, emit),
        unlocked: (event) => _onVaultUnlocked(event, emit),
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

  Future<void> _onVaultUnlocked(UnlockedEvent event, Emitter<VaultState> emit) async {
    final lockedState = state.maybeMap(
      locked: (state) => state,
      orElse: () => throw Error()
    );

    final decryptedContents = lockedState.vault.contents.decrypt(event.masterKey);

    // TODO: Allow user to choose whether or not to keep key in memory while open
    emit(
      VaultState.unlocked(
        lockedState.vault.copyWith(
          contents: decryptedContents
        ),
        event.masterKey
      )
    );
  }

  Future<void> _onVaultClosed(ClosedEvent event, Emitter<VaultState> emit) async {
    emit(const VaultState.none());
  }
}