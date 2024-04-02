// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/cards/card_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'card_styles.freezed.dart';
// part 'card_styles.g.dart';

// @freezed
// class CardStyles with _$CardStyles {
//   const CardStyles._();
//   const factory CardStyles({
//     required CardModel primary,
//     CardModel? secondary,
//     CardModel? tertiary,
//   }) = _CardStyles;

//   factory CardStyles.fromJson(Map<String, dynamic> json) => _$CardStylesFromJson(json);

//   CardTheme toCardTheme(StyleType type) {
//     return styleModelFromType(type: type).asCardTheme();
//   }

//   CardModel styleModelFromType({required StyleType type}) {
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
