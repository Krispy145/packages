// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/colors/color.dart';
// import 'package:theme/wrapper/app_theme.dart';

// part 'brightness_color_model.freezed.dart';
// part 'brightness_color_model.g.dart';

// @freezed
// class BrightnessColorModel with _$BrightnessColorModel {
//   const BrightnessColorModel._();
//   const factory BrightnessColorModel({
//     String? light,
//     String? dark,
//   }) = _BrightnessColorModel;

//   factory BrightnessColorModel.fromJson(Map<String, dynamic> json) => _$BrightnessColorModelFromJson(json);

//   Color? get colorFromBrightness {
//     if (light != null && dark != null) {
//       return AppTheme.isLight ? light. : dark;
//     } else if (light != null) {
//       return light;
//     } else if (dark != null) {
//       return dark;
//     }
//     return null;
//   }
// }
