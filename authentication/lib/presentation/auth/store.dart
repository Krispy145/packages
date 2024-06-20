// ignore_for_file: unused_element

import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/domain/repositories/code.repository.dart";
import "package:authentication/helpers/env.dart";
import "package:authentication/presentation/auth/builder.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "components/social_types.dart";

part "store.g.dart";

class AuthStore<T extends UserModel> = _AuthStore<T> with _$AuthStore;

abstract class _AuthStore<T extends UserModel> with LoadStateStore, Store {
  final AuthenticationRepository<T> repository;
  final bool showEmailAuth;
  final AuthBuilderType authBuilderType;
  final ShowAuthAction? showPhoneAuth;
  final CodeDataSourceType? codeSource;
  final List<SocialButtonType>? socialTypes;
  final void Function(T userModel)? onSuccess;
  final bool showSuccessSnackBar;

  /// [_AuthStore.authenticate] constructor.
  _AuthStore.authenticate({
    required this.repository,
    this.showEmailAuth = true,
    this.showPhoneAuth,
    this.codeSource,
    this.socialTypes,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  }) : authBuilderType = AuthBuilderType.authenticate {
    init();
  }

  /// [_AuthStore.silent] constructor.
  _AuthStore.silent({
    required this.repository,
    this.showEmailAuth = false,
    this.codeSource,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.silent,
        showPhoneAuth = null,
        socialTypes = null {
    init();
  }

  /// [_AuthStore] constructor.
  _AuthStore.authenticateThenSilent({
    required this.repository,
    this.showEmailAuth = true,
    this.codeSource,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.authenticateThenSilent,
        showPhoneAuth = null,
        socialTypes = null {
    init();
  }

  @observable
  T? userModel;
  @action
  Future<void> init() async {
    try {
      setLoading();

      // Set code source if provided
      if (codeSource != null) {
        repository.setCodeSource(codeSource!);
      }

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
        default:
          setEmpty("No auth type found");
          break;
      }
    } catch (e) {
      setError("Error authenticating user");
    }
  }

  @action
  Future<void> _handleSilent() async {
    final currentUser = repository.currentUserModelStream.value;

    if (currentUser != null && currentUser.status == AuthStatus.authenticated && currentUser.authType == AuthType.anonymous) {
      userModel = currentUser;
      setLoaded();
    } else {
      await _signInAnonymously();
    }
  }

  @action
  Future<void> _handleAuthenticateThenSilent() async {
    final currentUser = repository.currentUserModelStream.value;

    if (currentUser != null && currentUser.status == AuthStatus.authenticated) {
      userModel = currentUser;
      setLoaded();
    } else {
      await _signInAnonymously();
    }
  }

  @action
  Future<void> _handleAuthenticate() async {
    final currentUser = repository.currentUserModelStream.value;
    if (currentUser != null && currentUser.status == AuthStatus.authenticated && currentUser.authType == AuthType.anonymous) {
      await repository.signOut();
      setEmpty("User is anonymous");
    } else if (currentUser != null && currentUser.status == AuthStatus.authenticated) {
      userModel = currentUser;
      setLoaded();
    } else {
      setEmpty("User is not authenticated");
    }
  }

  @action
  Future<void> _signInAnonymously() async {
    setLoading();
    var params = AuthParams.anonymous();
    if (codeSource != null) {
      params = params.copyWith(code: AuthEnv.code);
    }
    final response = await repository.signIn(
      params: params,
    );
    if (response != null) {
      userModel = response;
      setLoaded();
    } else {
      setError("Error signing in anonymously");
    }
  }
}
