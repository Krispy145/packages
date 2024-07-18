import "package:flutter/material.dart";
import "package:forms/presentation/models/reactive_store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/snackbar/configuration.dart";

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
      builder: (context, form, w) => Opacity(
        opacity: form.valid ? 1 : 0.5,
        child: ElevatedButton(
          onPressed: form.valid
              ? () async {
                  await store.submitPressed().then((result) {
                    if (result == RequestResponse.success && successMessage != null) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.confirmation(
                          title: successMessage!,
                        ),
                      );
                    } else if (result == RequestResponse.failure && errorMessage != null) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.error(
                          title: errorMessage!,
                        ),
                      );
                    } else if (result == RequestResponse.underReview && underReviewMessage != null) {
                      context.showSnackbar(
                        configuration: SnackbarConfiguration.information(
                          title: underReviewMessage!,
                        ),
                      );
                    }
                    onBack?.call(result);
                  });
                }
              : null,
          child: Text(buttonText),
        ),
      ),
    );
  }
}
