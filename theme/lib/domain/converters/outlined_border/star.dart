// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class StarBorderConverter implements JsonConverter<StarBorder?, Map<String, dynamic>?> {
//   const StarBorderConverter();

//   /// This example shows how to use the [StarBorderConverter]:
//   StarBorder? example() {
//     final json = const StarBorderConverter().toJson(const StarBorder(side: BorderSide.none));
//     final border = const StarBorderConverter().fromJson(json);
//     AppLogger.print("STAR-BORDER fromJson -> $border", [PackageFeatures.converters]);
//     AppLogger.print("STAR-BORDER toJson -> $json", [PackageFeatures.converters]);
//     return border;
//   }

//   @override
//   StarBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return StarBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//       points: json['points'] as double? ?? 5,
//       innerRadiusRatio: json['innerRadiusRatio'] as double? ?? 0.4,
//       pointRounding: json['pointRounding'] as double? ?? 0,
//       valleyRounding: json['valleyRounding'] as double? ?? 0,
//       rotation: json['rotation'] as double? ?? 0,
//       squash: json['squash'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(StarBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.side != BorderSide.none) {
//       json['side'] = const BorderSideConverter().toJson(instance.side);
//     }
//     if (instance.points != 5) {
//       json['points'] = instance.points;
//     }
//     if (instance.innerRadiusRatio != 0.4) {
//       json['innerRadiusRatio'] = instance.innerRadiusRatio;
//     }
//     if (instance.pointRounding != 0) {
//       json['pointRounding'] = instance.pointRounding;
//     }
//     if (instance.valleyRounding != 0) {
//       json['valleyRounding'] = instance.valleyRounding;
//     }
//     if (instance.rotation != 0) {
//       json['rotation'] = instance.rotation;
//     }
//     if (instance.squash != 0) {
//       json['squash'] = instance.squash;
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
