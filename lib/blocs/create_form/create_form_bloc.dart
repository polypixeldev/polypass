import 'package:bloc/bloc.dart';
import 'package:encrypt/encrypt.dart';

import 'package:polypass/data/vault_repository.dart';
import 'package:polypass/data/vault_file/vault_file.dart';
import 'package:polypass/data/app_settings/app_settings.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_form_bloc.freezed.dart';

@freezed
class CreateFormState with _$CreateFormState {
  const CreateFormState._();
  const factory CreateFormState(String name, String masterPassword,
      VaultUrl? url, bool submitted, bool created) = _CreateFormState;

  factory CreateFormState.empty() =>
      const CreateFormState('', '', null, false, false);

  bool get isFormValid =>
      (name != '') && (masterPassword != '') && (url != null);
}

@freezed
class CreateFormEvent with _$CreateFormEvent {
  const factory CreateFormEvent.nameChanged(String name) = NameChangedEvent;
  const factory CreateFormEvent.masterPasswordChanged(String masterPassword) =
      MasterPasswordChangedEvent;
  const factory CreateFormEvent.urlChanged(VaultUrl url) = UrlChangedEvent;
  const factory CreateFormEvent.formSubmitted() = FormSubmittedEvent;
  const factory CreateFormEvent.dataCleared() = DataClearedEvent;
}

class CreateFormBloc extends Bloc<CreateFormEvent, CreateFormState> {
  CreateFormBloc({required this.vaultRepository, required this.appSettings})
      : super(CreateFormState.empty()) {
    on<CreateFormEvent>((event, emit) async {
      await event.map(
          nameChanged: (event) => _onNameChanged(event, emit),
          masterPasswordChanged: (event) =>
              _onMasterPasswordChanged(event, emit),
          urlChanged: (event) => _onPathChanged(event, emit),
          formSubmitted: (event) => _onFormSubmitted(event, emit),
          dataCleared: (event) => _onDataCleared(event, emit));
    });
  }

  final VaultRepository vaultRepository;
  final AppSettings appSettings;

  Future<void> _onNameChanged(
      NameChangedEvent event, Emitter<CreateFormState> emit) async {
    emit(state.copyWith(name: event.name));
  }

  Future<void> _onMasterPasswordChanged(
      MasterPasswordChangedEvent event, Emitter<CreateFormState> emit) async {
    emit(state.copyWith(masterPassword: event.masterPassword));
  }

  Future<void> _onPathChanged(
      UrlChangedEvent event, Emitter<CreateFormState> emit) async {
    emit(state.copyWith(url: event.url));
  }

  Future<void> _onFormSubmitted(
      FormSubmittedEvent event, Emitter<CreateFormState> emit) async {
    emit(state.copyWith(submitted: true));

    final salt = EncryptedData.generateSalt();
    final derivedKey = EncryptedData.deriveDerivedKey(
        state.masterPassword, salt, appSettings.defaultVaultSettings);
    final masterKey = EncryptedData.deriveMasterKey(
        Key.fromSecureRandom(256).base64,
        salt,
        appSettings.defaultVaultSettings);
    final iv = IV.fromSecureRandom(16);

    await vaultRepository.updateFile(
        VaultFile(
            header: VaultHeader(
                name: state.name,
                settings: appSettings.defaultVaultSettings,
                magic: MagicValue(Encrypter(AES(derivedKey))
                    .encrypt(MagicValue.decryptedValue.value, iv: iv)
                    .base64),
                key: Encrypter(AES(derivedKey))
                    .encrypt(masterKey.base64, iv: iv)
                    .base64,
                salt: salt),
            url: state.url,
            contents: EncryptedData<VaultContents>.decrypted(
                VaultContents(components: []), iv)),
        masterKey);

    emit(state.copyWith(created: true));
  }

  Future<void> _onDataCleared(
      DataClearedEvent event, Emitter<CreateFormState> emit) async {
    emit(CreateFormState.empty());
  }
}
