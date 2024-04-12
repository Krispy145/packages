// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/border_side/border_side.dart';
// import 'package:theme/domain/converters/box/borders/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class BoxBorderDirectionalConverter implements JsonConverter<BoxBorder?, Map<String, dynamic>?> {
//   const BoxBorderDirectionalConverter();

//   /// This example shows how to use the [BoxBorderDirectionalConverter]:
//   BoxBorder? example() {
//     final json = """
//     {
//       "top": ${const BoxBorderSideConverter().example()},
//       "right": ${const BoxBorderSideConverter().example()},
//       "bottom": ${const BoxBorderSideConverter().example()},
//       "left": ${const BoxBorderSideConverter().example()},
//     }
//     """;
//     final response = jsonDecode(json) as Map<String, dynamic>;
//     final border = const BoxBorderDirectionalConverter().fromJson(response);
//     AppLogger.print("BOX-BORDER fromJson -> $border", [ThemeLoggers.converters]);
//     final convertedJson = const BoxBorderDirectionalConverter().toJson(border);
//     AppLogger.print("BOX-BORDER toJson -> $convertedJson", [ThemeLoggers.converters]);
//     return border;
//   }

//   @override
//   BoxBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return BorderDirectional(
//       top: const BorderSideConverter().fromJson(json['top']) ?? BorderSide.none,
//       start: const BorderSideConverter().fromJson(json['start']) ?? BorderSide.none,
//       bottom: const BorderSideConverter().fromJson(json['bottom']) ?? BorderSide.none,
//       end: const BorderSideConverter().fromJson(json['end']) ?? BorderSide.none,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(BoxBorder? instance) {
//     if (instance == null || instance is! BorderDirectional) {
//       return null;
//     }
//     final json = <String, dynamic>{};
//     if (instance.top != BorderSide.none) {
//       json['top'] = const BorderSideConverter().toJson(instance.top);
//     }
//     if (instance.start != BorderSide.none) {
//       json['start'] = const BorderSideConverter().toJson(instance.start);
//     }
//     if (instance.bottom != BorderSide.none) {
//       json['bottom'] = const BorderSideConverter().toJson(instance.bottom);
//     }
//     if (instance.end != BorderSide.none) {
//       json['end'] = const BorderSideConverter().toJson(instance.end);
//     }
//     return json;
//   }
// }
