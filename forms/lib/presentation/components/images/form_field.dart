import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:reactive_forms/reactive_forms.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/constants/env.dart";
import "package:widgets/images/options/network.dart";
import "package:widgets/images/widget.dart";

import "store.dart";

class ImagesFormField extends BaseFormField<ImagesFormFieldStore> {
  ImagesFormField({
    super.key,
    required super.store,
  }) : super();

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: ReorderableListView.builder(
                onReorder: (oldIndex, newIndex) => store.reorderImages(oldIndex: oldIndex, newIndex: newIndex),
                scrollDirection: Axis.horizontal,
                itemCount: store.imageUrls.length + 1,
                buildDefaultDragHandles: false,
                itemBuilder: (context, index) {
                  if (index == store.imageUrls.length) {
                    return Container(
                      key: const ValueKey("add_card"),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      clipBehavior: Clip.hardEdge,
                      child: AspectRatio(
                        aspectRatio: 1.7,
                        child: InkWell(
                          onTap: () async => addOrEditImage(context, null),
                          child: Container(
                            color: context.colorScheme.primary.withOpacity(0.4),
                            child: Icon(Icons.add, color: context.colorScheme.onPrimary),
                          ),
                        ),
                      ),
                    );
                  }
                  return ReorderableDragStartListener(
                    key: ValueKey("index-${store.imageUrls[index]}"),
                    index: index,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                        clipBehavior: Clip.hardEdge,
                        child: AspectRatio(
                          aspectRatio: 1.7,
                          child: InkWell(
                            onTap: () async => addOrEditImage(context, index),
                            child: DOImage.network(
                              store.imageUrls[index],
                              options: NetworkImageOptions(
                                headers: PublicHeaders.map,
                                fit: BoxFit.cover,
                                errorWidget: (context, error, stackTrace) => const Icon(Icons.error),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            Text("${store.imageUrls.length} ${store.imageUrls.length == 1 ? "image" : "images"}"),
          ],
        );
      },
    );
  }

  Future<void> addOrEditImage(BuildContext context, int? index) async {
    final isEditing = index != null;

    const imageUrlKey = "imageUrl";
    final form = FormGroup({
      imageUrlKey: FormControl<String>(value: isEditing ? store.imageUrls[index] : null, validators: [Validators.required]),
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
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
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
                    ReactiveTextField<String>(formControlName: imageUrlKey),
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

    if (result == "" && isEditing) store.removeImage(index: index);

    if (isEditing) {
      store.updateImage(imageUrl: result, index: index);
    } else {
      store.addImage(imageUrl: result);
    }
  }
}
