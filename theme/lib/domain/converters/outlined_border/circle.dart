// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class CircleBorderConverter implements JsonConverter<CircleBorder?, Map<String, dynamic>?> {
//   const CircleBorderConverter();

//   /// This example shows how to use the [CircleBorderConverter]:
//   CircleBorder? example() {
//     final json = const CircleBorderConverter().toJson(CircleBorder(side: BorderSide.none, eccentricity: 10));
//     final circleBorder = const CircleBorderConverter().fromJson(json);
//     AppLogger.print("CIRCLE-BORDER fromJson -> $circleBorder", [PackageFeatures.converters]);
//     AppLogger.print("CIRCLE-BORDER toJson -> $json", [PackageFeatures.converters]);
//     return circleBorder;
//   }

//   @override
//   CircleBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return CircleBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//       eccentricity: json['eccentricity'] as double? ?? 0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(CircleBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.side != BorderSide.none) {
//       json['side'] = const BorderSideConverter().toJson(instance.side);
//     }
//     if (instance.eccentricity != 0) {
//       json['eccentricity'] = instance.eccentricity;
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
