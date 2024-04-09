// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class EdgeInsetsOnlyConverter
//     implements JsonConverter<EdgeInsets?, Map<String, dynamic>?> {
//   const EdgeInsetsOnlyConverter();

//   /// This example shows how to use the [EdgeInsetsOnlyConverter]:
//   EdgeInsets? example() {
//     final json =
//         const EdgeInsetsOnlyConverter().toJson(const EdgeInsets.only(top: 10));
//     final edgeInsets = const EdgeInsetsOnlyConverter().fromJson(json);
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
//     return EdgeInsets.only(
//       top: json['top'] as double? ?? 0,
//       bottom: json['bottom'] as double? ?? 0,
//       left: json['left'] as double? ?? 0,
//       right: json['right'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(EdgeInsets? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.top != 0) json['top'] = instance.top;
//     if (instance.bottom != 0) json['bottom'] = instance.bottom;
//     if (instance.left != 0) json['left'] = instance.left;
//     if (instance.right != 0) json['right'] = instance.right;
//     return json;
//   }
// }
