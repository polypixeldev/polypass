import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'master_password_dialog_bloc.freezed.dart';

enum MasterPasswordDialogStatus { wait, validating, failed, canceled, success }

@freezed
class MasterPasswordDialogState with _$MasterPasswordDialogState {
  const MasterPasswordDialogState._();
  const factory MasterPasswordDialogState({
    required String masterPassword,
    required Key? masterKey,
    required MasterPasswordDialogStatus status
  }) = _MasterPasswordDialogState;

  factory MasterPasswordDialogState.empty() => const MasterPasswordDialogState(
    masterPassword: 'masterPassword',
    masterKey: null,
    status: MasterPasswordDialogStatus.wait
  );

  bool get isFormValid => masterPassword != '';
}

@freezed
class MasterPasswordDialogEvent with _$MasterPasswordDialogEvent {
  const factory MasterPasswordDialogEvent.masterPasswordChanged(String masterPassword) = MasterPasswordChangedEvent;
  const factory MasterPasswordDialogEvent.masterPasswordSubmitted() = MasterPasswordSubmittedEvent;
  const factory MasterPasswordDialogEvent.canceled() = CanceledEvent;
}

class MasterPasswordDialogBloc extends Bloc<MasterPasswordDialogEvent, MasterPasswordDialogState> {
  MasterPasswordDialogBloc({ required this.vaultFile }) : super(MasterPasswordDialogState.empty()) {
    on<MasterPasswordDialogEvent>((event, emit) {
      event.map(
        masterPasswordChanged: (event) => _onMasterPasswordChanged(event, emit),
        masterPasswordSubmitted: (event) => _onMasterPasswordSubmitted(event, emit),
        canceled: (event) => _onCanceled(event, emit)
      );
    });
  }

  final VaultFile vaultFile;

  void _onMasterPasswordChanged(MasterPasswordChangedEvent event, Emitter<MasterPasswordDialogState> emit) {
    emit(state.copyWith(
      masterPassword: event.masterPassword
    ));
  }

  void _onMasterPasswordSubmitted(MasterPasswordSubmittedEvent event, Emitter<MasterPasswordDialogState> emit) {
    emit(state.copyWith(
      status: MasterPasswordDialogStatus.validating
    ));

    final derivedKey = EncryptedData.deriveKey(state.masterPassword);

    if(vaultFile.header.testMagic(derivedKey, vaultFile.contents.iv)) {
      emit(state.copyWith(
        status: MasterPasswordDialogStatus.success,
        masterKey: vaultFile.header.decryptMasterKey(derivedKey, vaultFile.contents.iv)
      ));
    } else {
      emit(state.copyWith(
        status: MasterPasswordDialogStatus.failed
      ));
    }
  }

  void _onCanceled(CanceledEvent event, Emitter<MasterPasswordDialogState> emit) {
    emit(state.copyWith(
      status: MasterPasswordDialogStatus.canceled
    ));
  }
}