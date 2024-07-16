import "package:flutter/material.dart";
import "package:forms/presentation/models/reactive_store.dart";
import "package:reactive_forms/reactive_forms.dart";

class ReactiveFormErrorDisplay<T> extends StatelessWidget {
  const ReactiveFormErrorDisplay({
    super.key,
    required this.store,
    required this.validationMessages,
    this.errorViewBuilder,
    this.noErrorViewBuilder,
  });

  final ReactiveFormsModelStore<T> store;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final Widget Function(BuildContext context, List<String>)? errorViewBuilder;
  final Widget Function(BuildContext context)? noErrorViewBuilder;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, w) {
        final errors = errorText(context);
        if (errors.isEmpty) {
          return noErrorViewBuilder?.call(context) ?? const Text("No errors!");
        }
        return errorViewBuilder?.call(context, errorText(context)) ??
            Column(
              children: errors.map((error) {
                return ListTile(
                  leading: const Icon(Icons.warning_amber_rounded),
                  title: Text(error),
                );
              }).toList(),
            );
      },
    );
  }

  List<String> errorText(BuildContext context) {
    final form = store.form;
    final errorMessages = <String>[];
    if (store.form.hasErrors && _showErrors) {
      for (final errorKey in form.errors.keys) {
        final validationMessage = _findValidationMessage(context, errorKey);
        if (validationMessage != null) {
          errorMessages.add(validationMessage(form.getError(errorKey)!));
        } else {
          // errorMessages.add(errorKey);
        }
      }
    }
    return errorMessages;
  }

  bool get _showErrors => store.form.invalid; // && store.form.touched;

  ValidationMessageFunction? _findValidationMessage(BuildContext context, String errorKey) {
    if (validationMessages != null && validationMessages!.containsKey(errorKey)) {
      return validationMessages![errorKey];
    } else {
      final formConfig = ReactiveFormConfig.of(context);
      return formConfig?.validationMessages[errorKey];
    }
  }
}
