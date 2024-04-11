// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class SizeConverter implements JsonConverter<Size?, Map<String, dynamic>?> {
//   const SizeConverter();

//   /// This example shows how to use the [SizeConverter]:
//   Size? example() {
//     final json = const SizeConverter().toJson(const Size(10, 20));
//     final size = const SizeConverter().fromJson(json);
//     AppLogger.print("SIZE fromJson -> $size", [ThemeLoggers.converters]);
//     AppLogger.print("SIZE toJson -> $json", [ThemeLoggers.converters]);
//     return size;
//   }

//   @override
//   Size? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return Size(
//       json['width'] as double? ?? 0,
//       json['height'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(Size? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final json = <String, dynamic>{};
//     if (instance.width != 0) {
//       json['width'] = instance.width;
//     }
//     if (instance.height != 0) {
//       json['height'] = instance.height;
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
