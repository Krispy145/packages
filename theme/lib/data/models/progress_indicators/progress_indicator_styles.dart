// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/progress_indicators/progress_indicator_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'progress_indicator_styles.freezed.dart';
// part 'progress_indicator_styles.g.dart';

// @freezed
// class ProgressIndicatorStyles with _$ProgressIndicatorStyles {
//   const ProgressIndicatorStyles._();
//   const factory ProgressIndicatorStyles({
//     required ProgressIndicatorModel primary,
//     ProgressIndicatorModel? secondary,
//     ProgressIndicatorModel? tertiary,
//   }) = _ProgressIndicatorStyles;

//   factory ProgressIndicatorStyles.fromJson(Map<String, dynamic> json) => _$ProgressIndicatorStylesFromJson(json);

//   ProgressIndicatorThemeData toProgressIndicatorThemeData(StyleType type) {
//     return styleModelFromType(type: type).asProgressIndicatorThemeData();
//   }

//   ProgressIndicatorModel styleModelFromType({required StyleType type}) {
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
