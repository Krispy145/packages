import "package:flutter/material.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:pro_image_editor/pro_image_editor.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:widgets/images/options/memory.dart";
import "package:widgets/images/options/network.dart";
import "package:widgets/images/widget.dart";
import "package:widgets/messages/warning_message.dart";

class PreviewImage extends StatelessWidget {
  final Axis axis;
  final BoxDecoration? decoration;
  final double? aspectRatio;
  const PreviewImage({
    super.key,
    required this.store,
    this.axis = Axis.horizontal,
    this.decoration,
    this.aspectRatio,
  });

  final ImageFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: AspectRatio(
        aspectRatio: aspectRatio ?? (axis == Axis.horizontal ? 16 / 9 : 9 / 16),
        child: ReactiveStatusListenableBuilder(
          formControlName: store.imageUrlKey,
          builder: (context, formControl, _) {
            return Container(
              clipBehavior: Clip.hardEdge,
              decoration: decoration ?? store.defaultDecoration,
              child: PackageLoadStateBuilder(
                store: store,
                errorBuilder: (context, error) => WarningMessage.error(
                  message: error,
                  iconSize: 30,
                ),
                loadedBuilder: (context) {
                  return loadedPreview(context, formControl);
                },
                emptyBuilder: (context, text) {
                  return Center(
                    child: Icon(
                      Icons.image,
                      color: context.colorScheme.onPrimary,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget loadedPreview(
    BuildContext context,
    AbstractControl<Object?> formControl,
  ) {
    if (store.imageBytes != null) {
      return LYImage.memory(
        store.imageBytes!,
        options: const MemoryImageOptions(
          fit: BoxFit.contain,
        ),
      );
    } else if (formControl.isNull) {
      return Center(
        child: Icon(Icons.image, color: context.colorScheme.onPrimary),
      );
    } else {
      return LYImage.network(
        formControl.value as String? ?? "",
        options: NetworkImageOptions(
          headers: PublicHeaders.map,
          fit: BoxFit.contain,
        ),
      );
    }
  }

  void _showEditImageDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => ProImageEditor.memory(
        store.imageBytes!,
        callbacks: ProImageEditorCallbacks(
          onImageEditingComplete: (imageBytes) async {
            await store.editImageBytes(imageBytes);
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
