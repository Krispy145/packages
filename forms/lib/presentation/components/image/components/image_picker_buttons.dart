import "package:flutter/material.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:reactive_forms/reactive_forms.dart";
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
        final urlToReturn = hasValidUrl ? formControl.value : null;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // REMOVE BUTTON
            FilledButton.icon(
              onPressed: () => Navigator.pop(context, ""),
              icon: const Icon(Icons.delete),
              label: const Text("Remove"),
            ),
            Sizes.s.spacer(vertical: false),
            // UPDATE / ADD BUTTON
            AnimatedOpacity(
              duration: Durations.short1,
              opacity: hasValidUrl ? 1 : 0.5,
              child: FilledButton.icon(
                onPressed: hasValidUrl ? () => Navigator.pop(context, urlToReturn) : null,
                icon: const Icon(Icons.check),
                label: Text(store.isEditing ? "Update" : "Add"),
              ),
            ),
          ],
        );
      },
    );
  }
}
