import "package:flutter/material.dart";
import "package:forms/presentation/models/reactive_store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";

class ReactiveFormSubmitButton<T> extends StatelessWidget {
  const ReactiveFormSubmitButton({
    super.key,
    required this.store,
    this.buttonText = "Submit",
    this.successMessage,
    this.errorMessage,
    this.underReviewMessage,
    this.onBack,
  });

  final ReactiveFormsModelStore<T> store;
  final String buttonText;
  final String? successMessage;
  final String? errorMessage;
  final String? underReviewMessage;
  final void Function(RequestResponse response)? onBack;
  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, w) => Align(
        alignment: Alignment.bottomCenter,
        child: Opacity(
          opacity: form.valid ? 1 : 0.5,
          child: ElevatedButton(
            onPressed: form.valid
                ? () async {
                    await store.submitPressed(
                      context.showSnackbar,
                      (response) => onBack?.call(response),
                    );
                  }
                : null,
            child: Text(buttonText),
          ),
        ),
      ),
    );
  }
}
