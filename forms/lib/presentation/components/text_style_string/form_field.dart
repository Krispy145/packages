import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/theme_color_string/form_field.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/text/text_style_sizes_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class TextStyleStringFormField
    extends BaseFormField<TextStyleStringFormFieldStore> {
  TextStyleStringFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return SizedBox(
          height: 320,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton.icon(
                  label: Text(
                    "Preview",
                    style: store.value?.toTextStyleModel()?.asTextStyle,
                  ),
                  icon: const Icon(Icons.delete),
                  onPressed: () => store.value = null,
                ),
                ThemeColorStringFormField(store: store.colorStore),
                ...AppTheme.textStyleTypes()!.toMap().entries.map((entry) {
                  final styleTitle = entry.key; // TODO: Give better name
                  final value = TextStyleSizesModel.fromMap(
                    entry.value as Map<String, dynamic>,
                  );
                  return Column(
                    children: value.toMap().entries.map((entry) {
                      final title = entry.key; // TODO: Give better name
                      return InkWell(
                        onTap: () => store.updateTextStyle(styleTitle, title),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$styleTitle-$title",
                              maxLines: 2,
                              style: "$styleTitle-$title"
                                  .toTextStyleModel()
                                  ?.asTextStyle,
                            ),
                            Sizes.m.spacer(axis: Axis.horizontal),
                          ],
                        ),
                      );
                    }).toList(),
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}
