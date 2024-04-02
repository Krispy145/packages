// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/navigation_bars/navigation_bar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'navigation_bar_styles.freezed.dart';
// part 'navigation_bar_styles.g.dart';

// @freezed
// class NavigationBarStyles with _$NavigationBarStyles {
//   const NavigationBarStyles._();
//   const factory NavigationBarStyles({
//     required NavigationBarModel primary,
//     NavigationBarModel? secondary,
//     NavigationBarModel? tertiary,
//   }) = _NavigationBarStyles;

//   factory NavigationBarStyles.fromJson(Map<String, dynamic> json) => _$NavigationBarStylesFromJson(json);

//   NavigationBarThemeData toNavigationBarThemeData(StyleType type) {
//     return styleModelFromType(type: type).asNavigationBarThemeData();
//   }

//   NavigationBarModel styleModelFromType({required StyleType type}) {
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
