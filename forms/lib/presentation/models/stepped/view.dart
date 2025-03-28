import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/buttons/step_button.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/widgets/load_state/builder.dart";

import "store.dart";

abstract class SteppedReactiveFormsModelView<T, S extends SteppedReactiveFormsModelStore<T>> extends StatelessWidget {
  final S store;
  final Widget? header;
  final Widget Function(BuildContext context)? loadingBuilder;
  final Widget Function(BuildContext context, String message)? emptyBuilder;
  final StepNavigationButton<T>? navigationButton;
  final StepBackButton<T>? backButton;
  final StepCancelButton<T>? Function(void Function()? onCancel)? cancelButton;
  final void Function(RequestResponse requestResponse)? onBack;
  final void Function()? onCancel;

  const SteppedReactiveFormsModelView({
    super.key,
    required this.store,
    this.header,
    this.loadingBuilder,
    this.emptyBuilder,
    this.navigationButton,
    this.backButton,
    this.cancelButton,
    required this.onBack,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PackageLoadStateBuilder(
          store: store,
          emptyBuilder: emptyBuilder,
          loadedBuilder: (context) => const SizedBox.shrink(),
          loadingBuilder: loadingBuilder,
        ),
        Observer(
          builder: (context) {
            return ReactiveForm(
              formGroup: store.stepStores[store.stepStores.keys.elementAt(store.currentStepIndex)]!.form,
              child: Column(
                children: [
                  if (header != null) header!,
                  Expanded(
                    child: formBuilder(context),
                  ),
                  _buildNavigationButtons(context),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget formBuilder(BuildContext context);

  Widget _buildNavigationButtons(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (cancelButton != null && onCancel != null) cancelButton!(onCancel)!,
          if (onCancel != null && cancelButton == null) StepCancelButton<T>(onCancel: onCancel!),
          if (backButton != null) backButton!,
          if (backButton == null) StepBackButton<T>(store: store),
          if (navigationButton != null) navigationButton!,
          if (navigationButton == null)
            StepNavigationButton<T>(
              store: store,
              onCompleted: onBack != null ? (response) => onBack!(response) : null,
            ),
        ],
      ),
    );
  }
}
