import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/domain/repositories/code.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/helpers/env.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/presentation/auth/store.dart";
import "package:authentication/utils/loggers.dart";
import "package:email_validator/email_validator.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

class AdditionalDataField {
  /// Label of the `LYTextFormField` for this metadata
  final String label;

  /// Key to be used when sending the metadata to Data Repository
  final String key;

  /// Validator function for the metadata field
  final String? Function(String?)? validator;

  /// Icon to show as the prefix icon in `LYTextFormField`
  final Icon? prefixIcon;

  AdditionalDataField({
    required this.label,
    required this.key,
    this.validator,
    this.prefixIcon,
  });
}

class EmailAuthWidget<T extends UserModel> extends StatefulWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final AuthStore<T> store;

  final CodeDataSourceType? codeDataSourceType;

  /// Callback for the user to complete a sign in.
  final void Function(T userModel) onSignInComplete;

  /// Callback for the user to complete a signUp.

  /// Callback for sending the password reset email
  final void Function()? onPasswordResetEmailSent;

  /// Callback for when the auth action threw an excepction
  ///
  /// If set to `null`, a snack bar with error color will show up.
  final void Function(Object error)? onError;

  final List<AdditionalDataField>? additionalDataFields;

  const EmailAuthWidget({
    super.key,
    required this.store,
    required this.onSignInComplete,
    this.codeDataSourceType,
    this.onPasswordResetEmailSent,
    this.onError,
    this.additionalDataFields,
  });

  @override
  State<EmailAuthWidget<T>> createState() => _EmailAuthWidgetState<T>();
}

class _EmailAuthWidgetState<T extends UserModel> extends State<EmailAuthWidget<T>> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _emailController = TextEditingController(
    text: kDebugMode ? AuthEnv.email : null,
  );
  final _passwordController = TextEditingController(text: kDebugMode ? AuthEnv.password : null);
  late final Map<AdditionalDataField, TextEditingController> _additionalDataControllers;

  bool _isLoading = false;
  bool _showPassword = false;
  bool _forgotPassword = false;

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
    _codeController.dispose();
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
      widget.store.toggleSignIn();
    });
  }

  //TODO: Complete change from TextFormField to `LYTextFormField`
  // void Widget _buildTextField(BuildContext context){
  //   final store = TextFormFieldStore(
  //       value: value,
  //       onValueChanged: (newValue) => onChanged(keys, newValue),
  //       title: keys.last,
  //     );
  //     return `LYTextFormField`(
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
          if (widget.additionalDataFields != null && widget.store.authAction == AuthAction.signUp)
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
          if (widget.codeDataSourceType != null && widget.store.authAction == AuthAction.signUp) ...[
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password_rounded),
                label: Text("Enter your given code"),
              ),
              controller: _codeController,
            ),
            Sizes.s.spacer(),
          ],
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
                  : Text(widget.store.authAction == AuthAction.signIn ? "Sign In" : "Sign Up"),
              onPressed: () async {
                if (!_formKey.currentState!.validate()) {
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
                    AppLogger.print(
                      error.message,
                      [AuthenticationLoggers.authentication],
                    );
                    context.showSnackbar(
                      SnackbarConfiguration.error(title: error.message),
                    );
                  } else {
                    widget.onError?.call(error);
                  }
                } catch (error) {
                  if (widget.onError == null && context.mounted) {
                    context.showSnackbar(
                      SnackbarConfiguration.error(
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
            Sizes.xs.spacer(),
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
      ),
    );
  }

  Future<void> _resetPassword() async {
    try {
      if (!_formKey.currentState!.validate()) {
        return;
      }
      setState(() {
        _isLoading = true;
      });
      final email = _emailController.text.trim();
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

  Future<void> _signUp(BuildContext context) async {
    final paramsMap = AuthParams.email(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    ).toMap();
    debugPrint("paramsMap: $paramsMap");
    paramsMap.addAll(
      _additionalDataControllers.map(
        (key, value) => MapEntry(
          key.key,
          value.text,
        ),
      ),
    );
    debugPrint("updated paramsMap: $paramsMap");
    var params = AuthParams.fromMap(paramsMap);
    if (widget.codeDataSourceType != null) {
      params = params.copyWith(code: _codeController.text);
    }
    await widget.store.repository
        .signUpWithEmail(
      params: params,
    )
        .then((response) {
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
    AppLogger.print(
      "Signing in with email: ${_emailController.text} - ${_passwordController.text}",
      [AuthenticationLoggers.authentication],
    );

    final params = AuthParams.email(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );

    final response = await widget.store.repository.signIn(
      params: params,
    );
    if (response != null) {
      widget.onSignInComplete.call(response);
    }
  }
}
