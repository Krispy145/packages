import "dart:convert";

import "package:collection/collection.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/text/text_style_model.dart";
import "package:theme/data/models/text/text_style_sizes_model.dart";
import "package:theme/data/models/text/text_types_model.dart";

typedef TextStyleString = String;

extension TextStyleStringExtension on TextStyleString {
  TextStyleModel? toTextStyleModel({String? styleType}) {
    if (startsWith("{")) {
      try {
        final jsonMap = json.decode(this);
        return TextStyleModel.fromMap(jsonMap as Map<String, dynamic>);
      } catch (e) {
        return null;
      }
    }
    final currentTextStyleModel = AppTheme.textStyleTypes(styleTypeName: styleType);
    final keyList = split("-");
    if (keyList.length < 2 || currentTextStyleModel == null) return null;
    final type = TextType.values.firstWhereOrNull((element) => element.name == keyList[0]);
    final size = TextSizes.values.firstWhereOrNull((element) => element.name == keyList[1]);
    String? color;
    if (keyList.length >= 3) {
      color = keyList[2];
    }

    if (type == null || size == null) return null;

    TextStyleModel? model;

    switch (type) {
      case TextType.headline:
        switch (size) {
          case TextSizes.small:
            model = currentTextStyleModel.headline?.small;
          case TextSizes.medium:
            model = currentTextStyleModel.headline?.medium;
          case TextSizes.large:
            model = currentTextStyleModel.headline?.large;
        }
      case TextType.title:
        switch (size) {
          case TextSizes.small:
            model = currentTextStyleModel.title?.small;
          case TextSizes.medium:
            model = currentTextStyleModel.title?.medium;
          case TextSizes.large:
            model = currentTextStyleModel.title?.large;
        }
      case TextType.display:
        switch (size) {
          case TextSizes.small:
            model = currentTextStyleModel.display?.small;
          case TextSizes.medium:
            model = currentTextStyleModel.display?.medium;
          case TextSizes.large:
            model = currentTextStyleModel.display?.large;
        }
      case TextType.body:
        switch (size) {
          case TextSizes.small:
            model = currentTextStyleModel.body?.small;
          case TextSizes.medium:
            model = currentTextStyleModel.body?.medium;
          case TextSizes.large:
            model = currentTextStyleModel.body?.large;
        }
      case TextType.label:
        switch (size) {
          case TextSizes.small:
            model = currentTextStyleModel.label?.small;
          case TextSizes.medium:
            model = currentTextStyleModel.label?.medium;
          case TextSizes.large:
            model = currentTextStyleModel.label?.large;
        }
    }

    if (color != null) {
      model = model?.copyWith(color_themeColorString: color);
    }
    return model;
  }
}
