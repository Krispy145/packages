// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class BoxBorderSymmetricConverter implements JsonConverter<Border?, Map<String, dynamic>?> {
//   const BoxBorderSymmetricConverter();

//   /// This example shows how to use the [BoxBorderSymmetricConverter]:
//   Border? example() {
//     final json = const BoxBorderSymmetricConverter().toJson(const Border.symmetric(
//       vertical: BorderSide(color: Colors.transparent, width: 1.0),
//       horizontal: BorderSide(color: Colors.transparent, width: 1.0),
//     ));
//     final border = const BoxBorderSymmetricConverter().fromJson(json);
//     AppLogger.print("BOX-BORDER fromJson -> $border", [ThemePackageLoggers.converters]);
//     AppLogger.print("BOX-BORDER toJson -> $json", [ThemePackageLoggers.converters]);
//     return border;
//   }

//   @override
//   Border? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return Border.symmetric(
//       vertical: const BorderSideConverter().fromJson(json['vertical']) ?? BorderSide.none,
//       horizontal: const BorderSideConverter().fromJson(json['horizontal']) ?? BorderSide.none,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(Border? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.left != BorderSide.none) {
//       json['vertical'] = const BorderSideConverter().toJson(instance.left);
//     }
//     if (instance.top != BorderSide.none) {
//       json['horizontal'] = const BorderSideConverter().toJson(instance.top);
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
