import "dart:async";

import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/presentation/auth/components/email.dart";
import "package:authentication/presentation/auth/components/phone.dart";
import "package:authentication/presentation/auth/components/social_types.dart";
import "package:authentication/presentation/auth/components/socials.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";

enum AuthBuilderType {
  authenticate,
  silent,
  authenticateThenSilent,
}

class ShowAuthAction {
  bool showSignUp;
  bool showSignIn;

  ShowAuthAction({required this.showSignUp, required this.showSignIn});
}

//TODO: Make the auth store and extend loadstate to init getting the autentication status from the repository.
/// [AuthenticationBuilder] is a class that uses [_AuthenticationBuilderState] to manage state of the authentication feature.
class AuthenticationBuilder extends StatefulWidget {
  final AuthenticationRepository repository;
  final bool showEmailAuth;
  final AuthBuilderType authBuilderType;
  final ShowAuthAction? showPhoneAuth;
  final List<SocialButtonType>? socialTypes;
  final void Function(UserModel userModel)? onSuccess;
  final bool showSuccessSnackBar;

  /// [AuthenticationBuilder.authenticate] constructor.
  const AuthenticationBuilder.authenticate({
    super.key,
    required this.repository,
    this.showEmailAuth = true,
    this.showPhoneAuth,
    this.socialTypes,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  }) : authBuilderType = AuthBuilderType.authenticate;

  /// [AuthenticationBuilder.silent] constructor.
  const AuthenticationBuilder.silent({
    super.key,
    required this.repository,
    this.showEmailAuth = false,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.silent,
        showPhoneAuth = null,
        socialTypes = null;

  /// [AuthenticationBuilder] constructor.
  const AuthenticationBuilder.authenticateThenSilent({
    super.key,
    required this.repository,
    this.showEmailAuth = true,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  })  : authBuilderType = AuthBuilderType.authenticateThenSilent,
        showPhoneAuth = null,
        socialTypes = null;

  @override
  State<AuthenticationBuilder> createState() => _AuthenticationBuilderState();
}

class _AuthenticationBuilderState extends State<AuthenticationBuilder> {
  late final UserModel? _userModel;

  @override
  void initState() {
    super.initState();
    if (widget.authBuilderType == AuthBuilderType.silent) {
      _signInAnonymously();
    }
    if (widget.authBuilderType == AuthBuilderType.authenticateThenSilent || widget.authBuilderType == AuthBuilderType.authenticate) {
      setState(() {
        _userModel = widget.repository.currentUserModelStream.value;
        if (_userModel != null) {
          final authStatus = _userModel.status;
          if (authStatus == AuthStatus.authenticated) {
            widget.onSuccess?.call(_userModel);
            if (widget.showSuccessSnackBar) {
              context.showSnackbar(
                configuration: SnackbarConfiguration.confirmation(
                  title: "Successfully signed in",
                ),
              );
            }
          }
        } else if ((_userModel?.status == AuthStatus.unauthenticated || _userModel == null) && widget.authBuilderType == AuthBuilderType.authenticateThenSilent) {
          _signInAnonymously();
        }
      });
    }
  }

  Future<void> _signInAnonymously() async {
    final response = await widget.repository.signIn(
      params: AuthParams.anonymous(),
    );
    if (response != null) {
      widget.onSuccess?.call(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.authBuilderType == AuthBuilderType.silent || widget.authBuilderType == AuthBuilderType.authenticateThenSilent
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : _AuthenticateView(widget: widget);
  }
}

class _AuthenticateView extends StatelessWidget {
  const _AuthenticateView({
    required this.widget,
  });

  final AuthenticationBuilder widget;

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
              if (widget.showEmailAuth)
                EmailAuthWidget(
                  repository: widget.repository,
                  onSignInComplete: widget.onSuccess ?? (userModel) {},
                  onSignUpComplete: widget.onSuccess ?? (userModel) {},
                ),
              if (widget.showPhoneAuth != null) ...[
                if (widget.showPhoneAuth!.showSignIn)
                  PhoneAuthWidget(
                    repository: widget.repository,
                    authAction: AuthAction.signIn,
                    onSuccess: widget.onSuccess ?? (userModel) {},
                  ),
                if (widget.showPhoneAuth!.showSignUp)
                  PhoneAuthWidget(
                    repository: widget.repository,
                    authAction: AuthAction.signUp,
                    onSuccess: widget.onSuccess ?? (userModel) {},
                  ),
              ],
              if (widget.socialTypes != null)
                SocialButtons(
                  repository: widget.repository,
                  socialTypes: widget.socialTypes!,
                  onSuccess: widget.onSuccess ?? (userModel) {},
                  socialButtonVariant: socialButtonVariant,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
