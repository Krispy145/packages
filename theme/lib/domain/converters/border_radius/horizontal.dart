// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/radius/radius.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderRadiusHorizontalConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
//   const BorderRadiusHorizontalConverter();

//   /// This example shows how to use the [BorderRadiusHorizontalConverter]:
//   BorderRadius? example() {
//     final json = const RadiusConverter().toJson(const Radius.circular(10));
//     final radius = const BorderRadiusHorizontalConverter().fromJson(json);
//     AppLogger.print("BORDER-RADIUS fromJson -> $radius", [ThemeLoggers.converters]);
//     final convertedJson = const BorderRadiusHorizontalConverter().toJson(BorderRadius.circular(10));
//     AppLogger.print("BORDER-RADIUS toJson -> $convertedJson", [ThemeLoggers.converters]);
//     return radius;
//   }

//   @override
//   BorderRadius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderRadius.horizontal(
//       left: const RadiusConverter().fromJson(json['left']) ?? Radius.zero,
//       right: const RadiusConverter().fromJson(json['right']) ?? Radius.zero,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderRadius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.topLeft != Radius.zero) {
//       json['left'] = const RadiusConverter().toJson(instance.topLeft);
//     }
//     if (instance.topRight != Radius.zero) {
//       json['right'] = const RadiusConverter().toJson(instance.topRight);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
