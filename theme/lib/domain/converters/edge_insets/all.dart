// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class EdgeInsetsAllConverter implements JsonConverter<EdgeInsets?, double?> {
//   const EdgeInsetsAllConverter();

//   /// This example shows how to use the [EdgeInsetsAllConverter]:
//   EdgeInsets? example() {
//     final json =
//         const EdgeInsetsAllConverter().toJson(const EdgeInsets.all(10));
//     final edgeInsets = const EdgeInsetsAllConverter().fromJson(json);
//     AppLogger.print(
//         "EDGE-INSETS fromJson -> $edgeInsets", [ThemeLoggers.converters]);
//     AppLogger.print(
//         "EDGE-INSETS toJson -> $json", [ThemeLoggers.converters]);
//     return edgeInsets;
//   }

//   @override
//   EdgeInsets? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return EdgeInsets.all(json as double? ?? 0);
//   }

//   @override
//   double? toJson(EdgeInsets? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return instance.top;
//   }
// }
