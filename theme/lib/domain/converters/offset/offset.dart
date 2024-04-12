// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class OffsetConverter implements JsonConverter<Offset, Map<String, dynamic>?> {
//   const OffsetConverter();

//   /// This example shows how to use the [OffsetConverter]:
//   Offset example() {
//     final json = const OffsetConverter().toJson(const Offset(10, 10));
//     final offset = const OffsetConverter().fromJson(json);
//     AppLogger.print("OFFSET fromJson -> $offset", [ThemeLoggers.converters]);
//     AppLogger.print("OFFSET toJson -> $json", [ThemeLoggers.converters]);
//     return offset;
//   }

//   @override
//   Offset fromJson(dynamic json) {
//     if (json == null) {
//       return Offset.zero;
//     }
//     return Offset(
//       json['dx'] as double? ?? 0,
//       json['dy'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(Offset instance) {
//     Map<String, dynamic> json = {};
//     // if (instance == Offset.zero) {
//     //   return null;
//     // }
//     json['dx'] = instance.dx;
//     json['dy'] = instance.dy;
//     return json.isNotEmpty ? json : null;
//   }
// }
