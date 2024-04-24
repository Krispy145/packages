import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/presentation/components/base/form_field.dart';
import 'package:theme/app/app.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'store.dart';
import 'package:utilities/sizes/spacers.dart';

class TextStyleStringFormField extends BaseFormField<TextStyleStringFormFieldStore> {
  const TextStyleStringFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return SizedBox(
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: AppTheme.textStyleTypes()!.toJson().entries.map((entry) {
                final styleTitle = entry.key; // TODO: Give better name
                final value = TextStyleSizes.fromJson(entry.value as Map<String, dynamic>);
                return Column(
                  children: value.toJson().entries.map((entry) {
                    final title = entry.key; // TODO: Give better name
                    return InkWell(
                      onTap: () => store.updateTextStyle(styleTitle, title),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$styleTitle-$title",
                            maxLines: 2,
                            style: "$styleTitle-$title".toTextStyleModel()?.asTextStyle.copyWith(color: Colors.black),
                          ),
                          Sizes.m.spacer(vertical: false),
                        ],
                      ),
                    );
                  }).toList(),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
