import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

class UnlockFormState extends Equatable {
  const UnlockFormState({
    this.masterPassword = '',
    this.masterKey = '',
    this.submitted = false,
    this.unlocked = false
  });
  // Raw master password that user enters
  final String masterPassword;
  // Derived master key from master password
  final String masterKey;
  final bool submitted;
  final bool unlocked;

  bool get isFormValid => masterPassword != '';

  UnlockFormState copyWith({
    String? masterPassword,
    String? masterKey,
    bool? submitted,
    bool? unlocked
  }) {
    return UnlockFormState(
      masterPassword: masterPassword ?? this.masterPassword,
      masterKey: masterKey ?? this.masterKey,
      submitted: submitted ?? this.submitted,
      unlocked: unlocked ?? this.unlocked
    );
  }

  @override
  List<dynamic> get props => [masterPassword, masterKey, submitted, unlocked];
}

abstract class UnlockFormEvent extends Equatable {
  const UnlockFormEvent();

  @override
  List<String> get props => [];
}

class MasterPasswordChanged extends UnlockFormEvent {
  const MasterPasswordChanged({ required this.masterPassword });

  final String masterPassword;

  @override
  List<String> get props => [masterPassword];
}

class FormSubmitted extends UnlockFormEvent {
  const FormSubmitted();

  @override
  List<String> get props => [];
}

class UnlockFormBloc extends Bloc<UnlockFormEvent, UnlockFormState> {
  UnlockFormBloc() : super(const UnlockFormState()) {
    on<MasterPasswordChanged>(_onMasterPasswordChanged);
    on<FormSubmitted>(_onFormSubmitted);
  }

  void _onMasterPasswordChanged(event, emit) {
    emit(state.copyWith(
      masterPassword: event.masterPassword
    ));
  }

  Future<void> _onFormSubmitted(event, emit) async {
    emit(state.copyWith(
      submitted: true
    ));

    // TODO: Validate master key

    await Future.delayed(const Duration( seconds: 2 ));
    const masterKey = 'masterKey';

    emit(state.copyWith(
      unlocked: true,
      masterKey: masterKey
    ));
  }
}