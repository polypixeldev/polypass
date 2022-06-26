import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_bloc.freezed.dart';

@freezed
class EditFormState with _$EditFormState {
  const EditFormState._();
  const factory EditFormState({
    required String name,
    required String username,
    required String password,
    required String notes,
    required bool submitted,
    required VaultItem? editedItem,
    required Key? masterKey
  }) = _EditFormState;

  bool get isFormValid => (name != '') && (username != '') && (password != '') && (notes != '');
}

@freezed
class EditFormEvent with _$EditFormEvent {
  const factory EditFormEvent.nameChanged(String name) = NameChangedEvent;
  const factory EditFormEvent.usernameChanged(String username) = UsernameChangedEvent;
  const factory EditFormEvent.passwordChanged(String password) = PasswordChangedEvent;
  const factory EditFormEvent.notesChanged(String notes) = NotesChangedEvent;
  const factory EditFormEvent.formSubmitted(Key masterKey) = FormSubmittedEvent;
  const factory EditFormEvent.failed() = FailedEvent;
}

class EditFormBloc extends Bloc<EditFormEvent, EditFormState> {
  EditFormBloc({
    required String name,
    required String username,
    required String password,
    required String notes
  }) : super(EditFormState(
    name: name,
    username: username,
    password: password,
    notes: notes,
    submitted: false,
    editedItem: null,
    masterKey: null
  )) {
    on<EditFormEvent>((event, emit) {
      event.map(
        nameChanged: (event) => _onNameChanged(event, emit),
        usernameChanged: (event) => _onUsernameChanged(event, emit), 
        passwordChanged: (event) => _onPasswordChanged(event, emit), 
        notesChanged: (event) => _onNotesChanged(event, emit), 
        formSubmitted: (event) => _onFormSubmitted(event, emit), 
        failed: (event) => _onFailedEvent(event, emit)
      );
    });
  }

  void _onNameChanged(NameChangedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      name: event.name
    ));
  }

  void _onUsernameChanged(UsernameChangedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      username: event.username
    ));
  }

  void _onPasswordChanged(PasswordChangedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      password: event.password
    ));
  }

  void _onNotesChanged(NotesChangedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      notes: event.notes
    ));
  }

  void _onFormSubmitted(FormSubmittedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      submitted: true,
      masterKey: event.masterKey
    ));

    emit(state.copyWith(
      editedItem: VaultItem(
        name: state.name,
        username: state.username,
        password: EncryptedData<VaultPassword>.decrypted(VaultPassword(state.password), IV.fromSecureRandom(16)).encrypt(event.masterKey),
        notes: state.notes
      )
    ));
  }

  void _onFailedEvent(FailedEvent event, Emitter<EditFormState> emit) {
    emit(state.copyWith(
      submitted: false,
      editedItem: null
    ));
  }
}