import 'dart:async';

import 'package:authentication/data/models/auth_params.dart';
import 'package:authentication/data/models/user_model.dart';
import 'package:authentication/domain/repositories/authentication.repository.dart';
import 'package:authentication/helpers/constants.dart';
import 'package:authentication/presentation/components/email.dart';
import 'package:authentication/presentation/components/phone.dart';
import 'package:authentication/presentation/components/social_types.dart';
import 'package:authentication/presentation/components/socials.dart';
import 'package:flutter/material.dart';
import 'package:utilities/helpers/extensions/build_context.dart';
import 'package:utilities/snackbar/configuration.dart';

// import 'store.dart';

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
  final ShowAuthAction? showPhoneAuth;
  final List<SocialButtonType>? socialTypes;
  final void Function(UserModel userModel)? onSuccess;
  final bool showSuccessSnackBar;

  /// [AuthenticationBuilder] constructor.
  const AuthenticationBuilder({
    super.key,
    required this.repository,
    this.showEmailAuth = true,
    this.showPhoneAuth,
    this.socialTypes,
    this.onSuccess,
    this.showSuccessSnackBar = false,
  });

  @override
  State<AuthenticationBuilder> createState() => _AuthenticationBuilderState();
}

class _AuthenticationBuilderState extends State<AuthenticationBuilder> {
  late final StreamSubscription<UserModel?> _userModelSubscription;

  @override
  void initState() {
    super.initState();
    _userModelSubscription = widget.repository.currentUserModelStream.listen((data) {
      if (data != null) {
        final authStatus = data.status;
        if (authStatus == AuthStatus.authenticated) {
          widget.onSuccess?.call(data);
          if (widget.showSuccessSnackBar) {
            context.showSnackbar(
              configuration: SnackbarConfiguration.confirmation(
                title: 'Successfully signed in',
              ),
            );
          }
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _userModelSubscription.cancel();
  }

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
