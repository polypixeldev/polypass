import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../data/vault_repository.dart';

enum VaultStatus { none, locked, unlocked, opening}

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
    required this.tree,
    required this.name,
    required this.description,
    required this.path,
    required this.status
  });

  final List<VaultComponent> tree;
  final String name;
  final String description;
  final String path;
  final VaultStatus status;

  VaultState copyWith({
    List<VaultComponent>? tree,
    String? name,
    String? description,
    String? path,
    VaultStatus? status
  }) {
    return VaultState(
      tree: tree ?? this.tree,
      name: name ?? this.name,
      description: description ?? this.description,
      path: path ?? this.path,
      status: status ?? this.status
    );
  }

  @override
  List<dynamic> get props => [tree, name, description, path, status];
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
    String name = '',
    String description = '',
    String path = '',
    List<VaultComponent> tree = const [],
    VaultStatus status = VaultStatus.none
  }) : super(VaultState(
    name: name,
    description: description,
    path: path,
    tree: tree,
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
    // TODO: Call repository function to fetch vault data using event.path
    await Future.delayed(const Duration( seconds: 2));


    emit(state.copyWith(
      status: VaultStatus.locked
    ));
  }

  void _onVaultLocked(event, emit) {
    // TODO: Lock vault
    emit(state.copyWith(
      status: VaultStatus.locked
    ));
  }

  void _onVaultUnlocked(event, emit) {
    // TODO: Decrypt vault with event.masterKey
    emit(state.copyWith(
      status: VaultStatus.unlocked
    ));
  }

  void _onVaultClosed(event, emit) {
    emit(const VaultState(
      name: '',
      description: '',
      path: '',
      tree: const [],
      status: VaultStatus.none
    ));
  }
}