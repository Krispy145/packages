// import 'package:collection/collection.dart';
// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/colors/color.dart';
// import 'package:theme/domain/models/colors/brightness_themeColorString_model.dart';
// import 'package:theme/wrapper/app_theme.dart';
// import 'package:utilities/logger/logger.dart';

// class ColorFromBaseThemeConverter implements JsonConverter<BrightnessColorModel?, String?> {
//   const ColorFromBaseThemeConverter();

//   /// This example shows how to use the [ColorFromBaseThemeConverter]:
//   BrightnessColorModel? example() {
//     final json = const ColorFromBaseThemeConverter().toJson(const BrightnessColorModel(
//       light: Colors.red,
//       dark: Colors.blue,
//     ));
//     final color = const ColorFromBaseThemeConverter().fromJson(json);
//     AppLogger.print("BASE-THEME-COLOR fromJson -> $color", [ThemePackageLoggers.converters]);
//     AppLogger.print("BASE-THEME-COLOR toJson -> $json", [ThemePackageLoggers.converters]);
//     return color;
//   }

//   @override
//   BrightnessColorModel? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     final currentColorScheme = AppTheme.colorStyles.styleModelFromType(type: AppTheme.styleType);
//     final lightScheme = currentColorScheme.light;
//     final darkScheme = currentColorScheme.dark;
//     final lightColorAndKey = lightScheme.toJson().entries.firstWhereOrNull((element) => element.key == json);
//     final darkColorAndKey = darkScheme.toJson().entries.firstWhereOrNull((element) => element.key == json);

//     if (lightColorAndKey != null && darkColorAndKey != null) {
//       return BrightnessColorModel(
//         light: const ColorConverter().fromJson(lightColorAndKey.value),
//         dark: const ColorConverter().fromJson(darkColorAndKey.value),
//       );
//     }
//     return null;
//   }

//   @override
//   String? toJson(BrightnessColorModel? colorAndKey) {
//     return colorAndKey?.toJson().toString();
//   }
// }
