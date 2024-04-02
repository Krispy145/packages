// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/tooltips/tooltip_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'tooltip_styles.freezed.dart';
// part 'tooltip_styles.g.dart';

// @freezed
// class TooltipStyles with _$TooltipStyles {
//   const TooltipStyles._();
//   const factory TooltipStyles({
//     required TooltipModel primary,
//     TooltipModel? secondary,
//     TooltipModel? tertiary,
//   }) = _TooltipStyles;

//   factory TooltipStyles.fromJson(Map<String, dynamic> json) => _$TooltipStylesFromJson(json);

//   TooltipThemeData toTooltipThemeData(StyleType type) {
//     return styleModelFromType(type: type).asTooltipThemeData();
//   }

//   TooltipModel styleModelFromType({required StyleType type}) {
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
