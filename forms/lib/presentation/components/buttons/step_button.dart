import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/models/stepped/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/build_context.dart";

class StepNavigationButton<T> extends StatelessWidget {
  const StepNavigationButton({
    super.key,
    required this.store,
    this.nextButtonText,
    this.submitButtonText,
    this.onCompleted,
  });

  final SteppedReactiveFormsModelStore<T> store;
  final String? nextButtonText;
  final String? submitButtonText;
  final void Function(RequestResponse response)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConsumer(
      builder: (context, form, w) => Observer(
        builder: (context) {
          if (store.isLastStep) {
            return Align(
              alignment: Alignment.bottomCenter,
              child: Opacity(
                opacity: form.valid ? 1 : 0.5,
                child: ElevatedButton(
                  onPressed: store.isSubmitting || !form.valid
                      ? null
                      : () async {
                          await store.submitPressed(
                            (config) => context.showSnackbar(config),
                            (response) => onCompleted?.call(response),
                          );
                        },
                  child: store.isSubmitting
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(submitButtonText ?? "Submit"),
                ),
              ),
            );
          }

          return Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: form.valid ? 1 : 0.5,
              child: ElevatedButton(
                onPressed: form.valid ? store.nextStep : null,
                child: Text(nextButtonText ?? "Next"),
              ),
            ),
          );
        },
      ),
    );
  }
}

class StepBackButton<T> extends StatelessWidget {
  const StepBackButton({
    super.key,
    required this.store,
    this.buttonText = "Previous",
  });

  final SteppedReactiveFormsModelStore<T> store;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (store.isFirstStep) return const SizedBox.shrink();

        return Align(
          alignment: Alignment.bottomLeft,
          child: TextButton(
            onPressed: store.previousStep,
            child: Text(buttonText),
          ),
        );
      },
    );
  }
}

class StepCancelButton<T> extends StatelessWidget {
  const StepCancelButton({
    super.key,
    required this.onCancel,
    this.buttonText = "Cancel",
  });

  final void Function() onCancel;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: TextButton(
        onPressed: onCancel,
        child: Text(buttonText),
      ),
    );
  }
}
