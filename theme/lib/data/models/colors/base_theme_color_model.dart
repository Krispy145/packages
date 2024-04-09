// import 'package:flutter/services.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/colors/color_from_base_theme.dart';
// import 'package:theme/domain/models/colors/brightness_themeColorString_model.dart';

// part 'base_theme_themeColorString_model.freezed.dart';
// part 'base_theme_themeColorString_model.g.dart';

// @freezed
// class BaseThemeColorModel with _$BaseThemeColorModel {
//   const BaseThemeColorModel._();
//   const factory BaseThemeColorModel({
//     @ColorFromBaseThemeConverter() BrightnessColorModel? fromTheme,
//     BrightnessColorModel? fromColors,
//   }) = _BaseThemeColorModel;

//   factory BaseThemeColorModel.fromJson(Map<String, dynamic> json) => _$BaseThemeColorModelFromJson(json);

//   Color? get theme {
//     if (fromTheme != null) {
//       return fromTheme!.colorFromBrightness;
//     } else if (fromColors != null) {
//       return fromColors!.colorFromBrightness;
//     }
//     return null;
//   }
// }
