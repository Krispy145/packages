// import 'package:flutter/material.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:theme/domain/converters/box/shadow.dart';
// import 'package:utilities/logger/logger.dart';

// class BoxShadowsConverter implements JsonConverter<List<BoxShadow>?, List<Map<String, dynamic>>?> {
//   const BoxShadowsConverter();

//   /// This example shows how to use the [BoxShadowsConverter]:
//   List<BoxShadow>? example() {
//     final json = const BoxShadowsConverter().toJson(
//       const [
//         BoxShadow(
//           color: Colors.transparent,
//           blurRadius: 1,
//           spreadRadius: 1,
//           offset: Offset(1, 1),
//         ),
//         BoxShadow(
//           color: Colors.transparent,
//           blurRadius: 1,
//           spreadRadius: 1,
//           offset: Offset(1, 1),
//         ),
//       ],
//     );
//     final boxShadow = const BoxShadowsConverter().fromJson(json);
//     AppLogger.print("BOX-SHADOWS fromJson -> $boxShadow", [ThemePackageLoggers.converters]);
//     AppLogger.print("BOX-SHADOWS toJson -> $json", [ThemePackageLoggers.converters]);
//     return boxShadow;
//   }

//   @override
//   List<BoxShadow>? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     final boxShadows = <BoxShadow>[];
//     for (final item in json as List) {
//       final boxShadow = const BoxShadowConverter().fromJson(item);
//       if (boxShadow != null) {
//         boxShadows.add(boxShadow);
//       }
//     }
//     return boxShadows;
//   }

//   @override
//   List<Map<String, dynamic>>? toJson(List<BoxShadow>? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final json = <Map<String, dynamic>>[];
//     for (final item in instance) {
//       final shadow = const BoxShadowConverter().toJson(item);
//       if (shadow != null) {
//         json.add(shadow);
//       }
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
