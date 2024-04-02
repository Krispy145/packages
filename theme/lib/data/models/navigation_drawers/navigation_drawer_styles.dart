// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/navigation_drawers/navigation_drawer_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'navigation_drawer_styles.freezed.dart';
// part 'navigation_drawer_styles.g.dart';

// @freezed
// class NavigationDrawerStyles with _$NavigationDrawerStyles {
//   const NavigationDrawerStyles._();
//   const factory NavigationDrawerStyles({
//     required NavigationDrawerModel primary,
//     NavigationDrawerModel? secondary,
//     NavigationDrawerModel? tertiary,
//   }) = _NavigationDrawerStyles;

//   factory NavigationDrawerStyles.fromJson(Map<String, dynamic> json) => _$NavigationDrawerStylesFromJson(json);

//   NavigationDrawerThemeData toNavigationDrawerThemeData(StyleType type) {
//     return styleModelFromType(type: type).asNavigationDrawerThemeData();
//   }

//   NavigationDrawerModel styleModelFromType({required StyleType type}) {
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
