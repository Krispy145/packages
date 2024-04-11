// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/border_radius/border_radius.dart';
// import 'package:theme/domain/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class RoundedRectangleBorderConverter implements JsonConverter<RoundedRectangleBorder?, Map<String, dynamic>?> {
//   const RoundedRectangleBorderConverter();

//   /// This example shows how to use the [RoundedRectangleBorderConverter]:
//   RoundedRectangleBorder? example() {
//     final json = const RoundedRectangleBorderConverter().toJson(const RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.zero));
//     final border = const RoundedRectangleBorderConverter().fromJson(json);
//     AppLogger.print("ROUNDED-RECTANGLE-BORDER fromJson -> $border", [ThemePackageLoggers.converters]);
//     AppLogger.print("ROUNDED-RECTANGLE-BORDER toJson -> $json", [ThemePackageLoggers.converters]);
//     return border;
//   }

//   @override
//   RoundedRectangleBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return RoundedRectangleBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//       borderRadius: const BorderRadiusConverter().fromJson(json['borderRadius']) ?? BorderRadius.zero,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(RoundedRectangleBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.side != BorderSide.none) {
//       json['side'] = const BorderSideConverter().toJson(instance.side);
//     }
//     if (instance.borderRadius != BorderRadius.zero) {
//       json['borderRadius'] = const BorderRadiusConverter().toJson(instance.borderRadius.resolve(TextDirection.ltr));
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
