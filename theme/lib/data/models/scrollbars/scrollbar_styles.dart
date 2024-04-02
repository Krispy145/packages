// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/scrollbars/scrollbar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'scrollbar_styles.freezed.dart';
// part 'scrollbar_styles.g.dart';

// @freezed
// class ScrollbarStyles with _$ScrollbarStyles {
//   const ScrollbarStyles._();
//   const factory ScrollbarStyles({
//     required ScrollbarModel primary,
//     ScrollbarModel? secondary,
//     ScrollbarModel? tertiary,
//   }) = _ScrollbarStyles;

//   factory ScrollbarStyles.fromJson(Map<String, dynamic> json) => _$ScrollbarStylesFromJson(json);

//   ScrollbarThemeData toScrollbarThemeData(StyleType type) {
//     return styleModelFromType(type: type).asScrollbarThemeData();
//   }

//   ScrollbarModel styleModelFromType({required StyleType type}) {
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
