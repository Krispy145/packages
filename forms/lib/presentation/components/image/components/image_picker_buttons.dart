import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/sizes/spacers.dart";

class ImagePickerButtons extends StatelessWidget {
  const ImagePickerButtons({
    super.key,
    required this.store,
  });

  final ImageFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return ReactiveStatusListenableBuilder(
      formControlName: store.imageUrlKey,
      builder: (context, formControl, w) {
        final hasValidUrl = formControl.isNotNull && ((formControl.value as String?)?.isNotEmpty ?? false);
        final urlToReturn = (hasValidUrl ? formControl.value : null) as String?;

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            // REMOVE BUTTON
            FilledButton.icon(
              onPressed: () {
                Navigator.pop(context, const Pair(null, false));
              },
              icon: const Icon(Icons.delete),
              label: const Text("Remove"),
            ),
            Sizes.s.spacer(axis: Axis.horizontal),
            // UPDATE / ADD BUTTON
            Observer(
              builder: (context) {
                final _canSubmit = hasValidUrl || store.didPickImage;
                final _resultCombination = Pair(urlToReturn, store.didPickImage);
                return AnimatedOpacity(
                  duration: Durations.short1,
                  opacity: _canSubmit ? 1 : 0.5,
                  child: FilledButton.icon(
                    onPressed: _canSubmit ? () => Navigator.pop(context, _resultCombination) : null,
                    icon: const Icon(Icons.check),
                    label: Text(store.isEditing ? "Update" : "Add"),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
