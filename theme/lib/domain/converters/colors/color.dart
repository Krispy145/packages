import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

/// [ColorConverter] is a converter that allows you to convert a [Color] to and from JSON.
class ColorConverter implements JsonConverter<Color?, dynamic> {
  /// [ColorConverter] constructor
  const ColorConverter();

  /// This example shows how to use the [ColorConverter]:
  Color? example() {
    final json = const ColorConverter().toJson(Colors.green);
    final color = const ColorConverter().fromJson(json);
    AppLogger
      ..print("COLOR fromJson -> $color", [ThemePackageLoggers.converters])
      ..print("COLOR toJson -> $json", [ThemePackageLoggers.converters]);
    return color;
  }

  @override
  Color? fromJson(dynamic colorValue) {
    if (colorValue is String) {
      if (colorValue.startsWith("#")) {
        return getColorFromHex(colorValue);
      }
      colorValue = json.decode(colorValue);
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
    }
    if (colorValue is List && (colorValue.length == 3 || colorValue.length == 4)) {
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

  // @override
  // String? toJson(Color? color) {
  //   if (color != null) {
  //     // Convert Color to hex string
  //     String hexColor = '#${color.value.toRadixString(16).padLeft(8, '0')}';
  //     return hexColor;
  //   }
  //   return null;
  // }

  @override
  String? toJson(Color? color) {
    if (color != null) {
      return [color.red, color.green, color.blue, color.opacity].toString();
    }
    return null;
  }

  static Color? getColorFromHex(String hexColor) {
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
