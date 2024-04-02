// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/badges/badge_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'badge_styles.freezed.dart';
// part 'badge_styles.g.dart';

// @freezed
// class BadgeStyles with _$BadgeStyles {
//   const BadgeStyles._();
//   const factory BadgeStyles({
//     required BadgeModel primary,
//     BadgeModel? secondary,
//     BadgeModel? tertiary,
//   }) = _BadgeStyles;

//   factory BadgeStyles.fromJson(Map<String, dynamic> json) => _$BadgeStylesFromJson(json);

//   BadgeThemeData toBadgeThemeData(StyleType type) {
//     return styleModelFromType(type: type).asBadgeThemeData();
//   }

//   BadgeModel styleModelFromType({required StyleType type}) {
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
