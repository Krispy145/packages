// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class CircularRadiusConverter
//     implements JsonConverter<Radius?, Map<String, dynamic>?> {
//   const CircularRadiusConverter();

//   /// This example shows how to use the [CircularRadiusConverter]:
//   Radius? example() {
//     final json =
//         const CircularRadiusConverter().toJson(const Radius.circular(10));
//     final radius = const CircularRadiusConverter().fromJson(json);
//     AppLogger.print("RADIUS fromJson -> $radius", [PackageFeatures.converters]);
//     AppLogger.print("RADIUS toJson -> $json", [PackageFeatures.converters]);
//     return radius;
//   }

//   @override
//   Radius? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return Radius.circular((json['radius'] as double? ?? 0) / 2);
//   }

//   @override
//   Map<String, dynamic>? toJson(Radius? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'radius': instance.x + instance.y,
//     };
//   }
// }
