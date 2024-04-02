// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/input_decorations/input_decoration_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'input_decoration_styles.freezed.dart';
// part 'input_decoration_styles.g.dart';

// @freezed
// class InputDecorationStyles with _$InputDecorationStyles {
//   const InputDecorationStyles._();
//   const factory InputDecorationStyles({
//     required InputDecorationModel primary,
//     InputDecorationModel? secondary,
//     InputDecorationModel? tertiary,
//   }) = _InputDecorationStyles;

//   factory InputDecorationStyles.fromJson(Map<String, dynamic> json) => _$InputDecorationStylesFromJson(json);

//   InputDecorationTheme toInputDecorationTheme(StyleType type) {
//     return styleModelFromType(type: type).asInputDecorationTheme();
//   }

//   InputDecorationModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? const InputDecorationModel();
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
