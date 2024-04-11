// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/radius/circular.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderRadiusCircularConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
//   const BorderRadiusCircularConverter();

//   /// This example shows how to use the [BorderRadiusCircularConverter]:
//   BorderRadius? example() {
//     final json = const CircularRadiusConverter().toJson(const Radius.circular(10));
//     final radius = const BorderRadiusCircularConverter().fromJson(json);
//     AppLogger.print("BORDER-RADIUS fromJson -> $radius", [ThemeLoggers.converters]);
//     AppLogger.print("BORDER-RADIUS toJson -> $json", [ThemeLoggers.converters]);
//     return radius;
//   }

//   @override
//   BorderRadius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderRadius.circular(
//       const CircularRadiusConverter().fromJson(json['radius'])?.x ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderRadius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.topLeft != Radius.zero) {
//       json['radius'] = const CircularRadiusConverter().toJson(instance.topLeft);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
