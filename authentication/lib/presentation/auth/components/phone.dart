import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:authentication/helpers/constants.dart";
import "package:authentication/helpers/exception.dart";
import "package:flutter/material.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";
import "package:utilities/snackbar/configuration.dart";

/// UI component to create a phone + password signin/ signup form
class PhoneAuthWidget<T extends UserModel> extends StatefulWidget {
  /// The [AuthenticationRepository] to be used for the auth action
  final AuthenticationRepository<T> repository;

  /// Whether the user is signing in or signin up
  final AuthAction authAction;

  /// Method to be called when the auth action is success
  final void Function(T userModel) onSuccess;

  /// Method to be called when the auth action threw an excepction
  final void Function(Object error)? onError;

  const PhoneAuthWidget({
    super.key,
    required this.repository,
    required this.authAction,
    required this.onSuccess,
    this.onError,
  });

  @override
  State<PhoneAuthWidget<T>> createState() => _PhoneAuthWidgetState<T>();
}

class _PhoneAuthWidgetState<T extends UserModel> extends State<PhoneAuthWidget<T>> {
  final _formKey = GlobalKey<FormState>();
  final _phone = TextEditingController();
  final _password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _phone.dispose();
    _password.dispose();
    super.dispose();
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
    final isSigningIn = widget.authAction == AuthAction.signIn;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter a valid phone number";
              }
              return null;
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.phone),
              label: Text("Enter your phone number"),
            ),
            controller: _phone,
          ),
          Sizes.s.spacer(),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return "Please enter a password that is at least 6 characters long";
              }
              return null;
            },
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock),
              label: Text("Enter your password"),
            ),
            obscureText: true,
            controller: _password,
          ),
          Sizes.s.spacer(),
          ElevatedButton(
            child: Text(
              isSigningIn ? "Sign In" : "Sign Up",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: () async {
              if (!_formKey.currentState!.validate()) {
                return;
              }
              try {
                if (isSigningIn) {
                  final paramsMap = AuthParams.phone(
                    phoneNumber: _phone.text,
                    password: _password.text,
                  ).toMap();
                  final params = widget.repository.convertDataTypeFromMap(paramsMap);
                  final response = await widget.repository.signIn(
                    params: params,
                  );
                  if (response != null) {
                    widget.onSuccess(response);
                  }
                } else {
                  throw const AuthenticationException(
                    "Sign up with phone is not implemented yet",
                  );
                  //TODO: Add signup with phone
                  // final response = await widget.repository.signUp(params: AuthParams.phone(phoneNumber: _phone.text, password: _password.text));
                  // if (response != null) {
                  //   widget.onSuccess(response);
                  // }
                  // widget.onSuccess(response);
                }
              } on AuthenticationException catch (error) {
                if (widget.onError == null && context.mounted) {
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
              setState(() {
                _phone.text = "";
                _password.text = "";
              });
            },
          ),
          Sizes.xs.spacer(),
        ],
      ),
    );
  }
}
