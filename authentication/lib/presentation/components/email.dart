import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/helpers/exception.dart";
import "package:email_validator/email_validator.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

class AdditionalDataField {
  /// Label of the `DOTextFormField` for this metadata
  final String label;

  /// Key to be used when sending the metadata to Supabase
  final String key;

  /// Validator function for the metadata field
  final String? Function(String?)? validator;

  /// Icon to show as the prefix icon in DOTextFormField
  final Icon? prefixIcon;

  AdditionalDataField({
    required this.label,
    required this.key,
    this.validator,
    this.prefixIcon,
  });
}

class EmailAuthWidget extends StatefulWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final AuthenticationRepository repository;

  /// The URL to redirect the user to when clicking on the link on the
  /// confirmation link after signing up.
  // final String? redirectTo;

  /// Callback for the user to complete a sign in.
  final void Function(UserModel userModel) onSignInComplete;

  /// Callback for the user to complete a signUp.
  ///
  /// If email confirmation is turned on, the user is
  final void Function(UserModel userModel) onSignUpComplete;

  /// Callback for sending the password reset email
  final void Function()? onPasswordResetEmailSent;

  /// Callback for when the auth action threw an excepction
  ///
  /// If set to `null`, a snack bar with error color will show up.
  final void Function(Object error)? onError;

  final List<AdditionalDataField>? additionalDataFields;

  /// {@macro supa_email_auth}
  const EmailAuthWidget({
    super.key,
    required this.repository,
    // this.redirectTo,
    required this.onSignInComplete,
    required this.onSignUpComplete,
    this.onPasswordResetEmailSent,
    this.onError,
    this.additionalDataFields,
  });

  @override
  State<EmailAuthWidget> createState() => _EmailAuthWidgetState();
}

class _EmailAuthWidgetState extends State<EmailAuthWidget> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: kDebugMode ? "davidkisbeygreen145@gmail.com" : null);
  final _passwordController = TextEditingController(text: kDebugMode ? "DigitalOasis123!" : null);
  late final Map<AdditionalDataField, TextEditingController> _additionalDataControllers;

  bool _isLoading = false;
  bool _showPassword = false;
  bool _forgotPassword = false;

  AuthAction action = AuthAction.signUp;

  @override
  void initState() {
    super.initState();
    _additionalDataControllers = Map.fromEntries(
      (widget.additionalDataFields ?? []).map(
        (additionalDataField) => MapEntry(
          additionalDataField,
          TextEditingController(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    for (final controller in _additionalDataControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _toggleSignIn() {
    setState(() {
      _forgotPassword = false;
      action = action == AuthAction.signIn ? AuthAction.signUp : AuthAction.signIn;
    });
  }

  //TODO: Complete change from TextFormField to DOTextFormField
  // void Widget _buildTextField(BuildContext context){
  //   final store = TextFormFieldStore(
  //       value: value,
  //       onValueChanged: (newValue) => onChanged(keys, newValue),
  //       title: keys.last,
  //     );
  //     return DOTextFormField(
  //       store: store,
  //     );
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
            validator: (value) {
              if (value == null || value.isEmpty || !EmailValidator.validate(_emailController.text)) {
                return "Please enter a valid email address";
              }
              return null;
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              label: Text("Enter your email"),
            ),
            controller: _emailController,
          ),
          if (!_forgotPassword) ...[
            Sizes.s.spacer(),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return "Please enter a password that is at least 6 characters long";
                }
                return null;
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
              controller: _passwordController,
            ),
            Sizes.s.spacer(),
            if (widget.additionalDataFields != null && action == AuthAction.signUp)
              ...widget.additionalDataFields!
                  .map(
                    (additionalDataField) => [
                      TextFormField(
                        controller: _additionalDataControllers[additionalDataField],
                        decoration: InputDecoration(
                          label: Text(additionalDataField.label),
                          prefixIcon: additionalDataField.prefixIcon,
                        ),
                        validator: additionalDataField.validator,
                      ),
                      Sizes.s.spacer(),
                    ],
                  )
                  .expand((element) => element),
            ElevatedButton(
              child: _isLoading
                  ? SizedBox(
                      height: 16,
                      width: 16,
                      child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.onPrimary,
                        strokeWidth: 1.5,
                      ),
                    )
                  : Text(action == AuthAction.signIn ? "Sign In" : "Sign Up"),
              onPressed: () async {
                if (!_formKey.currentState!.validate()) {
                  return;
                }
                setState(() {
                  _isLoading = true;
                });
                try {
                  if (action == AuthAction.signIn) {
                    await _signIn();
                  } else {
                    await _signUp(context);
                  }
                } on AuthenticationException catch (error) {
                  if (widget.onError == null && context.mounted) {
                    context.showSnackbar(
                      configuration: SnackbarConfiguration.error(title: error.message),
                    );
                  } else {
                    widget.onError?.call(error);
                  }
                } catch (error) {
                  if (widget.onError == null && context.mounted) {
                    context.showSnackbar(
                      configuration: SnackbarConfiguration.error(
                        title: "Unexpected error has occurred: $error",
                      ),
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
              },
            ),
            Sizes.s.spacer(),
            if (action == AuthAction.signIn) ...[
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
                action == AuthAction.signIn ? "Don't have an account? Sign up" : "Already have an account? Sign in",
              ),
            ),
          ],
          if (action == AuthAction.signIn && _forgotPassword) ...[
            Sizes.s.spacer(),
            ElevatedButton(
              onPressed: () async {
                try {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }
                  setState(() {
                    _isLoading = true;
                  });

                  throw const AuthenticationException(
                    "Forgot password is not implemented yet",
                  );
                  // final email = _emailController.text.trim();
                  // await supabase.auth.resetPasswordForEmail(email);
                  // widget.onPasswordResetEmailSent?.call();
                } on AuthenticationException catch (error) {
                  context.showSnackbar(
                    configuration: SnackbarConfiguration.error(title: error.message),
                  );
                } catch (error) {
                  widget.onError?.call(error);
                }
              },
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
      ),
    );
  }

  Future<void> _signUp(BuildContext context) async {
    await widget.repository
        .signUpWithEmail(
      params: AuthParams.email(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      ),
    )
        .then((response) {
      if (response != null) {
        widget.onSignUpComplete.call(response);
      } else {
        context.showSnackbar(
          configuration: SnackbarConfiguration.information(
            title: "Email verification sent",
          ),
        );
        _toggleSignIn();
      }
    });
  }

  Future<void> _signIn() async {
    final response = await widget.repository.signIn(
      params: AuthParams.email(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      ),
    );
    if (response != null) {
      widget.onSignInComplete.call(response);
    }
  }
}
