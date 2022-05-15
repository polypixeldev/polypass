import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/vault_repository.dart';

enum VaultStatus { none, locked, unlocked, opening }

enum VaultComponent {
  category(VaultCategory),
  item(ItemData);

  const VaultComponent(component);
}

class VaultCategory {
  const VaultCategory({
    required this.name,
    this.icon,
    this.components = const []
  });

  final String name;
  final String? icon;
  final List<VaultComponent> components;
}

class ItemData {
  const ItemData();
}

class VaultState extends Equatable {
  const VaultState({
    required this.vault,
    required this.status
  });

  final VaultFile vault;
  final VaultStatus status;

  VaultState copyWith({
    VaultFile? vault,
    VaultStatus? status
  }) {
    return VaultState(
      vault: vault ?? this.vault,
      status: status ?? this.status
    );
  }

  @override
  List<dynamic> get props => [vault, status];
}

abstract class VaultBlocEvent extends Equatable {
  const VaultBlocEvent();

  @override
  List<dynamic> get props => [];
}

class VaultOpened extends VaultBlocEvent {
  const VaultOpened({
    required this.path
  });

  final String path;

  @override
  List<String> get props => [path];
}

class VaultLocked extends VaultBlocEvent {
  const VaultLocked();
}

class VaultUnlocked extends VaultBlocEvent {
  const VaultUnlocked({
    required this.masterKey
  });

  final String masterKey;

  @override
  List<String> get props => [masterKey];
}

class VaultClosed extends VaultBlocEvent {
  const VaultClosed();

  @override
  List<String> get props => [];
}

class VaultBloc extends Bloc<VaultBlocEvent, VaultState> {
  VaultBloc({
    required this.repository,
    VaultFile? vault,
    VaultStatus status = VaultStatus.none
  }) : super(VaultState(
    vault: vault ?? VaultFile.empty,
    status: status 
  )) {
    on<VaultOpened>(_onVaultOpened);
    on<VaultLocked>(_onVaultLocked);
    on<VaultUnlocked>(_onVaultUnlocked);
    on<VaultClosed>(_onVaultClosed);
  }

  final VaultRepository repository;

  Future<void> _onVaultOpened(event, emit) async {
    emit(state.copyWith(
      status: VaultStatus.opening
    ));

    emit(state.copyWith(
      status: VaultStatus.locked,
      vault: await repository.getFile(event.path)
    ));
  }

  void _onVaultLocked(event, emit) {
    final encryptedContents = state.vault.contents.encrypt();
    
    emit(state.copyWith(
      status: VaultStatus.locked,
      vault: state.vault.copyWith(
        contents: encryptedContents
      )
    ));
  }

  void _onVaultUnlocked(event, emit) {
    final decryptedContents = state.vault.contents.decrypt();

    emit(state.copyWith(
      status: VaultStatus.unlocked,
      vault: state.vault.copyWith(
        contents: decryptedContents
      )
    ));
  }

  void _onVaultClosed(event, emit) {
    emit(VaultState(
      vault: VaultFile.empty,
      status: VaultStatus.none
    ));
  }
}