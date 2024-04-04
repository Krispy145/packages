import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';
import 'package:theme/data/models/text/text_types.dart';

typedef TextStyleString = String;

extension TextStyleStringExtension on TextStyleString {
  TextStyleModel? toTextStyleModel({String? styleType}) {
    if (startsWith("{")) {
      try {
        final jsonMap = json.decode(this);
        return TextStyleModel.fromJson(jsonMap as Map<String, dynamic>);
      } catch (e) {
        return null;
      }
    }
    final currentTextStyleModel = AppTheme.textStyleTypes(styleTypeName: styleType);
    final keyList = split("-");
    if (keyList.length != 2 || currentTextStyleModel == null) return null;
    final type = TextType.values.firstWhereOrNull((element) => element.name == keyList[0]);
    final size = TextSizes.values.firstWhereOrNull((element) => element.name == keyList[1]);

    if (type == null || size == null) return null;

    switch (type) {
      case TextType.headline:
        switch (size) {
          case TextSizes.small:
            return currentTextStyleModel.headline?.small;
          case TextSizes.medium:
            return currentTextStyleModel.headline?.medium;
          case TextSizes.large:
            return currentTextStyleModel.headline?.large;
        }
      case TextType.title:
        switch (size) {
          case TextSizes.small:
            return currentTextStyleModel.title?.small;
          case TextSizes.medium:
            return currentTextStyleModel.title?.medium;
          case TextSizes.large:
            return currentTextStyleModel.title?.large;
        }
      case TextType.display:
        switch (size) {
          case TextSizes.small:
            return currentTextStyleModel.display?.small;
          case TextSizes.medium:
            return currentTextStyleModel.display?.medium;
          case TextSizes.large:
            return currentTextStyleModel.display?.large;
        }
      case TextType.body:
        switch (size) {
          case TextSizes.small:
            return currentTextStyleModel.body?.small;
          case TextSizes.medium:
            return currentTextStyleModel.body?.medium;
          case TextSizes.large:
            return currentTextStyleModel.body?.large;
        }
      case TextType.label:
        switch (size) {
          case TextSizes.small:
            return currentTextStyleModel.label?.small;
          case TextSizes.medium:
            return currentTextStyleModel.label?.medium;
          case TextSizes.large:
            return currentTextStyleModel.label?.large;
        }
    }
  }
}
