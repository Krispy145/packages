// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/box_decorations/box_decoration_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'box_decoration_styles.freezed.dart';
// part 'box_decoration_styles.g.dart';

// @freezed
// class BoxDecorationStyles with _$BoxDecorationStyles {
//   const BoxDecorationStyles._();
//   const factory BoxDecorationStyles({
//     required BoxDecorationModel primary,
//     BoxDecorationModel? secondary,
//     BoxDecorationModel? tertiary,
//   }) = _BoxDecorationStyles;

//   factory BoxDecorationStyles.fromJson(Map<String, dynamic> json) => _$BoxDecorationStylesFromJson(json);

//   BoxDecoration toBoxDecoration(StyleType type) {
//     return styleModelFromType(type: type).asBoxDecoration();
//   }

//   BoxDecorationModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? const BoxDecorationModel();
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
