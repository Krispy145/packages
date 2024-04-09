// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class EdgeInsetsSymmetricConverter
//     implements JsonConverter<EdgeInsets?, Map<String, dynamic>?> {
//   const EdgeInsetsSymmetricConverter();

//   /// This example shows how to use the [EdgeInsetsSymmetricConverter]:
//   EdgeInsets? example() {
//     final json = const EdgeInsetsSymmetricConverter()
//         .toJson(const EdgeInsets.symmetric(vertical: 10, horizontal: 20));
//     final edgeInsets = const EdgeInsetsSymmetricConverter().fromJson(json);
//     AppLogger.print(
//         "EDGE-INSETS fromJson -> $edgeInsets", [PackageFeatures.converters]);
//     AppLogger.print(
//         "EDGE-INSETS toJson -> $json", [PackageFeatures.converters]);
//     return edgeInsets;
//   }

//   @override
//   EdgeInsets? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return EdgeInsets.symmetric(
//       vertical: json['vertical'] as double? ?? 0,
//       horizontal: json['horizontal'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(EdgeInsets? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'vertical': instance.vertical / 2,
//       'horizontal': instance.horizontal / 2,
//     };
//   }
// }
