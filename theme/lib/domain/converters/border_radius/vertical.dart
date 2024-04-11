// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/radius/radius.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderRadiusVerticalConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
//   const BorderRadiusVerticalConverter();

//   /// This example shows how to use the [BorderRadiusVerticalConverter]:
//   BorderRadius? example() {
//     final json = const RadiusConverter().toJson(const Radius.circular(10));
//     final radius = const BorderRadiusVerticalConverter().fromJson(json);
//     AppLogger.print("BORDER-RADIUS fromJson -> $radius", [ThemePackageLoggers.converters]);
//     final convertedJson = const BorderRadiusVerticalConverter().toJson(BorderRadius.circular(10));
//     AppLogger.print("BORDER-RADIUS toJson -> $convertedJson", [ThemePackageLoggers.converters]);
//     return radius;
//   }

//   @override
//   BorderRadius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderRadius.vertical(
//       top: const RadiusConverter().fromJson(json['top']) ?? Radius.zero,
//       bottom: const RadiusConverter().fromJson(json['bottom']) ?? Radius.zero,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderRadius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.topLeft != Radius.zero) {
//       json['top'] = const RadiusConverter().toJson(instance.topLeft);
//     }
//     if (instance.bottomLeft != Radius.zero) {
//       json['bottom'] = const RadiusConverter().toJson(instance.bottomLeft);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
