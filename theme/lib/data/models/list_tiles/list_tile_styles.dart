// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/list_tiles/list_tile_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'list_tile_styles.freezed.dart';
// part 'list_tile_styles.g.dart';

// @freezed
// class ListTileStyles with _$ListTileStyles {
//   const ListTileStyles._();
//   const factory ListTileStyles({
//     required ListTileModel primary,
//     ListTileModel? secondary,
//     ListTileModel? tertiary,
//   }) = _ListTileStyles;

//   factory ListTileStyles.fromJson(Map<String, dynamic> json) => _$ListTileStylesFromJson(json);

//   ListTileThemeData toListTileThemeData(StyleType type) {
//     return styleModelFromType(type: type).asListTileThemeData();
//   }

//   ListTileModel styleModelFromType({required StyleType type}) {
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
