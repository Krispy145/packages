// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/snackbars/snackbar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'snackbar_styles.freezed.dart';
// part 'snackbar_styles.g.dart';

// @freezed
// class SnackbarStyles with _$SnackbarStyles {
//   const SnackbarStyles._();
//   const factory SnackbarStyles({
//     required SnackbarModel primary,
//     SnackbarModel? secondary,
//     SnackbarModel? tertiary,
//   }) = _SnackbarStyles;

//   factory SnackbarStyles.fromJson(Map<String, dynamic> json) => _$SnackbarStylesFromJson(json);

//   SnackBarThemeData toSnackBarThemeData(StyleType type) {
//     return styleModelFromType(type: type).asSnackBarThemeData();
//   }

//   SnackbarModel styleModelFromType({required StyleType type}) {
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
