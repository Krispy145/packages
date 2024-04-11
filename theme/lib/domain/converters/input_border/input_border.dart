// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/input_border/outline.dart';
// import 'package:theme/domain/converters/input_border/underline.dart';
// import 'package:utilities/logger/logger.dart';

// class InputBorderConverter implements JsonConverter<InputBorder?, Map<String, dynamic>?> {
//   const InputBorderConverter();

//   /// This example shows how to use the [InputBorderConverter]:
//   InputBorder? example() {
//     final json = const InputBorderConverter().toJson(const OutlineInputBorderConverter().example());
//     final border = const InputBorderConverter().fromJson(json);
//     AppLogger.print("INPUT-BORDER fromJson -> $border", [ThemePackageLoggers.converters]);
//     AppLogger.print("INPUT-BORDER toJson -> $json", [ThemePackageLoggers.converters]);
//     return border;
//   }

//   @override
//   InputBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     switch (json['type'] as String) {
//       case 'border-none':
//         return InputBorder.none;
//       case 'border-outline':
//         return const OutlineInputBorderConverter().fromJson(json['value']);
//       case 'border-underline':
//         return const UnderlineInputBorderConverter().fromJson(json['value']);
//       default:
//         return null;
//     }
//   }

//   @override
//   Map<String, dynamic>? toJson(InputBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     if (instance is OutlineInputBorder) {
//       return {
//         'type': 'border-outline',
//         'value': const OutlineInputBorderConverter().toJson(instance),
//       };
//     } else if (instance is UnderlineInputBorder) {
//       return {
//         'type': 'border-underline',
//         'value': const UnderlineInputBorderConverter().toJson(instance),
//       };
//     } else {
//       return null;
//     }
//   }
// }
