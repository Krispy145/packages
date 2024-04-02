// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/menu_bars/menu_bar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'menu_bar_styles.freezed.dart';
// part 'menu_bar_styles.g.dart';

// @freezed
// class MenuBarStyles with _$MenuBarStyles {
//   const MenuBarStyles._();
//   const factory MenuBarStyles({
//     required MenuBarModel primary,
//     MenuBarModel? secondary,
//     MenuBarModel? tertiary,
//   }) = _MenuBarStyles;

//   factory MenuBarStyles.fromJson(Map<String, dynamic> json) => _$MenuBarStylesFromJson(json);

//   MenuBarThemeData toMenuBarThemeData(StyleType type) {
//     return styleModelFromType(type: type).asMenuBarThemeData();
//   }

//   MenuBarModel styleModelFromType({required StyleType type}) {
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
