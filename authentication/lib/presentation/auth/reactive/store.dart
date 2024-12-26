import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/domain/repositories/code.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/helpers/env.dart";
import "package:authentication/presentation/auth/builder.dart";
import "package:authentication/presentation/auth/components/social_types.dart";
import "package:flutter/foundation.dart";
import "package:forms/presentation/models/reactive_store.dart";
import "package:mobx/mobx.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";

part "store.g.dart";

class ReactiveAuthStore<T extends UserModel> = _ReactiveAuthStore<T> with _$ReactiveAuthStore;

abstract class _ReactiveAuthStore<T extends UserModel> extends ReactiveFormsModelStore<T> with Store {
  final AuthenticationRepository<T> repository;
  final FormGroup? additionalFields;
  final bool showEmailAuth;
  final AuthBuilderType authBuilderType;
  final ShowAuthAction? showPhoneAuth;
  final CodeDataSourceType? codeSource;
  final List<SocialButtonType>? socialTypes;
  final Future<RequestResponse> Function(T userModel) onSuccess;
  final bool showSuccessSnackBar;

  /// [_ReactiveAuthStore.authenticate] constructor.
  _ReactiveAuthStore.authenticate({
    required this.repository,
    this.additionalFields,
    this.showEmailAuth = true,
    this.showPhoneAuth,
    this.codeSource,
    this.socialTypes,
    required this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.authenticate,
        super(
          saveValue: (isAdding, value) => onSuccess(value),
          editingValue: repository.currentUserModelStream.value,
        ) {
    init();
  }

  /// [_ReactiveAuthStore.silent] constructor.
  _ReactiveAuthStore.silent({
    required this.repository,
    this.showEmailAuth = false,
    this.codeSource,
    required this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.silent,
        showPhoneAuth = null,
        additionalFields = null,
        socialTypes = null,
        super(
          saveValue: (isAdding, value) => onSuccess(value),
          editingValue: repository.currentUserModelStream.value,
        ) {
    init();
  }

  /// [_ReactiveAuthStore] constructor.
  _ReactiveAuthStore.authenticateThenSilent({
    required this.repository,
    this.showEmailAuth = true,
    this.codeSource,
    required this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.authenticateThenSilent,
        showPhoneAuth = null,
        additionalFields = null,
        socialTypes = null,
        super(
          saveValue: (isAdding, value) => onSuccess(value),
          editingValue: repository.currentUserModelStream.value,
        ) {
    init();
  }

  @observable
  AuthAction authAction = AuthAction.signIn;

  @action
  void toggleSignIn() {
    authAction = authAction == AuthAction.signIn ? AuthAction.signUp : AuthAction.signIn;
    if (authAction == AuthAction.signUp) {
      if (codeSource != null) {
        form.addAll({
          codeKey: FormControl<String>(
            validators: [
              Validators.required,
            ],
          ),
        });
        repository.setCodeSource(codeSource!);
      }
      additionalFields?.controls.forEach((key, value) {
        value.setValidators([Validators.required]);
      });
      form
        ..addAll(confirmFormControl)
        ..setValidators(
          [Validators.mustMatch(passwordKey, confirmPasswordKey)],
        );
    } else {
      additionalFields?.controls.forEach((key, value) {
        value.clearValidators();
      });
      form
        ..setValidators([])
        ..removeControl(confirmPasswordKey);
    }
  }

  final idKey = "id";
  final emailKey = "email";
  final passwordKey = "password";
  final confirmPasswordKey = "confirm_password";
  final displayNameKey = "display_name";
  final codeKey = "code";

  late final confirmFormControl = {
    confirmPasswordKey: FormControl<String>(
      validators: [
        Validators.required,
        Validators.minLength(8),
      ],
    ),
  };

  @override
  @observable
  late FormGroup form = FormGroup(
    {
      idKey: FormControl<String>(value: editingValue?.id ?? ""),
      emailKey: FormControl<String>(
        value: kDebugMode ? AuthEnv.email : null,
        validators: [
          Validators.required,
          Validators.email,
        ],
      ),
      passwordKey: FormControl<String>(
        value: kDebugMode ? AuthEnv.password : null,
        validators: [
          Validators.required,
          Validators.minLength(8),
        ],
      ),
      displayNameKey: FormControl<String>(value: editingValue?.displayName ?? ""),
    },
  );

  @action
  Future<void> init() async {
    try {
      setLoading();
      if (codeSource != null && authAction == AuthAction.signUp) {
        form.addAll({
          codeKey: FormControl<String>(
            validators: [
              Validators.required,
            ],
          ),
        });
        repository.setCodeSource(codeSource!);
      }
      form.addAll(additionalFields?.controls ?? {});

      // Handle different auth builder types
      switch (authBuilderType) {
        case AuthBuilderType.silent:
          await _handleSilent();
          break;
        case AuthBuilderType.authenticateThenSilent:
          await _handleAuthenticateThenSilent();
          break;
        case AuthBuilderType.authenticate:
          await _handleAuthenticate();
          break;
      }
    } catch (e) {
      setError("Error authenticating user");
    }
  }

  @action
  Future<T?> signIn(AuthParams userParams) async {
    setLoading();
    form.control(emailKey).value = userParams.email;
    form.control(passwordKey).value = userParams.password;
    final params = repository.convertDataTypeFromMap(userParams.toMap());
    final response = await repository.signIn(params: params);
    if (response != null) {
      setLoaded();
    } else {
      setError("Error signing in");
    }
    return response;
  }

  @action
  Future<T?> signUpWithEmail() async {
    setLoading();
    final _additionalFieldsMap = additionalFields?.controls.map((key, value) => MapEntry(key, value.value));
    final paramsMap = AuthParams.email(
      email: form.control(emailKey).value as String,
      password: form.control(passwordKey).value as String,
      displayName: form.control(displayNameKey).value as String?,
    ).toMap()
      ..addAll(
        _additionalFieldsMap ?? {},
      );
    final params = repository.convertDataTypeFromMap(paramsMap);
    final result = await repository.signUpWithEmail(
      params: params,
    );
    setLoaded();
    return result;
  }

  @action
  Future<RequestResponse> sendPasswordResetEmail(String email) async {
    final response = await repository.sendPasswordResetEmail(email: email);
    return response;
  }

  @action
  Future<void> _handleSilent() async {
    if (editingValue != null && editingValue?.status == AuthStatus.authenticated && editingValue?.authType == AuthType.anonymous) {
      setLoaded();
    } else {
      await _signInAnonymously();
    }
  }

  @action
  Future<void> _handleAuthenticateThenSilent() async {
    final currentUser = repository.currentUserModelStream.value;
    if (currentUser != null && currentUser.status == AuthStatus.authenticated) {
      setLoaded();
    } else {
      await _signInAnonymously();
    }
  }

  @action
  Future<void> _handleAuthenticate() async {
    if (editingValue != null && editingValue?.status == AuthStatus.authenticated && editingValue?.authType == AuthType.anonymous) {
      await repository.signOut();
      setEmpty("User is anonymous");
    } else if (editingValue != null && editingValue?.status == AuthStatus.authenticated) {
      setLoaded();
    } else {
      setEmpty("User is not authenticated");
    }
  }

  @action
  Future<void> _signInAnonymously() async {
    setLoading();
    var anonymousParams = AuthParams.anonymous();
    if (codeSource != null) {
      anonymousParams = anonymousParams.copyWith(code: AuthEnv.code);
    }
    final params = repository.convertDataTypeFromMap(anonymousParams.toMap());
    final response = await repository.signIn(
      params: params,
    );
    if (response != null) {
      setLoaded();
    } else {
      setError("Error signing in anonymously");
    }
  }
}
