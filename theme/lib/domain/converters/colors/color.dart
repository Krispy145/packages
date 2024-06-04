import "dart:convert";

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

class ColorMapper extends SimpleMapper<Color> {
  final Color fallback;

  const ColorMapper({this.fallback = Colors.transparent});
  @override
  Color decode(dynamic value) {
    if (value is String) {
      if (value.startsWith("#")) {
        final color = getColorFromHex(value);
        try {
          return color!;
        } catch (e) {
          return fallback;
        }
      }
      value = json.decode(value);
      if (value is List) {
        final colorList = <double>[];
        for (final element in value) {
          if (element is int) {
            colorList.add(element.toDouble());
          } else if (element is double) {
            colorList.add(element);
          }
        }
        return _getColorFromRGB(colorList);
      }
    }
    if (value is List && (value.length == 3 || value.length == 4)) {
      final colorList = <double>[];
      for (final element in value) {
        if (element is int) {
          colorList.add(element.toDouble());
        } else if (element is double) {
          colorList.add(element);
        }
      }
      return _getColorFromRGB(colorList);
    }
    // assert(false, "Invalid color value: $value");
    return fallback;
  }

  @override
  dynamic encode(Color self) {
    return [self.red, self.green, self.blue, self.opacity].toString();
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

  /// [getColorFromHex] is a helper function that converts a hex color to a [Color].
  /// If alpha is provided, it should be at the end
  /// Can interpret rgb, rgbaa, rrggbb, rrggbbaa
  static Color? getColorFromHex(String hexColor) {
    // Remove any leading '#' character
    if (hexColor.isNotEmpty && hexColor[0] == "#") {
      hexColor = hexColor.substring(1);
    }

    // Has opacity (which needs to be moved to front)
    if (hexColor.length == 5 || hexColor.length == 8) {
      final dividingPoint = hexColor.length - 2;
      hexColor = hexColor.substring(dividingPoint) + hexColor.substring(0, dividingPoint);
    }

    if (hexColor.length == 3 || hexColor.length == 5) {
      final alphaPart = hexColor.length == 5 ? hexColor.substring(0, 2) : "";
      final colorPart = hexColor.substring(hexColor.length == 5 ? 2 : 0);
      hexColor = alphaPart + colorPart[0] + colorPart[0] + colorPart[1] + colorPart[1] + colorPart[2] + colorPart[2];
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

  static Color getColorFromRGB(List<double> colorValue) {
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
}
