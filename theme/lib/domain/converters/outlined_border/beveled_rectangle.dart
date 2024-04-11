// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/border_radius/border_radius.dart';
// import 'package:theme/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class BeveledRectangleBorderConverter implements JsonConverter<BeveledRectangleBorder?, Map<String, dynamic>?> {
//   const BeveledRectangleBorderConverter();

//   /// This example shows how to use the [BeveledRectangleBorderConverter]:
//   BeveledRectangleBorder? example() {
//     final json = const BeveledRectangleBorderConverter().toJson(const BeveledRectangleBorder(
//       side: BorderSide.none,
//       borderRadius: BorderRadius.zero,
//     ));
//     final beveledRectangleBorder = const BeveledRectangleBorderConverter().fromJson(json);
//     AppLogger.print("BEVELED-RECTANGLE-BORDER fromJson -> $beveledRectangleBorder", [ThemeLoggers.converters]);
//     AppLogger.print("BEVELED-RECTANGLE-BORDER toJson -> $json", [ThemeLoggers.converters]);
//     return beveledRectangleBorder;
//   }

//   @override
//   BeveledRectangleBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BeveledRectangleBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//       borderRadius: const BorderRadiusConverter().fromJson(json['borderRadius']) ?? BorderRadius.zero,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BeveledRectangleBorder? instance) {
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
