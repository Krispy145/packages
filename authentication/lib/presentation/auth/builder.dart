import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/presentation/auth/components/email.dart";
import "package:authentication/presentation/auth/components/phone.dart";
import "package:authentication/presentation/auth/components/social_types.dart";
import "package:authentication/presentation/auth/components/socials.dart";
import "package:authentication/presentation/auth/store.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/widgets/load_state/builder.dart";

enum AuthBuilderType {
  authenticate,
  silent,
  authenticateThenSilent,
}

class ShowAuthAction {
  bool showSignUp;
  bool showSignIn;

  ShowAuthAction({
    required this.showSignUp,
    required this.showSignIn,
  });
}

//TODO: Make the auth store and extend loadstate to init getting the autentication status from the repository.
/// [AuthenticationBuilder] is a class that uses [_AuthenticationBuilderState] to manage state of the authentication feature.
class AuthenticationBuilder<T extends UserModel> extends StatelessWidget {
  final AuthenticationRepository repository;
  final bool showEmailAuth;
  final AuthBuilderType authBuilderType;
  final ShowAuthAction? showPhoneAuth;
  final List<SocialButtonType>? socialTypes;
  final void Function(T userModel)? onSuccess;
  final bool showSuccessSnackBar;

  /// [AuthenticationBuilder.authenticate] constructor.
  AuthenticationBuilder.authenticate({
    super.key,
    required this.repository,
    this.showEmailAuth = true,
    this.showPhoneAuth,
    this.socialTypes,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  }) : authBuilderType = AuthBuilderType.authenticate;

  /// [AuthenticationBuilder.silent] constructor.
  AuthenticationBuilder.silent({
    super.key,
    required this.repository,
    this.showEmailAuth = false,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.silent,
        showPhoneAuth = null,
        socialTypes = null;

  /// [AuthenticationBuilder] constructor.
  AuthenticationBuilder.authenticateThenSilent({
    super.key,
    required this.repository,
    this.showEmailAuth = true,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.authenticateThenSilent,
        showPhoneAuth = null,
        socialTypes = null;

  late final store = AuthStore(
    authBuilderType: authBuilderType,
    repository: repository,
    showEmailAuth: showEmailAuth,
    showPhoneAuth: showPhoneAuth,
    socialTypes: socialTypes,
    onSuccess: onSuccess,
    showSuccessSnackBar: showSuccessSnackBar,
  );

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      emptyBuilder: (context) => _AuthenticateView(
        store: store,
      ),
      loadedBuilder: (context) {
        if (showSuccessSnackBar) {
          context.showSnackbar(
            configuration: SnackbarConfiguration.confirmation(
              title: "Successfully signed in",
            ),
          );
        }
        onSuccess?.call(store.userModel! as T);
        return _AuthenticateView(
          store: store,
        );
      },
      errorBuilder: (context) => const Center(
        child: Text("Error loading authentication View"),
      ),
    );
  }
}

class _AuthenticateView extends StatelessWidget {
  const _AuthenticateView({
    required this.store,
  });
  final AuthStore store;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
    final maxWidth = MediaQuery.of(context).size.width * (isMobile ? 0.85 : 0.5);
    final socialButtonVariant = isMobile ? SocialButtonVariant.icon : SocialButtonVariant.iconAndText;
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Column(
            children: [
              if (store.showEmailAuth)
                EmailAuthWidget(
                  repository: store.repository,
                  codeDataSourceType: store.repository.codeSource,
                  onSignInComplete: (userModel) {
                    if (store.showSuccessSnackBar) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.confirmation(
                          title: "Successfully signed in",
                        ),
                      );
                    }
                    store.onSuccess?.call(userModel);
                  },
                ),
              if (store.showPhoneAuth != null) ...[
                if (store.showPhoneAuth!.showSignIn)
                  PhoneAuthWidget(
                    repository: store.repository,
                    authAction: AuthAction.signIn,
                    onSuccess: (userModel) {
                      if (store.showSuccessSnackBar) {
                        context.showSnackbar(
                          configuration: SnackbarConfiguration.confirmation(
                            title: "Successfully signed in",
                          ),
                        );
                      }
                      store.onSuccess?.call(userModel);
                    },
                  ),
                if (store.showPhoneAuth!.showSignUp)
                  PhoneAuthWidget(
                    repository: store.repository,
                    authAction: AuthAction.signUp,
                    onSuccess: (userModel) {
                      if (store.showSuccessSnackBar) {
                        context.showSnackbar(
                          configuration: SnackbarConfiguration.confirmation(
                            title: "Successfully signed in",
                          ),
                        );
                      }
                      store.onSuccess?.call(userModel);
                    },
                  ),
              ],
              if (store.socialTypes != null)
                SocialButtons(
                  repository: store.repository,
                  socialTypes: store.socialTypes!,
                  onSuccess: (userModel) {
                    if (store.showSuccessSnackBar) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.confirmation(
                          title: "Successfully signed in",
                        ),
                      );
                    }
                    store.onSuccess?.call(userModel);
                  },
                  socialButtonVariant: socialButtonVariant,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
