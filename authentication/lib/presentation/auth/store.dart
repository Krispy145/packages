import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/presentation/auth/builder.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "components/social_types.dart";

part "store.g.dart";

class AuthStore<T extends UserModel> = _AuthStore<T> with _$AuthStore<T>;

abstract class _AuthStore<T extends UserModel> extends LoadStateStore with Store {
  final AuthenticationRepository repository;
  final bool showEmailAuth;
  final AuthBuilderType authBuilderType;
  final ShowAuthAction? showPhoneAuth;
  final List<SocialButtonType>? socialTypes;
  final void Function(T userModel)? onSuccess;
  final bool showSuccessSnackBar;

  _AuthStore({
    required this.authBuilderType,
    required this.repository,
    required this.showEmailAuth,
    required this.showPhoneAuth,
    required this.socialTypes,
    required this.onSuccess,
    required this.showSuccessSnackBar,
  }) {
    init();
  }

  @observable
  UserModel? userModel;

  @action
  Future<void> init() async {
    try {
      setLoading();
      if (authBuilderType == AuthBuilderType.silent || authBuilderType == AuthBuilderType.authenticateThenSilent) {
        await signInAnonymously();
      } else if (authBuilderType == AuthBuilderType.authenticateThenSilent || authBuilderType == AuthBuilderType.authenticate) {
        final currentUser = repository.currentUserModelStream.value;
        if (currentUser != null) {
          userModel = currentUser;
          if (userModel!.status == AuthStatus.authenticated) {
            setLoaded();
            return;
          }
        } else {
          setEmpty();
        }
      } else if ((userModel?.status == AuthStatus.unauthenticated || userModel == null) && authBuilderType == AuthBuilderType.authenticateThenSilent) {
        await signInAnonymously();
      } else {
        setEmpty();
      }
    } catch (e) {
      setError();
    }
  }

  @action
  Future<void> signInAnonymously() async {
    setLoading();
    final response = await repository.signIn(
      params: AuthParams.anonymous(),
    );
    if (response != null) {
      userModel = response;
      setLoaded();
    } else {
      setError();
    }
  }
}
