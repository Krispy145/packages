import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/image/form_field.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class ImagesFormField extends BaseFormField<ImagesFormFieldStore> {
  final Axis axis;
  final BoxDecoration? decoration;
  final bool isActive;
  ImagesFormField({
    super.key,
    required super.store,
    super.showTitle,
    this.axis = Axis.horizontal,
    this.decoration,
    this.height = 100,
    this.width,
    this.isActive = true,
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
              child: ReorderableListView.builder(
                onReorder: (oldIndex, newIndex) =>
                    store.reorderImages(oldIndex: oldIndex, newIndex: newIndex),
                scrollDirection: Axis.horizontal,
                itemCount: store.imageFormFields.length,
                buildDefaultDragHandles: false,
                itemBuilder: (context, index) {
                  if (index == store.imageFormFields.length) {
                    return ImageFormField(
                      key: const ValueKey("add-image"),
                      store: store.imageFormFields.last,
                      decoration: decoration,
                      showTitle: false,
                      height: (height ?? 0) - Sizes.s.points(context),
                      width: width,
                      axis: axis,
                      isActive: isActive,
                      onUpdated: () {
                        store.addNewImageFormField(index: index + 1);
                      },
                      onRemoved: () => store.removeImage(
                        index: index,
                      ),
                    );
                  }
                  return ReorderableDragStartListener(
                    key: ValueKey("index-${store.imageFormFields[index]}"),
                    index: index,
                    child: ImageFormField(
                      store: store.imageFormFields[index],
                      showTitle: false,
                      decoration: decoration,
                      height: (height ?? 0) - Sizes.s.points(context),
                      width: width,
                      axis: axis,
                      isActive: isActive,
                      onRemoved: () => store.removeImage(
                        index: index,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
