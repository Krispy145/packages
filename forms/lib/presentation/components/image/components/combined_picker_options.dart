import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/image/components/image_text_field.dart";
import "package:forms/presentation/components/image/components/upload_image_field.dart";
import "package:forms/presentation/components/image/store.dart";
import "package:theme/extensions/build_context.dart";

class CombinedPickerOptions extends StatelessWidget {
  const CombinedPickerOptions({
    super.key,
    required this.store,
  });

  final ImageFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Observer(
          builder: (context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // URL TAB
                TextButton(
                  onPressed: () => store.changeTab(0),
                  child: Text(
                    "URL",
                    style: store.tabIndex == 0
                        ? context.textTheme.titleMedium
                            ?.copyWith(color: context.colorScheme.primary)
                        : context.textTheme.titleMedium,
                  ),
                ),
                // UPLOAD TAB
                TextButton(
                  onPressed: () => store.changeTab(1),
                  child: Text(
                    "Upload",
                    style: store.tabIndex == 1
                        ? context.textTheme.titleMedium
                            ?.copyWith(color: context.colorScheme.primary)
                        : context.textTheme.titleMedium,
                  ),
                ),
              ],
            );
          },
        ),
        Flexible(
          child: PageView(
            controller: store.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ImageTextField(imageUrlKey: store.imageUrlKey),
              UploadImageField(store: store),
            ],
          ),
        ),
      ],
    );
  }
}
