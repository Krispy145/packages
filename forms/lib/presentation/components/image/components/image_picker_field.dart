import "package:flutter/material.dart";
import "package:forms/presentation/components/image/components/combined_picker_options.dart";
import "package:forms/presentation/components/image/components/image_picker_buttons.dart";
import "package:forms/presentation/components/image/components/image_text_field.dart";
import "package:forms/presentation/components/image/components/preview_image.dart";
import "package:forms/presentation/components/image/components/upload_image_field.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

class ImagePickerField extends StatelessWidget {
  final Axis axis;
  const ImagePickerField({
    super.key,
    required this.store,
    this.axis = Axis.horizontal,
  });

  final ImageFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: store.form,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(store.isEditing ? "Change Image" : "Add Image", style: context.textTheme.titleMedium),
            Sizes.s.spacer(),
            // IMAGE PREVIEW
            PreviewImage(store: store, axis: axis),
            Sizes.s.spacer(),
            // IMAGE OPTIONS
            Flexible(child: _buildImageOptions(context)),
            Sizes.s.spacer(),
            // BUTTONS
            ImagePickerButtons(store: store),
          ],
        ),
      ),
    );
  }

  Widget _buildImageOptions(BuildContext context) {
    switch (store.tabType) {
      case ImagePickerType.url:
        return ImageTextField(imageUrlKey: store.imageUrlKey);
      case ImagePickerType.upload:
        return UploadImageField(store: store);
      default:
        return CombinedPickerOptions(store: store);
    }
  }
}
