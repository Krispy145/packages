// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class StadiumBorderConverter implements JsonConverter<StadiumBorder?, Map<String, dynamic>?> {
//   const StadiumBorderConverter();

//   /// This example shows how to use the [StadiumBorderConverter]:
//   StadiumBorder? example() {
//     final json = const StadiumBorderConverter().toJson(const StadiumBorder(side: BorderSide.none));
//     final border = const StadiumBorderConverter().fromJson(json);
//     AppLogger.print("STADIUM-BORDER fromJson -> $border", [ThemeLoggers.converters]);
//     AppLogger.print("STADIUM-BORDER toJson -> $json", [ThemeLoggers.converters]);
//     return border;
//   }

//   @override
//   StadiumBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return StadiumBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(StadiumBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.side != BorderSide.none) {
//       json['side'] = const BorderSideConverter().toJson(instance.side);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
