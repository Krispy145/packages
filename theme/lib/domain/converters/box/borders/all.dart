// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:utilities/logger/logger.dart';

// class BoxBorderAllConverter implements JsonConverter<BoxBorder?, Map<String, dynamic>?> {
//   const BoxBorderAllConverter();

//   /// This example shows how to use the [BoxBorderAllConverter]:
//   BoxBorder? example() {
//     final json = const BoxBorderAllConverter().toJson(Border.all(
//       color: const Color(0xFF000000),
//       width: 1.0,
//     ));
//     final border = const BoxBorderAllConverter().fromJson(json);
//     AppLogger.print("BOX-BORDER fromJson -> $border", [PackageFeatures.converters]);
//     AppLogger.print("BOX-BORDER toJson -> $json", [PackageFeatures.converters]);
//     return border;
//   }

//   @override
//   BoxBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return Border.all(
//       color: const ColorConverter().fromJson(json['color']) ?? const Color(0xFF000000),
//       width: json['width'] as double? ?? 1.0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BoxBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     json['color'] = const ColorConverter().toJson(instance.bottom.color);
//     json['width'] = instance.bottom.width;
//     return json.isNotEmpty ? json : null;
//   }
// }
