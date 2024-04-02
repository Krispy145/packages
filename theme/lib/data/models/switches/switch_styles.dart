// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/switches/switch_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'switch_styles.freezed.dart';
// part 'switch_styles.g.dart';

// @freezed
// class SwitchStyles with _$SwitchStyles {
//   const SwitchStyles._();
//   const factory SwitchStyles({
//     required SwitchModel primary,
//     SwitchModel? secondary,
//     SwitchModel? tertiary,
//   }) = _SwitchStyles;

//   factory SwitchStyles.fromJson(Map<String, dynamic> json) => _$SwitchStylesFromJson(json);

//   SwitchThemeData toSwitchThemeData(StyleType type) {
//     return styleModelFromType(type: type).asSwitchThemeData();
//   }

//   SwitchModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? const SwitchModel();
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
