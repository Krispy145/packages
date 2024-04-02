// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/navigation_rails/navigation_rail_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'navigation_rail_styles.freezed.dart';
// part 'navigation_rail_styles.g.dart';

// @freezed
// class NavigationRailStyles with _$NavigationRailStyles {
//   const NavigationRailStyles._();
//   const factory NavigationRailStyles({
//     required NavigationRailModel primary,
//     NavigationRailModel? secondary,
//     NavigationRailModel? tertiary,
//   }) = _NavigationRailStyles;

//   factory NavigationRailStyles.fromJson(Map<String, dynamic> json) => _$NavigationRailStylesFromJson(json);

//   NavigationRailThemeData toNavigationRailThemeData(StyleType type) {
//     return styleModelFromType(type: type).asNavigationRailThemeData();
//   }

//   NavigationRailModel styleModelFromType({required StyleType type}) {
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
