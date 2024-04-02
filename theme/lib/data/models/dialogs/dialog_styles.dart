// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/dialogs/dialog_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'dialog_styles.freezed.dart';
// part 'dialog_styles.g.dart';

// @freezed
// class DialogStyles with _$DialogStyles {
//   const DialogStyles._();
//   const factory DialogStyles({
//     required DialogModel primary,
//     DialogModel? secondary,
//     DialogModel? tertiary,
//   }) = _DialogStyles;

//   factory DialogStyles.fromJson(Map<String, dynamic> json) => _$DialogStylesFromJson(json);

//   DialogTheme toDialogTheme(StyleType type) {
//     return styleModelFromType(type: type).asDialogTheme();
//   }

//   DialogModel styleModelFromType({required StyleType type}) {
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
