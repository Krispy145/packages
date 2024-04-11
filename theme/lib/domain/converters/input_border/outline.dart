// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/border_radius/border_radius.dart';
// import 'package:theme/domain/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class OutlineInputBorderConverter implements JsonConverter<OutlineInputBorder?, Map<String, dynamic>?> {
//   const OutlineInputBorderConverter();

//   /// This example shows how to use the [OutlineInputBorderConverter]:
//   OutlineInputBorder? example() {
//     final json = const OutlineInputBorderConverter().toJson(const OutlineInputBorder(
//       borderRadius: BorderRadius.all(Radius.circular(10)),
//       borderSide: BorderSide(color: Colors.green, width: 4.0),
//       gapPadding: 4.0,
//     ));
//     final outlineInputBorder = const OutlineInputBorderConverter().fromJson(json);
//     AppLogger.print("OUTLINE-INPUT-BORDER fromJson -> $outlineInputBorder", [ThemePackageLoggers.converters]);
//     AppLogger.print("OUTLINE-INPUT-BORDER toJson -> $json", [ThemePackageLoggers.converters]);
//     return outlineInputBorder;
//   }

//   @override
//   OutlineInputBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return OutlineInputBorder(
//       borderRadius: const BorderRadiusConverter().fromJson(json['borderRadius']) ?? BorderRadius.zero,
//       borderSide: const BorderSideConverter().fromJson(json['borderSide']) ?? BorderSide.none,
//       gapPadding: json['gapPadding'] as double? ?? 4.0,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(OutlineInputBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'borderRadius': const BorderRadiusConverter().toJson(instance.borderRadius),
//       'borderSide': const BorderSideConverter().toJson(instance.borderSide),
//       'gapPadding': instance.gapPadding,
//     };
//   }
// }
