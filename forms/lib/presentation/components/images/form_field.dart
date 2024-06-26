import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/text/form_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/sizes/spacers.dart";
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
        return Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "${store.imageUrls.length} images",
                style: context.textTheme.headlineSmall,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: PageView.builder(
                      itemCount: store.imageUrls.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              children: [
                                Expanded(
                                  child: DOImage.network(
                                    store.imageUrls[index],
                                    options: NetworkImageOptions(
                                      headers: PublicHeaders.map,
                                      fit: BoxFit.cover,
                                      errorWidget: (context, error, stackTrace) => const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                Sizes.s.spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12),
                                  child: DOTextFormField(
                                    store: store.textStores[index],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 40,
                              child: IconButton(
                                icon: const Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  store.imageUrls.removeAt(index);
                                  store.textStores.removeAt(index);
                                },
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Sizes.m.spacer(),
                IconButton.filled(
                  icon: const Icon(
                    Icons.add,
                  ),
                  onPressed: store.addImage,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
