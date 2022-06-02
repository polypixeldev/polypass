import 'package:bloc/bloc.dart';

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
    required bool created
  }) = _NewFormState;

  factory NewFormState.empty() => const NewFormState(
    name: '',
    username: '',
    password: '',
    notes: '',
    submitted: false,
    created: false
  );

  bool get isFormValid => (name != '') && (username != '') && (password != '') && (notes != '');
}

@freezed
class NewFormEvent with _$NewFormEvent {
  const factory NewFormEvent.nameChanged(String name) = _NameChanged;
  const factory NewFormEvent.usernameChanged(String username) = _UsernameChanged;
  const factory NewFormEvent.passwordChanged(String password) = _PasswordChanged;
  const factory NewFormEvent.notesChanged(String notes) = _NotesChanged;
  const factory NewFormEvent.formSubmitted() = _FormSubmitted;
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

  Future<void> _onNameChanged(NewFormEvent event, Emitter<NewFormState> emit) async {
    final newName = event.maybeWhen(
      nameChanged: (name) => name,
      orElse: () => throw Error()
    );

    emit(state.copyWith(
      name: newName
    ));
  }

  Future<void> _onUsernameChanged(NewFormEvent event, Emitter<NewFormState> emit) async {
    final newUsername = event.maybeWhen(
      usernameChanged: (username) => username,
      orElse: () => throw Error()
    );

    emit(state.copyWith(
      username: newUsername
    ));
  }

  Future<void> _onPasswordChanged(NewFormEvent event, Emitter<NewFormState> emit) async {
    final newPassword = event.maybeWhen(
      passwordChanged: (password) => password,
      orElse: () => throw Error()
    );

    emit(state.copyWith(
      password: newPassword
    ));
  }

  Future<void> _onNotesChanged(NewFormEvent event, Emitter<NewFormState> emit) async {
    final newNotes = event.maybeWhen(
      notesChanged: (notes) => notes,
      orElse: () => throw Error()
    );

    emit(state.copyWith(
      notes: newNotes
    ));
  }

  Future<void> _onFormSubmitted(NewFormEvent event, Emitter<NewFormState> emit) async {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Create new item
    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(
      created: true
    ));
  }
}