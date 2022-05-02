import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class CreateFormState extends Equatable {
  const CreateFormState({
    this.name = '',
    this.description = '',
    this.path = '',
    this.submitted = false,
    this.created = false
  });

  final String name;
  final String description;
  final String path;
  final bool submitted;
  final bool created;

  CreateFormState copyWith({
    String? name,
    String? description,
    String? path,
    bool? submitted,
    bool? created
  }) {
    return CreateFormState(
      name: name ?? this.name,
      description: description ?? this.description,
      path: path ?? this.path,
      submitted: submitted ?? this.submitted,
      created: created ?? this.created
    );
  }

  @override
  List<dynamic> get props => [name, description, path, submitted];
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

  void _onPathChanged(event, emit) {
    emit(state.copyWith(
      path: event.path
    ));
  }

  void _onFormSubmitted(event, emit) {
    emit(state.copyWith(
      submitted: true
    ));
  }
}