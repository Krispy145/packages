import "package:flutter/material.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";

class ImageTextField extends StatelessWidget {
  const ImageTextField({
    super.key,
    required this.imageUrlKey,
  });

  final String imageUrlKey;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<String>(
      formControlName: imageUrlKey,
      style: context.textTheme.bodyMedium,
      decoration: InputDecoration(
        hintText: "https://www.image.com",
        hintStyle: context.textTheme.bodyMedium?.copyWith(
          color: context.textTheme.bodyMedium?.color?.withOpacity(0.5),
          // color: context.colorScheme.onBackground.withOpacity(0.3),
        ),
      ),
    );
  }
}
