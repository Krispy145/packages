// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class EllipseRadiusConverter
//     implements JsonConverter<Radius?, Map<String, dynamic>?> {
//   const EllipseRadiusConverter();

//   /// This example shows how to use the [EllipseRadiusConverter]:
//   Radius? example() {
//     final json =
//         const EllipseRadiusConverter().toJson(const Radius.elliptical(10, 20));
//     final radius = const EllipseRadiusConverter().fromJson(json);
//     AppLogger.print("RADIUS fromJson -> $radius", [ThemePackageLoggers.converters]);
//     AppLogger.print("RADIUS toJson -> $json", [ThemePackageLoggers.converters]);
//     return radius;
//   }

//   @override
//   Radius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return Radius.elliptical(
//       json['x'] as double? ?? 0,
//       json['y'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(Radius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.x != 0) {
//       json['x'] = instance.x;
//     }
//     if (instance.y != 0) {
//       json['y'] = instance.y;
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
