// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/appbars/bottom_appbar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'bottom_appbar_styles.freezed.dart';
// part 'bottom_appbar_styles.g.dart';

// @freezed
// class BottomAppbarStyles with _$BottomAppbarStyles {
//   const BottomAppbarStyles._();
//   const factory BottomAppbarStyles({
//     required BottomAppbarModel primary,
//     BottomAppbarModel? secondary,
//     BottomAppbarModel? tertiary,
//   }) = _BottomAppbarStyles;

//   factory BottomAppbarStyles.fromJson(Map<String, dynamic> json) => _$BottomAppbarStylesFromJson(json);

//   BottomAppBarTheme toBottomAppBarTheme(StyleType type) {
//     return styleModelFromType(type: type).asBottomAppBarTheme();
//   }

//   BottomAppbarModel styleModelFromType({required StyleType type}) {
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
