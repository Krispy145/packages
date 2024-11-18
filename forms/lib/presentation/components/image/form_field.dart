import "package:flutter/material.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/image/components/image_picker_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:universal_io/io.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/widgets/load_state/builder.dart";
import "package:widgets/images/options/network.dart";
import "package:widgets/images/widget.dart";

import "store.dart";

class ImageFormField extends BaseFormField<ImageFormFieldStore> {
  final void Function()? onUpdated;
  final void Function()? onRemoved;
  final Axis axis;
  final double? aspectRatio;
  final BoxDecoration? decoration;
  ImageFormField({
    super.key,
    this.height = 100,
    this.width,
    super.showTitle,
    this.aspectRatio,
    required super.store,
    this.onUpdated,
    this.onRemoved,
    this.axis = Axis.horizontal,
    this.decoration,
  });

  final double? height;
  final double? width;

  @override
  Widget buildField(BuildContext context) {
    return SizedBox(
      height: height,
      child: AspectRatio(
        aspectRatio: axis == Axis.horizontal ? 16 / 9 : 9 / 16,
        child: LoadStateBuilder(
          store: store,
          loadedBuilder: (context) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                decoration: decoration ?? store.defaultDecoration,
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  onTap: () async => addOrEditImage(context),
                  child: LYImage.network(
                    store.imageUrl,
                    options: NetworkImageOptions(
                      headers: PublicHeaders.map,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
          emptyBuilder: (context, text) => Container(
            key: const ValueKey("add_card"),
            decoration: decoration ?? store.defaultDecoration,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () async => addOrEditImage(context),
              child: Container(
                color: context.colorScheme.primary.withOpacity(0.4),
                child: Icon(Icons.add, color: context.colorScheme.onPrimary),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> addOrEditImage(BuildContext context) async {
    final _maxWidth = Platform.isAndroid || Platform.isIOS ? context.screenWidth * 0.85 : context.screenWidth * 0.5;
    final result = await showDialog<Pair<String?, bool>>(
      context: context,
      builder: (context) {
        return Dialog(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: context.screenHeight * 0.5,
              maxHeight: context.screenHeight * 0.8,
              maxWidth: _maxWidth,
            ),
            child: ImagePickerField(
              store: store,
              axis: axis,
              decoration: decoration,
              aspectRatio: aspectRatio,
            ),
          ),
        );
      },
    );

    if (result == null) return;

    if ((result.first == "" || result.first == null) && result.second == false) {
      onRemoved?.call();
      return store.removeImage();
    }
    onUpdated?.call();
    await store.updateImage(newImageOptions: result);
  }
}
