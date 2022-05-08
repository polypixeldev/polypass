import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CreateFormState extends Equatable {
  const CreateFormState({
    this.name = '',
    this.description = '',
    this.masterPassword = '',
    this.path = '',
    this.submitted = false,
    this.created = false
  });

  final String name;
  final String description;
  final String masterPassword;
  final String path;
  final bool submitted;
  final bool created;

  bool get isFormValid => (name != '') && (description != '') && (masterPassword != '') && (path != '');

  CreateFormState copyWith({
    String? name,
    String? description,
    String? masterPassword,
    String? path,
    bool? submitted,
    bool? created
  }) {
    return CreateFormState(
      name: name ?? this.name,
      description: description ?? this.description,
      masterPassword: masterPassword ?? this.masterPassword,
      path: path ?? this.path,
      submitted: submitted ?? this.submitted,
      created: created ?? this.created
    );
  }

  @override
  List<dynamic> get props => [name, description, masterPassword, path, submitted, created];
}

abstract class CreateFormEvent extends Equatable {
  const CreateFormEvent();

  @override
  List<String> get props => [];
}

class NameChanged extends CreateFormEvent {
  const NameChanged({ required this.name });

  final String name;

  @override
  List<String> get props => [name];
}

class DescriptionChanged extends CreateFormEvent {
  const DescriptionChanged({ required this.description });

  final String description;

  @override
  List<String> get props => [description];
}

class MasterPasswordChanged extends CreateFormEvent {
  const MasterPasswordChanged({ required this.masterPassword });

  final String masterPassword;

  @override
  List<String> get props => [masterPassword];
}

class PathChanged extends CreateFormEvent {
  const PathChanged({ required this.path });

  final String path;

  @override
  List<String> get props => [path];
}

class FormSubmitted extends CreateFormEvent {
  const FormSubmitted();

  @override
  List<String> get props => [];
}

class CreateFormBloc extends Bloc<CreateFormEvent, CreateFormState> {
  CreateFormBloc() : super(const CreateFormState()) {
    on<NameChanged>(_onNameChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<MasterPasswordChanged>(_onMasterPasswordChanged);
    on<PathChanged>(_onPathChanged);
    on<FormSubmitted>(_onFormSubmitted);
  }

  void _onNameChanged(event, emit) {
    emit(state.copyWith(
      name: event.name
    ));
  }

  void _onDescriptionChanged(event, emit) {
    emit(state.copyWith(
      description: event.description
    ));
  }

  void _onMasterPasswordChanged(event, emit) {
    emit(state.copyWith(
      masterPassword: event.masterPassword
    ));
  }

  void _onPathChanged(event, emit) {
    emit(state.copyWith(
      path: event.path
    ));
  }

  Future<void> _onFormSubmitted(event, emit) async {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Create database file
    await Future.delayed(const Duration( seconds: 2 ));

    emit(state.copyWith(
      created: true
    ));
  }
}