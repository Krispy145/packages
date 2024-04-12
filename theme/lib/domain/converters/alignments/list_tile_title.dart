// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class ListTileTitleAlignmentConverter implements JsonConverter<ListTileTitleAlignment?, String?> {
//   const ListTileTitleAlignmentConverter();

//   /// This example shows how to use the [ListTileTitleAlignmentConverter]:
//   ListTileTitleAlignment? example(ListTileTitleAlignment type) {
//     final json = const ListTileTitleAlignmentConverter().toJson(type);
//     final response = jsonDecode(json!) as Map<String, String>;
//     final alignment = const ListTileTitleAlignmentConverter().fromJson(response['alignment']);
//     AppLogger.print(
//       "LIST-TILE-ALIGNMENT fromJson -> $alignment",
//       [PackageFeatures.converters],
//     );
//     final convertedJson = const ListTileTitleAlignmentConverter().toJson(ListTileTitleAlignment.center);
//     AppLogger.print(
//       "LIST-TILE-ALIGNMENT toJson -> $convertedJson",
//       [PackageFeatures.converters],
//     );
//     return alignment;
//   }

//   @override
//   ListTileTitleAlignment? fromJson(String? type) {
//     if (type == null) {
//       return null;
//     }
//     switch (type) {
//       case 'threeLine':
//         return ListTileTitleAlignment.threeLine;
//       case 'titleHeight':
//         return ListTileTitleAlignment.titleHeight;
//       case 'top':
//         return ListTileTitleAlignment.top;
//       case 'center':
//         return ListTileTitleAlignment.center;
//       case 'bottom':
//         return ListTileTitleAlignment.bottom;
//       default:
//         return ListTileTitleAlignment.center;
//     }
//   }

//   @override
//   String? toJson(ListTileTitleAlignment? instance) {
//     if (instance == null) {
//       return null;
//     }
//     switch (instance) {
//       case ListTileTitleAlignment.threeLine:
//         return ListTileTitleAlignment.threeLine.name;
//       case ListTileTitleAlignment.titleHeight:
//         return ListTileTitleAlignment.titleHeight.name;
//       case ListTileTitleAlignment.top:
//         return ListTileTitleAlignment.top.name;
//       case ListTileTitleAlignment.center:
//         return ListTileTitleAlignment.center.name;
//       case ListTileTitleAlignment.bottom:
//         return ListTileTitleAlignment.bottom.name;
//     }
//   }
// }
