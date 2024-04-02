import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:theme/domain/converters/colors/color.dart';

extension ColorFromString on String {
  Color? toColor({String? styleType}) {
    if (startsWith("#")) {
      return _getColorFromHex(this);
    }
    final lightColorModel = AppTheme.colorStyles(styleTypeName: styleType).light.toJson();
    final darkColorModel = AppTheme.colorStyles(styleTypeName: styleType).dark.toJson();
    final currentColorModel = AppTheme.isDark ? darkColorModel : lightColorModel;
    final currentColorAndKey = currentColorModel.entries.firstWhereOrNull((element) => element.key == this);
    if (currentColorAndKey != null) {
      return const ColorConverter().fromJson(currentColorAndKey.value);
    }
    final dynamic colorValue = json.decode(this);
    if (colorValue is List) {
      final colorList = <double>[];
      for (final element in colorValue) {
        if (element is int) {
          colorList.add(element.toDouble());
        } else if (element is double) {
          colorList.add(element);
        }
      }
      return _getColorFromRGB(colorList);
    }
    return null;
  }

  Color _getColorFromRGB(List<double> colorValue) {
    // Check if the list has 3 elements (R, G, B) or 4 elements (R, G, B, A)
    final alpha = (colorValue.length == 4)
        ? (colorValue[3] * 255)
        : colorValue.length == 4
            ? colorValue[3]
            : 255;
    return Color.fromRGBO(
      colorValue[0].toInt(),
      colorValue[1].toInt(),
      colorValue[2].toInt(),
      alpha / 255,
    );
  }

  Color? _getColorFromHex(String hexColor) {
    // Remove any leading '#' character
    if (hexColor.isNotEmpty && hexColor[0] == '#') {
      hexColor = hexColor.substring(1);
    }

    // Parse the hex color code
    final parsedColor = int.tryParse(hexColor, radix: 16) ?? 0xFF000000;

    // Ensure the alpha channel is included (8 characters) or set to 255 (opaque)
    if (hexColor.length == 6) {
      return Color(0xFF000000 | parsedColor);
    } else if (hexColor.length == 8) {
      return Color(parsedColor);
    } else {
      return null;
    }
  }

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
