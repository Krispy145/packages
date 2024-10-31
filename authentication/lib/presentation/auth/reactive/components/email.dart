import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/presentation/auth/reactive/store.dart";
import "package:authentication/utils/loggers.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:reactive_forms/src/validators/validation_message.dart";
import "package:reactive_forms/src/widgets/reactive_text_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/helpers/extensions/platform.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

class EmailAuthWidget<T extends UserModel> extends StatefulWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final ReactiveAuthStore<T> store;

  /// Callback for the user to complete a sign in.
  final void Function(T userModel) onSignInComplete;

  /// Callback for the user to complete a signUp.

  /// Callback for sending the password reset email
  final void Function()? onPasswordResetEmailSent;

  /// Callback for when the auth action threw an excepction
  ///
  /// If set to `null`, a snack bar with error color will show up.
  final void Function(Object error)? onError;

  const EmailAuthWidget({
    super.key,
    required this.store,
    required this.onSignInComplete,
    this.onPasswordResetEmailSent,
    this.onError,
  });

  @override
  State<EmailAuthWidget<T>> createState() => _EmailAuthWidgetState<T>();
}

class _EmailAuthWidgetState<T extends UserModel> extends State<EmailAuthWidget<T>> {
  bool _isLoading = false;
  bool _showPassword = false;
  bool _forgotPassword = false;

  void _toggleSignIn() {
    setState(() {
      _forgotPassword = false;
      widget.store.toggleSignIn();
    });
  }

  //TODO: Complete change from TextFormField to LYTextFormField
  // void Widget _buildTextField(BuildContext context){
  //   final store = TextFormFieldStore(
  //       value: value,
  //       onValueChanged: (newValue) => onChanged(keys, newValue),
  //       title: keys.last,
  //     );
  //     return LYTextFormField(
  //       store: store,
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    if (PlatformExtension.hasKeyboard) {
      return KeyboardListener(
        focusNode: FocusNode(),
        onKeyEvent: (event) {
          if (event.logicalKey == LogicalKeyboardKey.enter) {
            _handleSignSignUpTrigger();
          }
        },
        child: _buildEmail(context),
      );
    }

    return _buildEmail(context);
  }

  Column _buildEmail(BuildContext context) {
    return Column(
      children: [
        ReactiveTextField<String>(
          formControlName: "email",
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          validationMessages: {
            ValidationMessage.required: (_) => "An email is required",
            ValidationMessage.email: (_) => "Please enter a valid email",
          },
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            label: Text("Enter your email"),
          ),
        ),
        if (!_forgotPassword) ...[
          Sizes.s.spacer(),
          ReactiveTextField<String>(
            formControlName: "password",
            validationMessages: {
              ValidationMessage.required: (_) => "A password is required",
              ValidationMessage.minLength: (data) => "Password must be at least 8 characters",
            },
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock),
              label: const Text("Enter your password"),
              suffixIcon: GestureDetector(
                onTap: () => setState(() {
                  _showPassword = !_showPassword;
                }),
                child: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            obscureText: !_showPassword,
          ),
          Sizes.s.spacer(),
          ElevatedButton(
            onPressed: _handleSignSignUpTrigger,
            child: _isLoading
                ? SizedBox(
                    height: 16,
                    width: 16,
                    child: CircularProgressIndicator(
                      color: context.colorScheme.onPrimary,
                      strokeWidth: 1.5,
                    ),
                  )
                : Text(widget.store.authAction == AuthAction.signIn ? "Sign In" : "Sign Up"),
          ),
          Sizes.s.spacer(),
          if (widget.store.authAction == AuthAction.signIn) ...[
            TextButton(
              onPressed: () {
                setState(() {
                  _forgotPassword = true;
                });
              },
              child: const Text("Forgot your password?"),
            ),
          ],
          TextButton(
            key: const ValueKey("toggleSignInButton"),
            onPressed: _toggleSignIn,
            child: Text(
              widget.store.authAction == AuthAction.signIn ? "Don't have an account? Sign up" : "Already have an account? Sign in",
            ),
          ),
        ],
        if (widget.store.authAction == AuthAction.signIn && _forgotPassword) ...[
          Sizes.s.spacer(),
          ElevatedButton(
            onPressed: _resetPassword,
            child: const Text("Send password reset email"),
          ),
          Sizes.s.spacer(),
          TextButton(
            onPressed: () {
              setState(() {
                _forgotPassword = false;
              });
            },
            child: const Text("Back to sign in"),
          ),
        ],
        Sizes.s.spacer(),
      ],
    );
  }

  Future<void> _resetPassword() async {
    try {
      setState(() {
        _isLoading = true;
      });
      final email = widget.store.form.control(widget.store.emailKey).value as String;
      await widget.store.sendPasswordResetEmail(email);
      widget.onPasswordResetEmailSent?.call();
      setState(() {
        _forgotPassword = false;
      });
    } on AuthenticationException catch (error) {
      context.showSnackbar(
        SnackbarConfiguration.error(title: error.message),
      );
    } catch (error) {
      widget.onError?.call(error);
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _handleSignSignUpTrigger() async {
    if (widget.store.form.invalid) {
      context.showSnackbar(
        SnackbarConfiguration.error(title: "Please fill in all fields and fix any errors"),
      );
      return;
    }
    setState(() {
      _isLoading = true;
    });
    try {
      if (widget.store.authAction == AuthAction.signIn) {
        await _signIn();
      } else {
        await _signUp(context);
      }
    } on AuthenticationException catch (error) {
      if (widget.onError == null && context.mounted) {
        AppLogger.print(error.message, [AuthenticationLoggers.authentication]);
        if (mounted) {
          context.showSnackbar(SnackbarConfiguration.error(title: error.message));
        }
      } else {
        widget.onError?.call(error);
      }
    } catch (error) {
      if (widget.onError == null && mounted) {
        context.showSnackbar(
          SnackbarConfiguration.error(title: "Unexpected error has occurred: $error"),
        );
      } else {
        widget.onError?.call(error);
      }
    }
    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _signUp(BuildContext context) async {
    await widget.store.signUpWithEmail().then((response) {
      if (response != null) {
        context.showSnackbar(
          SnackbarConfiguration.information(
            title: "Email verification sent",
          ),
        );
        _toggleSignIn();
      } else {
        context.showSnackbar(
          SnackbarConfiguration.error(
            title: "Error signing up",
          ),
        );
      }
    });
  }

  Future<void> _signIn() async {
    final params = AuthParams.email(
      email: widget.store.form.control(widget.store.emailKey).value as String,
      password: widget.store.form.control(widget.store.passwordKey).value as String,
    );

    final response = await widget.store.signIn(
      params,
    );
    if (response != null) {
      widget.onSignInComplete.call(response);
    }
  }
}
