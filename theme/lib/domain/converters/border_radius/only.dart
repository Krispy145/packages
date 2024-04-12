// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/radius/radius.dart';
// import 'package:utilities/logger/logger.dart';

// class BorderRadiusOnlyConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
//   const BorderRadiusOnlyConverter();

//   /// This example shows how to use the [BorderRadiusOnlyConverter]:
//   BorderRadius? example() {
//     final json = const RadiusConverter().toJson(const Radius.circular(10));
//     final radius = const BorderRadiusOnlyConverter().fromJson(json);
//     AppLogger.print("BORDER-RADIUS fromJson -> $radius", [PackageFeatures.converters]);
//     final convertedJson = const BorderRadiusOnlyConverter().toJson(BorderRadius.circular(10));
//     AppLogger.print("BORDER-RADIUS toJson -> $convertedJson", [PackageFeatures.converters]);
//     return radius;
//   }

//   @override
//   BorderRadius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderRadius.only(
//       topLeft: const RadiusConverter().fromJson(json['topLeft']) ?? Radius.zero,
//       topRight: const RadiusConverter().fromJson(json['topRight']) ?? Radius.zero,
//       bottomLeft: const RadiusConverter().fromJson(json['bottomLeft']) ?? Radius.zero,
//       bottomRight: const RadiusConverter().fromJson(json['bottomRight']) ?? Radius.zero,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BorderRadius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.topLeft != Radius.zero) {
//       json['topLeft'] = const RadiusConverter().toJson(instance.topLeft);
//     }
//     if (instance.topRight != Radius.zero) {
//       json['topRight'] = const RadiusConverter().toJson(instance.topRight);
//     }
//     if (instance.bottomLeft != Radius.zero) {
//       json['bottomLeft'] = const RadiusConverter().toJson(instance.bottomLeft);
//     }
//     if (instance.bottomRight != Radius.zero) {
//       json['bottomRight'] = const RadiusConverter().toJson(instance.bottomRight);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
