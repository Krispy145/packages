// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// class NavigationRailLabelConverter implements JsonConverter<NavigationRailLabelType?, String?> {
//   const NavigationRailLabelConverter();

//   /// This example shows how to use the [NavigationRailLabelConverter]:
//   NavigationRailLabelType? example(NavigationRailLabelType type) {
//     final json = const NavigationRailLabelConverter().toJson(_typeToNavigationRailLabel(type));
//     final response = jsonDecode(json!) as Map<String, dynamic>;
//     final alignment = const NavigationRailLabelConverter().fromJson(response['alignment'] as String?);
//     AppLogger.print(
//       "ALIGNMENT fromJson -> $alignment",
//       [PackageFeatures.converters],
//     );
//     final convertedJson = const NavigationRailLabelConverter().toJson(NavigationRailLabelType.selected);
//     AppLogger.print(
//       "ALIGNMENT toJson -> $convertedJson",
//       [PackageFeatures.converters],
//     );
//     return alignment;
//   }

//   NavigationRailLabelType _typeToNavigationRailLabel(
//     NavigationRailLabelType type,
//   ) {
//     switch (type) {
//       case NavigationRailLabelType.none:
//         return NavigationRailLabelType.none;
//       case NavigationRailLabelType.selected:
//         return NavigationRailLabelType.selected;
//       case NavigationRailLabelType.all:
//         return NavigationRailLabelType.all;
//     }
//   }

//   @override
//   NavigationRailLabelType? fromJson(String? type) {
//     if (type == null) {
//       return null;
//     }
//     switch (type) {
//       case 'none':
//         return NavigationRailLabelType.none;
//       case 'selected':
//         return NavigationRailLabelType.selected;
//       case 'all':
//         return NavigationRailLabelType.all;
//       default:
//         return NavigationRailLabelType.none;
//     }
//   }

//   @override
//   String? toJson(NavigationRailLabelType? instance) {
//     if (instance == null) {
//       return null;
//     }
//     switch (instance) {
//       case NavigationRailLabelType.none:
//         return 'none';
//       case NavigationRailLabelType.selected:
//         return 'selected';
//       case NavigationRailLabelType.all:
//         return 'all';
//       default:
//         return 'none';
//     }
//   }
// }
