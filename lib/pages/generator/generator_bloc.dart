import 'dart:math';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'generator_bloc.freezed.dart';

@freezed
class GeneratorState with _$GeneratorState {
  const GeneratorState._();
  const factory GeneratorState({
    required String generatedPassword,
    required int length,
    required bool lowercase,
    required bool uppercase,
    required bool numbers,
    required bool symbols,
  }) = _GeneratorState;

  factory GeneratorState.empty() => const GeneratorState(
        generatedPassword: '',
        length: 8,
        lowercase: true,
        uppercase: true,
        numbers: true,
        symbols: true,
      );
}

@freezed
class GeneratorEvent with _$GeneratorEvent {
  const factory GeneratorEvent.lengthChanged(int length) = LengthChangedEvent;
  const factory GeneratorEvent.lowercaseChanged(bool lowercase) =
      LowercaseChangedEvent;
  const factory GeneratorEvent.uppercaseChanged(bool uppercase) =
      UppercaseChangedEvent;
  const factory GeneratorEvent.numbersChanged(bool numbers) =
      NumbersChangedEvent;
  const factory GeneratorEvent.symbolsChanged(bool symbols) =
      SymbolsChangedEvent;
  const factory GeneratorEvent.regeneratePassword() = RegeneratePasswordEvent;
}

class GeneratorBloc extends Bloc<GeneratorEvent, GeneratorState> {
  GeneratorBloc() : super(GeneratorState.empty()) {
    on<GeneratorEvent>((event, emit) {
      event.map(
        lengthChanged: (event) => _onLengthChanged(event, emit),
        lowercaseChanged: (event) => _onLowercaseChanged(event, emit),
        uppercaseChanged: (event) => _onUppercaseChanged(event, emit),
        numbersChanged: (event) => _onNumbersChanged(event, emit),
        symbolsChanged: (event) => _onSymbolsChanged(event, emit),
        regeneratePassword: (event) => _onRegeneratePassword(event, emit),
      );
    });
  }

  void _onLengthChanged(
      LengthChangedEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        length: event.length,
        generatedPassword: generatePassword(
          event.length,
          state.lowercase,
          state.uppercase,
          state.numbers,
          state.symbols,
        )));
  }

  void _onLowercaseChanged(
      LowercaseChangedEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        lowercase: event.lowercase,
        generatedPassword: generatePassword(
          state.length,
          event.lowercase,
          state.uppercase,
          state.numbers,
          state.symbols,
        )));
  }

  void _onUppercaseChanged(
      UppercaseChangedEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        uppercase: event.uppercase,
        generatedPassword: generatePassword(
          state.length,
          state.lowercase,
          event.uppercase,
          state.numbers,
          state.symbols,
        )));
  }

  void _onNumbersChanged(
      NumbersChangedEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        numbers: event.numbers,
        generatedPassword: generatePassword(
          state.length,
          state.lowercase,
          state.uppercase,
          event.numbers,
          state.symbols,
        )));
  }

  void _onSymbolsChanged(
      SymbolsChangedEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        symbols: event.symbols,
        generatedPassword: generatePassword(
          state.length,
          state.lowercase,
          state.uppercase,
          state.numbers,
          event.symbols,
        )));
  }

  void _onRegeneratePassword(
      RegeneratePasswordEvent event, Emitter<GeneratorState> emit) {
    emit(state.copyWith(
        generatedPassword: generatePassword(
      state.length,
      state.lowercase,
      state.uppercase,
      state.numbers,
      state.symbols,
    )));
  }
}

String generatePassword(
    int length, bool lowercase, bool uppercase, bool numbers, bool symbols) {
  var alphabetBuffer = StringBuffer();
  if (lowercase) alphabetBuffer.write('abcdefghijklmnopqrstuvwxyz');
  if (uppercase) alphabetBuffer.write('ABCDEFGHIJKLMNOPQRSTUVWXYZ');
  if (numbers) alphabetBuffer.write('123456789');
  if (symbols) alphabetBuffer.write('!@#\$%^&*()_+-=[]{}\\|;\':",./<>?');

  final alphabet = alphabetBuffer.toString();

  if (alphabet.isEmpty) return '';

  final password = StringBuffer();
  for (var i = 1; i < length; i++) {
    password.write(alphabet[Random.secure().nextInt(alphabet.length - 1)]);
  }

  return password.toString();
}
