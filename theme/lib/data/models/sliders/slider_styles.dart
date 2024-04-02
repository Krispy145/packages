// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/sliders/slider_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'slider_styles.freezed.dart';
// part 'slider_styles.g.dart';

// @freezed
// class SliderStyles with _$SliderStyles {
//   const SliderStyles._();
//   const factory SliderStyles({
//     required SliderModel primary,
//     SliderModel? secondary,
//     SliderModel? tertiary,
//   }) = _SliderStyles;

//   factory SliderStyles.fromJson(Map<String, dynamic> json) => _$SliderStylesFromJson(json);

//   SliderThemeData toSliderThemeData(StyleType type) {
//     return styleModelFromType(type: type).asSliderThemeData();
//   }

//   SliderModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? primary;
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
