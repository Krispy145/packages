// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/chips/chip_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'chip_styles.freezed.dart';
// part 'chip_styles.g.dart';

// @freezed
// class ChipStyles with _$ChipStyles {
//   const ChipStyles._();
//   const factory ChipStyles({
//     required ChipModel primary,
//     ChipModel? secondary,
//     ChipModel? tertiary,
//   }) = _ChipStyles;

//   factory ChipStyles.fromJson(Map<String, dynamic> json) => _$ChipStylesFromJson(json);

//   ChipThemeData toChipThemeData(StyleType type) {
//     return styleModelFromType(type: type).asChipThemeData();
//   }

//   ChipModel styleModelFromType({required StyleType type}) {
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
