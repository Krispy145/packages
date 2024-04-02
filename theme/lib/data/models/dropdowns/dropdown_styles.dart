// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/dropdowns/dropdown_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'dropdown_styles.freezed.dart';
// part 'dropdown_styles.g.dart';

// @freezed
// class DropdownStyles with _$DropdownStyles {
//   const DropdownStyles._();
//   const factory DropdownStyles({
//     required DropdownModel primary,
//     DropdownModel? secondary,
//     DropdownModel? tertiary,
//   }) = _DropdownStyles;

//   factory DropdownStyles.fromJson(Map<String, dynamic> json) => _$DropdownStylesFromJson(json);

//   DropdownMenuThemeData toDropdownMenuThemeData(StyleType type) {
//     return styleModelFromType(type: type).asDropdownMenuThemeData();
//   }

//   DropdownModel styleModelFromType({required StyleType type}) {
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
