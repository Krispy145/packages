// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/radius/radius.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderRadiusAllConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
//   const BorderRadiusAllConverter();

//   /// This example shows how to use the [BorderRadiusAllConverter]:
//   BorderRadius? example() {
//     final json = const RadiusConverter().toJson(const Radius.circular(10));
//     final radius = const BorderRadiusAllConverter().fromJson(json);
//     AppLogger.print("BORDER-RADIUS fromJson -> $radius", [ThemeLoggers.converters]);
//     final convertedJson = const BorderRadiusAllConverter().toJson(BorderRadius.circular(10));
//     AppLogger.print("BORDER-RADIUS toJson -> $convertedJson", [ThemeLoggers.converters]);
//     return radius;
//   }

//   @override
//   BorderRadius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderRadius.all(const RadiusConverter().fromJson(json['radius']) ?? Radius.zero);
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderRadius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.topLeft != Radius.zero) {
//       json['radius'] = const RadiusConverter().toJson(instance.topLeft);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
