import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_bloc.freezed.dart';

@freezed
class NewFormState with _$NewFormState {
  const NewFormState._();
  const factory NewFormState(
      {required String name,
      required String username,
      required String password,
      required String notes,
      required bool submitted,
      required VaultItem? createdItem,
      required Key? masterKey}) = _NewFormState;

  factory NewFormState.empty() => const NewFormState(
      name: '',
      username: '',
      password: '',
      notes: '',
      submitted: false,
      createdItem: null,
      masterKey: null);

  bool get isFormValid => (name != '') && (username != '') && (password != '');
}

@freezed
class NewFormEvent with _$NewFormEvent {
  const factory NewFormEvent.nameChanged(String name) = NameChangedEvent;
  const factory NewFormEvent.usernameChanged(String username) =
      UsernameChangedEvent;
  const factory NewFormEvent.passwordChanged(String password) =
      PasswordChangedEvent;
  const factory NewFormEvent.notesChanged(String notes) = NotesChangedEvent;
  const factory NewFormEvent.formSubmitted(Key masterKey) = FormSubmittedEvent;
  const factory NewFormEvent.failed() = FailedEvent;
}

class NewFormBloc extends Bloc<NewFormEvent, NewFormState> {
  NewFormBloc() : super(NewFormState.empty()) {
    on<NewFormEvent>((event, emit) {
      event.map(
          nameChanged: (event) => _onNameChanged(event, emit),
          usernameChanged: (event) => _onUsernameChanged(event, emit),
          passwordChanged: (event) => _onPasswordChanged(event, emit),
          notesChanged: (event) => _onNotesChanged(event, emit),
          formSubmitted: (event) => _onFormSubmitted(event, emit),
          failed: (event) => _onFailedEvent(event, emit));
    });
  }

  void _onNameChanged(NameChangedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onUsernameChanged(
      UsernameChangedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(username: event.username));
  }

  void _onPasswordChanged(
      PasswordChangedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onNotesChanged(NotesChangedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(notes: event.notes));
  }

  void _onFormSubmitted(FormSubmittedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(submitted: true, masterKey: event.masterKey));

    emit(state.copyWith(
        createdItem: VaultItem(
            name: state.name,
            username: state.username,
            password: EncryptedData<VaultPassword>.decrypted(
                    VaultPassword(state.password), IV.fromSecureRandom(16))
                .encrypt(event.masterKey),
            notes: state.notes)));
  }

  void _onFailedEvent(FailedEvent event, Emitter<NewFormState> emit) {
    emit(state.copyWith(submitted: false, createdItem: null));
  }
}
