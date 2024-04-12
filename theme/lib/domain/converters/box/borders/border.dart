// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/box/borders/all.dart';
// import 'package:theme/domain/converters/box/borders/border_side.dart';
// import 'package:theme/domain/converters/box/borders/directional.dart';
// import 'package:theme/domain/converters/box/borders/symmetric.dart';
// import 'package:utilities/logger/logger.dart';

// enum BoxBorderType {
//   borderless,
//   all,
//   symmetric,
//   directional,
//   borderSide,
// }

// class BoxBorderConverter implements JsonConverter<Map<BoxBorderType, BoxBorder?>?, Map<String, dynamic>?> {
//   const BoxBorderConverter();

//   /// This example shows how to use the [BoxBorderConverter]:
//   BoxBorder? example(BoxBorderType type) {
//     final json = const BoxBorderConverter().toJson({
//       type: const BoxBorderAllConverter().example(),
//     });
//     final border = const BoxBorderConverter().fromJson(json);
//     AppLogger.print("BOX-BORDER fromJson -> $border", [PackageFeatures.converters]);
//     AppLogger.print("BOX-BORDER toJson -> $json", [PackageFeatures.converters]);
//     return border?.values.first;
//   }

//   @override
//   Map<BoxBorderType, BoxBorder?>? fromJson(Map<String, dynamic>? json) {
//     if (json == null) {
//       return null;
//     }
//     final Map<BoxBorderType, BoxBorder?> map = {};
//     if (json.containsKey('all')) {
//       map[BoxBorderType.all] = const BoxBorderAllConverter().fromJson(json['all']);
//     }
//     if (json.containsKey('symmetric')) {
//       map[BoxBorderType.symmetric] = const BoxBorderSymmetricConverter().fromJson(json['symmetric']);
//     }
//     if (json.containsKey('directional')) {
//       map[BoxBorderType.directional] = const BoxBorderDirectionalConverter().fromJson(json['directional']);
//     }
//     if (json.containsKey('borderSide')) {
//       map[BoxBorderType.borderSide] = const BoxBorderSideConverter().fromJson(json['borderSide']);
//     }
//     return map.isNotEmpty ? map : null;
//   }

//   @override
//   Map<String, dynamic>? toJson(Map<BoxBorderType, BoxBorder?>? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final Map<String, dynamic> json = {};
//     // if (instance.containsKey(BoxBorderType.all)) {
//     //   json['all'] = const BoxBorderAllConverter().toJson(instance[BoxBorderType.all]);
//     // }
//     // if (instance.containsKey(BoxBorderType.symmetric)) {
//     //   json['symmetric'] = const BoxBorderSymmetricConverter().toJson(instance[BoxBorderType.symmetric] as Border);
//     // }
//     // if (instance.containsKey(BoxBorderType.directional)) {
//     json['directional'] = const BoxBorderDirectionalConverter().toJson(instance[BoxBorderType.directional]);
//     // }
//     // if (instance.containsKey(BoxBorderType.borderSide)) {
//     //   json['borderSide'] = const BoxBorderSideConverter().toJson(instance[BoxBorderType.borderSide]);
//     // }
//     return json;
//   }
// }
