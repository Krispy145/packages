// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:utilities/logger/logger.dart';

// enum NavigationDestinationLabelType {
//   alwaysShow,
//   alwaysHide,
//   onlyShowSelected,
// }

// class NavigationDestinationLabelConverter implements JsonConverter<NavigationDestinationLabelBehavior?, String?> {
//   const NavigationDestinationLabelConverter();

//   /// This example shows how to use the [NavigationDestinationLabelConverter]:
//   NavigationDestinationLabelBehavior? example(
//     NavigationDestinationLabelType type,
//   ) {
//     final json = const NavigationDestinationLabelConverter().toJson(_typeToNavigationDestinationLabel(type));
//     final response = jsonDecode(json!) as Map<String, dynamic>;
//     final alignment = const NavigationDestinationLabelConverter().fromJson(response['alignment'] as String?);
//     AppLogger.print(
//       "ALIGNMENT fromJson -> $alignment",
//       [ThemePackageLoggers.converters],
//     );
//     final convertedJson = const NavigationDestinationLabelConverter().toJson(NavigationDestinationLabelBehavior.alwaysShow);
//     AppLogger.print(
//       "ALIGNMENT toJson -> $convertedJson",
//       [ThemePackageLoggers.converters],
//     );
//     return alignment;
//   }

//   NavigationDestinationLabelBehavior _typeToNavigationDestinationLabel(
//     NavigationDestinationLabelType type,
//   ) {
//     switch (type) {
//       case NavigationDestinationLabelType.alwaysShow:
//         return NavigationDestinationLabelBehavior.alwaysShow;
//       case NavigationDestinationLabelType.alwaysHide:
//         return NavigationDestinationLabelBehavior.alwaysHide;
//       case NavigationDestinationLabelType.onlyShowSelected:
//         return NavigationDestinationLabelBehavior.onlyShowSelected;
//     }
//   }

//   @override
//   NavigationDestinationLabelBehavior? fromJson(String? type) {
//     if (type == null) {
//       return null;
//     }
//     switch (type) {
//       case 'alwaysShow':
//         return NavigationDestinationLabelBehavior.alwaysShow;
//       case 'alwaysHide':
//         return NavigationDestinationLabelBehavior.alwaysHide;
//       case 'onlyShowSelected':
//         return NavigationDestinationLabelBehavior.onlyShowSelected;
//       default:
//         return NavigationDestinationLabelBehavior.alwaysShow;
//     }
//   }

//   @override
//   String? toJson(NavigationDestinationLabelBehavior? instance) {
//     if (instance == null) {
//       return null;
//     }
//     switch (instance) {
//       case NavigationDestinationLabelBehavior.alwaysShow:
//         return 'alwaysShow';
//       case NavigationDestinationLabelBehavior.alwaysHide:
//         return 'alwaysHide';
//       case NavigationDestinationLabelBehavior.onlyShowSelected:
//         return 'onlyShowSelected';
//     }
//   }
// }
