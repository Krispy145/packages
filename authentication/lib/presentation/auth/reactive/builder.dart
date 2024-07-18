import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/presentation/auth/builder.dart";
import "package:authentication/presentation/auth/components/socials.dart";
import "package:authentication/presentation/auth/reactive/components/email.dart";
import "package:authentication/presentation/auth/reactive/components/phone.dart";
import "package:authentication/presentation/auth/reactive/components/socials.dart";
import "package:authentication/presentation/auth/reactive/store.dart";
import "package:authentication/presentation/auth/store.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/models/reactive_view.dart";
import "package:reactive_forms/src/validators/validation_message.dart";
import "package:reactive_forms/src/widgets/reactive_form_field.dart";
import "package:reactive_forms/src/widgets/reactive_text_field.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

//TODO: Make the auth store and extend it to the reactive auth store
/// [ReactiveAuthenticationBuilder] is a widget that builds the authentication view based on the [AuthStore].
class ReactiveAuthenticationBuilder<T extends UserModel> extends ReactiveFormsModelView<T, ReactiveAuthStore<T>> {
  final List<ReactiveFormField<dynamic, dynamic>>? additionalFields;

  /// [ReactiveAuthenticationBuilder] constructor.
  ReactiveAuthenticationBuilder({
    super.key,
    required super.store,
    this.additionalFields,
  }) : super(onBack: (_) {});

  @override
  Widget formBuilder(BuildContext context) {
    return Observer(
      builder: (context) {
        if (store.isLoaded) {
          conditionallyShowSnackbar(context);
        }
        return _AuthenticateView(
          store: store,
          additionalFields: additionalFields,
        );
      },
    );
  }

  void conditionallyShowSnackbar(BuildContext context) {
    final _user = store.editingValue;
    final _shouldShow = _user?.status == AuthStatus.authenticated && store.showSuccessSnackBar && store.authBuilderType != AuthBuilderType.silent && _user?.authType != AuthType.anonymous;
    if (!_shouldShow) return;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.showSnackbar(
        configuration: SnackbarConfiguration.confirmation(
          title: "Successfully signed in",
        ),
      );
    });
  }
}

class _AuthenticateView<T extends UserModel> extends StatelessWidget {
  final List<ReactiveFormField<dynamic, dynamic>>? additionalFields;
  const _AuthenticateView({
    required this.store,
    this.additionalFields,
  });
  final ReactiveAuthStore<T> store;

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
          child: Observer(
            builder: (context) {
              return Column(
                children: [
                  if (additionalFields != null && store.authAction == AuthAction.signUp)
                    ...additionalFields!.map((field) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          field,
                          Sizes.s.spacer(),
                        ],
                      );
                    }),
                  if (store.codeSource != null && store.authAction == AuthAction.signUp) ...[
                    ReactiveTextField<String?>(
                      formControlName: store.codeKey,
                      validationMessages: {
                        ValidationMessage.required: (_) => "A code is required",
                      },
                      onSubmitted: (_) => store.form.focus(store.emailKey),
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_rounded),
                        labelText: "Enter a given code",
                      ),
                    ),
                    Sizes.s.spacer(),
                  ],
                  if (store.showEmailAuth)
                    EmailAuthWidget<T>(
                      store: store,
                      onSignInComplete: (userModel) {
                        if (store.showSuccessSnackBar) {
                          context.showSnackbar(
                            configuration: SnackbarConfiguration.confirmation(
                              title: "Successfully signed in",
                            ),
                          );
                        }
                        store.onSuccess.call(userModel);
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
                              configuration: SnackbarConfiguration.confirmation(
                                title: "Successfully signed in",
                              ),
                            );
                          }
                          store.onSuccess.call(userModel);
                        },
                      ),
                    if (store.showPhoneAuth!.showSignUp)
                      PhoneAuthWidget<T>(
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
                          store.onSuccess.call(userModel);
                        },
                      ),
                  ],
                  if (store.socialTypes != null)
                    ReactiveSocialButtons(
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

                        store.onSuccess.call(userModel as T);
                      },
                      socialButtonVariant: socialButtonVariant,
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
