import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/constants/env.dart";
import "package:widgets/images/options/network.dart";
import "package:widgets/images/widget.dart";

import "store.dart";

class ImageFormField extends BaseFormField<ImageFormFieldStore> {
  ImageFormField({
    super.key,
    this.height = 100,
    this.width,
    super.showTitle,
    required super.store,
  });

  final double? height;
  final double? width;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
              child: Builder(
                builder: (context) {
                  if (store.imageUrl == null) {
                    return Container(
                      key: const ValueKey("add_card"),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      clipBehavior: Clip.hardEdge,
                      child: AspectRatio(
                        aspectRatio: 1.7,
                        child: InkWell(
                          onTap: () async => addOrEditImage(context),
                          child: Container(
                            color: context.colorScheme.primary.withOpacity(0.4),
                            child: Icon(Icons.add, color: context.colorScheme.onPrimary),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                        clipBehavior: Clip.hardEdge,
                        child: AspectRatio(
                          aspectRatio: 1.7,
                          child: InkWell(
                            onTap: () async => addOrEditImage(context),
                            child: DOImage.network(
                              store.imageUrl!,
                              options: NetworkImageOptions(
                                headers: PublicHeaders.map,
                                fit: BoxFit.cover,
                                errorWidget: (context, error, stackTrace) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> addOrEditImage(BuildContext context) async {
    final currentImage = store.imageUrl;
    final isEditing = currentImage != null;

    const imageUrlKey = "imageUrl";
    final form = FormGroup({
      imageUrlKey: FormControl<String>(value: currentImage, validators: [Validators.required]),
    });
    // if result is null, do nothing
    // if result is "", remove image
    // if result is not null, add or update image
    final result = await showDialog<String?>(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 2,
            child: ReactiveForm(
              formGroup: form,
              child: Padding(
                padding: const EdgeInsets.all(28),
                child: Column(
                  children: [
                    Text(isEditing ? "Change Image" : "Add Image", style: context.textTheme.titleMedium),
                    const SizedBox(height: 16),
                    // IMAGE PREVIEW
                    Flexible(
                      child: AspectRatio(
                        aspectRatio: 1.7,
                        child: ReactiveStatusListenableBuilder(
                          formControlName: imageUrlKey,
                          builder: (context, formControl, widget) {
                            return Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: context.colorScheme.primary.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: formControl.isNull
                                  ? Center(child: Icon(Icons.image, color: context.colorScheme.onPrimary))
                                  : DOImage.network(
                                      formControl.value as String? ?? "",
                                      options: NetworkImageOptions(
                                        headers: PublicHeaders.map,
                                        fit: BoxFit.cover,
                                        errorWidget: (context, error, stackTrace) => const Icon(Icons.error),
                                      ),
                                    ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // URL FIELD
                    ReactiveTextField<String>(
                      formControlName: imageUrlKey,
                      style: context.textTheme.bodyMedium,
                      decoration: InputDecoration(
                        hintText: "https://www.image.com",
                        hintStyle: context.textTheme.bodyMedium?.copyWith(
                          color: context.textTheme.bodyMedium?.color?.withOpacity(0.5),
                          // color: context.colorScheme.onBackground.withOpacity(0.3),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // BUTTONS
                    ReactiveStatusListenableBuilder(
                      formControlName: imageUrlKey,
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
                            const SizedBox(width: 16),
                            // UPDATE / ADD BUTTON
                            AnimatedOpacity(
                              duration: Durations.short1,
                              opacity: hasValidUrl ? 1 : 0.5,
                              child: FilledButton.icon(
                                onPressed: hasValidUrl ? () => Navigator.pop(context, urlToReturn) : null,
                                icon: const Icon(Icons.check),
                                label: Text(isEditing ? "Update" : "Add"),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    if (result == null) return;

    if (result == "") store.removeImage();
    store.updateImage(newImageUrl: result);
  }
}
