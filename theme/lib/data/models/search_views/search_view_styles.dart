// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/search_views/search_view_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'search_view_styles.freezed.dart';
// part 'search_view_styles.g.dart';

// @freezed
// class SearchViewStyles with _$SearchViewStyles {
//   const SearchViewStyles._();
//   const factory SearchViewStyles({
//     required SearchViewModel primary,
//     SearchViewModel? secondary,
//     SearchViewModel? tertiary,
//   }) = _SearchViewStyles;

//   factory SearchViewStyles.fromJson(Map<String, dynamic> json) => _$SearchViewStylesFromJson(json);

//   SearchViewThemeData toSearchViewThemeData(StyleType type) {
//     return styleModelFromType(type: type).asSearchViewThemeData();
//   }

//   SearchViewModel styleModelFromType({required StyleType type}) {
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
