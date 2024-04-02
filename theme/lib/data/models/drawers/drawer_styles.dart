// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/drawers/drawer_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'drawer_styles.freezed.dart';
// part 'drawer_styles.g.dart';

// @freezed
// class DrawerStyles with _$DrawerStyles {
//   const DrawerStyles._();
//   const factory DrawerStyles({
//     required DrawerModel primary,
//     DrawerModel? secondary,
//     DrawerModel? tertiary,
//   }) = _DrawerStyles;

//   factory DrawerStyles.fromJson(Map<String, dynamic> json) => _$DrawerStylesFromJson(json);

//   DrawerThemeData toDrawerThemeData(StyleType type) {
//     return styleModelFromType(type: type).asDrawerThemeData();
//   }

//   DrawerModel styleModelFromType({required StyleType type}) {
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
