import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/image/components/image_picker_field.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:theme/extensions/build_context.dart";
import "package:universal_io/io.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:widgets/images/options/network.dart";
import "package:widgets/images/widget.dart";

import "store.dart";

class ImagesFormField extends BaseFormField<ImagesFormFieldStore> {
  final Axis axis;
  ImagesFormField({
    super.key,
    required super.store,
    super.showTitle,
    this.axis = Axis.horizontal,
    this.height = 100,
    this.width,
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
                        aspectRatio: axis == Axis.horizontal ? 16 / 9 : 9 / 16,
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
                          aspectRatio: axis == Axis.horizontal ? 16 / 9 : 9 / 16,
                          child: InkWell(
                            onTap: () async => addOrEditImage(context, index),
                            child: DOImage.network(
                              store.imageUrls[index],
                              options: NetworkImageOptions(
                                headers: PublicHeaders.map,
                                fit: BoxFit.cover,
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
    final _maxWidth = Platform.isAndroid || Platform.isIOS ? context.screenWidth * 0.85 : context.screenWidth * 0.5;
    final addImageStore = ImageFormFieldStore(
      onValueChanged: (url) {},
      storageRepository: store.storageRepository,
      filePicker: store.filePicker,
      tabType: store.tabType,
      initialValue: isEditing ? store.imageUrls[index] : null,
      title: store.title,
    );

    final result = await showDialog<String?>(
      context: context,
      builder: (context) {
        return Dialog(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.screenHeight * 0.5,
              maxHeight: context.screenHeight * 0.8,
              maxWidth: _maxWidth,
            ),
            child: ImagePickerField(store: addImageStore, axis: axis),
          ),
        );
      },
    );

    if (result == null) return;

    if (result == "" && isEditing) return store.removeImage(index: index);

    if (isEditing) {
      store.updateImage(imageUrl: result, index: index);
    } else if (result != "") {
      store.addImage(imageUrl: result);
    }
  }
}
