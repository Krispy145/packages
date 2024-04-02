// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/menus/menu_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'menu_styles.freezed.dart';
// part 'menu_styles.g.dart';

// @freezed
// class MenuStyles with _$MenuStyles {
//   const MenuStyles._();
//   const factory MenuStyles({
//     required MenuModel primary,
//     MenuModel? secondary,
//     MenuModel? tertiary,
//   }) = _MenuStyles;

//   factory MenuStyles.fromJson(Map<String, dynamic> json) => _$MenuStylesFromJson(json);

//   MenuThemeData toMenuThemeData(StyleType type) {
//     return styleModelFromType(type: type).toMenuThemeData();
//   }

//   MenuModel styleModelFromType({required StyleType type}) {
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
