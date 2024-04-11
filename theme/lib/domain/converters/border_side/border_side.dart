// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderSideConverter implements JsonConverter<BorderSide?, Map<String, dynamic>?> {
//   const BorderSideConverter();

//   /// This example shows how to use the [BorderSideConverter]:
//   BorderSide? example() {
//     final json = const BorderSideConverter().toJson(
//       const BorderSide(color: Colors.transparent),
//     );
//     final border = const BorderSideConverter().fromJson(json);
//     AppLogger.print("BORDER-SIDE fromJson -> $border", [ThemeLoggers.converters]);
//     AppLogger.print("BORDER-SIDE toJson -> $json", [ThemeLoggers.converters]);
//     return border;
//   }

//   @override
//   BorderSide? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderSide(
//       color: const ColorConverter().fromJson(json['color']) ?? Colors.transparent,
//       width: json['width'] as double? ?? 1,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderSide? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final json = <String, dynamic>{};
//     if (instance == BorderSide.none) {
//       json['color'] = const ColorConverter().toJson(Colors.transparent);
//       json['width'] = 0;
//     } else {
//       json['color'] = const ColorConverter().toJson(instance.color);
//       json['width'] = instance.width;
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
