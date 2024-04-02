// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/tab_bars/tab_bar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'tab_bar_styles.freezed.dart';
// part 'tab_bar_styles.g.dart';

// @freezed
// class TabBarStyles with _$TabBarStyles {
//   const TabBarStyles._();
//   const factory TabBarStyles({
//     required TabBarModel primary,
//     TabBarModel? secondary,
//     TabBarModel? tertiary,
//   }) = _TabBarStyles;

//   factory TabBarStyles.fromJson(Map<String, dynamic> json) => _$TabBarStylesFromJson(json);

//   TabBarTheme toTabBarTheme(StyleType type) {
//     return styleModelFromType(type: type).asTabBarTheme();
//   }

//   TabBarModel styleModelFromType({required StyleType type}) {
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
