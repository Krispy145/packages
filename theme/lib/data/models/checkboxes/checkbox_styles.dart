// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/checkboxes/checkbox_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'checkbox_styles.freezed.dart';
// part 'checkbox_styles.g.dart';

// @freezed
// class CheckboxStyles with _$CheckboxStyles {
//   const CheckboxStyles._();
//   const factory CheckboxStyles({
//     required CheckboxModel primary,
//     CheckboxModel? secondary,
//     CheckboxModel? tertiary,
//   }) = _CheckboxStyles;

//   factory CheckboxStyles.fromJson(Map<String, dynamic> json) => _$CheckboxStylesFromJson(json);

//   CheckboxThemeData toCheckboxThemeData(StyleType type) {
//     return styleModelFromType(type: type).asCheckboxThemeData();
//   }

//   CheckboxModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? const CheckboxModel();
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
