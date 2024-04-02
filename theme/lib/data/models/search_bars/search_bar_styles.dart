// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/search_bars/search_bar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'search_bar_styles.freezed.dart';
// part 'search_bar_styles.g.dart';

// @freezed
// class SearchBarStyles with _$SearchBarStyles {
//   const SearchBarStyles._();
//   const factory SearchBarStyles({
//     required SearchBarModel primary,
//     SearchBarModel? secondary,
//     SearchBarModel? tertiary,
//   }) = _SearchBarStyles;

//   factory SearchBarStyles.fromJson(Map<String, dynamic> json) => _$SearchBarStylesFromJson(json);

//   SearchBarThemeData toSearchBarThemeData(StyleType type) {
//     return styleModelFromType(type: type).asSearchBarThemeData();
//   }

//   SearchBarModel styleModelFromType({required StyleType type}) {
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
