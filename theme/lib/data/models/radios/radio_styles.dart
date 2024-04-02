// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/radios/radio_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'radio_styles.freezed.dart';
// part 'radio_styles.g.dart';

// @freezed
// class RadioStyles with _$RadioStyles {
//   const RadioStyles._();
//   const factory RadioStyles({
//     required RadioModel primary,
//     RadioModel? secondary,
//     RadioModel? tertiary,
//   }) = _RadioStyles;

//   factory RadioStyles.fromJson(Map<String, dynamic> json) => _$RadioStylesFromJson(json);

//   RadioThemeData toRadioThemeData(StyleType type) {
//     return styleModelFromType(type: type).asRadioThemeData();
//   }

//   RadioModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? const RadioModel();
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
