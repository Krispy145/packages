import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/presentation/auth/components/email.dart";
import "package:authentication/presentation/auth/components/phone.dart";
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
  final List<AdditionalDataField>? additionalFields;
  final AuthStore<T> store;

  /// [AuthenticationBuilder] constructor.
  const AuthenticationBuilder({
    super.key,
    required this.store,
    this.additionalFields,
  });

  @override
  Widget build(BuildContext context) {
    return PackageLoadStateBuilder(
      store: store,
      emptyBuilder: (context, empty) => _AuthenticateView(
        store: store,
        additionalFields: additionalFields,
      ),
      loadedBuilder: (context) {
        if (store.authBuilderType == AuthBuilderType.silent) {
          conditionallyShowSnackbar(context);
          store.onSuccess?.call(store.userModel!);
          return const SizedBox.shrink();
        } else {
          return _AuthenticateView(
            store: store,
            additionalFields: additionalFields,
          );
        }
      },
      errorBuilder: (context, error) => Center(child: Text(error)),
    );
  }

  void conditionallyShowSnackbar(BuildContext context) {
    final _user = store.userModel;
    final _shouldShow = _user?.status == AuthStatus.authenticated &&
        store.showSuccessSnackBar &&
        store.authBuilderType != AuthBuilderType.silent &&
        _user?.authType != AuthType.anonymous;
    if (!_shouldShow) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.showSnackbar(
        SnackbarConfiguration.confirmation(
          title: "Successfully signed in",
        ),
      );
    });
  }
}

class _AuthenticateView<T extends UserModel> extends StatelessWidget {
  final List<AdditionalDataField>? additionalFields;
  const _AuthenticateView({
    required this.store,
    this.additionalFields,
  });
  final AuthStore<T> store;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobile;
    final maxWidth = context.screenWidth * (isMobile ? 0.85 : 0.5);
    final socialButtonVariant =
        isMobile ? SocialButtonVariant.icon : SocialButtonVariant.iconAndText;
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Column(
            children: [
              if (store.showEmailAuth)
                EmailAuthWidget<T>(
                  store: store,
                  codeDataSourceType: store.codeSource,
                  additionalDataFields: additionalFields,
                  onSignInComplete: (userModel) {
                    if (store.showSuccessSnackBar) {
                      context.showSnackbar(
                        SnackbarConfiguration.confirmation(
                          title: "Successfully signed in",
                        ),
                      );
                    }
                    store.onSuccess?.call(userModel);
                  },
                  onPasswordResetEmailSent: () {
                    context.showSnackbar(
                      SnackbarConfiguration.confirmation(
                        title: "Password reset email sent",
                      ),
                    );
                  },
                ),
              if (store.showPhoneAuth != null) ...[
                if (store.showPhoneAuth!.showSignIn)
                  PhoneAuthWidget<T>(
                    repository: store.repository,
                    authAction: AuthAction.signIn,
                    onSuccess: (userModel) {
                      if (store.showSuccessSnackBar) {
                        context.showSnackbar(
                          SnackbarConfiguration.confirmation(
                            title: "Successfully signed in",
                          ),
                        );
                      }
                      store.onSuccess?.call(userModel);
                    },
                  ),
                if (store.showPhoneAuth!.showSignUp)
                  PhoneAuthWidget<T>(
                    repository: store.repository,
                    authAction: AuthAction.signUp,
                    onSuccess: (userModel) {
                      if (store.showSuccessSnackBar) {
                        context.showSnackbar(
                          SnackbarConfiguration.confirmation(
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
                        SnackbarConfiguration.confirmation(
                          title: "Successfully signed in",
                        ),
                      );
                    }

                    store.onSuccess?.call(userModel as T);
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
