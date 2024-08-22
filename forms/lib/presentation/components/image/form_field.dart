import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/image/components/image_picker_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:universal_io/io.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/helpers/extensions/build_context.dart";
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
                              store.imageUrl,
                              options: NetworkImageOptions(
                                headers: PublicHeaders.map,
                                fit: BoxFit.cover,
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
    final _maxWidth = Platform.isAndroid || Platform.isIOS ? context.screenWidth * 0.85 : context.screenWidth * 0.5;
    // if result is null, do nothing
    // if result is "", remove image
    // if result is not null, add or update image
    final result = await showDialog<String?>(
      context: context,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: context.screenHeight * 0.5,
            width: _maxWidth,
            child: ImagePickerField(store: store),
          ),
        );
      },
    );

    if (result == null) return;

    if (result == "") return store.removeImage();
    store.updateImage(newImageUrl: result);
  }
}
