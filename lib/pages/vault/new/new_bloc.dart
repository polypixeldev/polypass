import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_file.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_bloc.freezed.dart';

@freezed
class NewFormState with _$NewFormState {
  const NewFormState._();
  const factory NewFormState({
    required String name,
    required String username,
    required String password,
    required String notes,
    required bool submitted,
    required VaultItem? createdItem,
    required String masterKey
  }) = _NewFormState;

  factory NewFormState.empty() => const NewFormState(
    name: '',
    username: '',
    password: '',
    notes: '',
    submitted: false,
    createdItem: null,
    masterKey: ''
  );

  bool get isFormValid => (name != '') && (username != '') && (password != '') && (notes != '');
}

@freezed
class NewFormEvent with _$NewFormEvent {
  const factory NewFormEvent.nameChanged(String name) = NameChangedEvent;
  const factory NewFormEvent.usernameChanged(String username) = UsernameChangedEvent;
  const factory NewFormEvent.passwordChanged(String password) = PasswordChangedEvent;
  const factory NewFormEvent.notesChanged(String notes) = NotesChangedEvent;
  const factory NewFormEvent.formSubmitted(String masterKey) = FormSubmittedEvent;
}

class NewFormBloc extends Bloc<NewFormEvent, NewFormState> {
  NewFormBloc() : super(NewFormState.empty()) {
    on<NewFormEvent>((event, emit) async {
      await event.map(
        nameChanged: (event) => _onNameChanged(event, emit),
        usernameChanged: (event) => _onUsernameChanged(event, emit), 
        passwordChanged: (event) => _onPasswordChanged(event, emit), 
        notesChanged: (event) => _onNotesChanged(event, emit), 
        formSubmitted: (event) => _onFormSubmitted(event, emit), 
      );
    });
  }

  Future<void> _onNameChanged(NameChangedEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      name: event.name
    ));
  }

  Future<void> _onUsernameChanged(UsernameChangedEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      username: event.username
    ));
  }

  Future<void> _onPasswordChanged(PasswordChangedEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      password: event.password
    ));
  }

  Future<void> _onNotesChanged(NotesChangedEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      notes: event.notes
    ));
  }

  Future<void> _onFormSubmitted(FormSubmittedEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      submitted: true,
      masterKey: event.masterKey
    ));

    emit(state.copyWith(
      createdItem: VaultItem(
        name: state.name,
        username: state.username,
        password: EncryptedData<VaultPassword>.decrypted(VaultPassword(state.password), IV.fromSecureRandom(16)).encrypt(state.masterKey),
        notes: state.notes
      )
    ));
  }
}