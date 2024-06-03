import "dart:convert";
import "dart:ui";

import "package:collection/collection.dart";
import "package:theme/app/app.dart";
import "package:theme/domain/converters/colors/color.dart";

typedef ThemeColorString = String;

extension ThemeColorExtension on ThemeColorString {
  Color? toColor({String? styleType}) {
    if (this == "") return null;
    if (startsWith("#")) {
      return ColorMapper.getColorFromHex(this);
    }
    final lightColorModel = AppTheme.colorStyles(styleTypeName: styleType).light.toMap();
    final darkColorModel = AppTheme.colorStyles(styleTypeName: styleType).dark.toMap();
    final currentColorModel = AppTheme.isDark ? darkColorModel : lightColorModel;
    final currentColorAndKey = currentColorModel.entries.firstWhereOrNull((element) => element.key == this);
    if (currentColorAndKey != null) {
      return const ColorMapper().decode(currentColorAndKey.value);
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
      return ColorMapper.getColorFromRGB(colorList);
    }
    return null;
  }
}
