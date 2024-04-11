// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/edge_insets/all.dart';
// import 'package:theme/domain/converters/edge_insets/only.dart';
// import 'package:theme/domain/converters/edge_insets/symmetric.dart';
// import 'package:utilities/logger/logger.dart';

// enum EdgeInsetsType {
//   all,
//   only,
//   symmetric,
// }

// class EdgeInsetsConverter implements JsonConverter<EdgeInsets?, Map<String, dynamic>?> {
//   const EdgeInsetsConverter();

//   /// This example shows how to use the [EdgeInsetsConverter]:
//   EdgeInsets? example(EdgeInsetsType type) {
//     final json = _typeToEdgeInsets(type);
//     final edgeInsets = const EdgeInsetsConverter().fromJson(json);
//     AppLogger.print("EDGE-INSETS fromJson -> $edgeInsets", [ThemePackageLoggers.converters]);
//     AppLogger.print("EDGE-INSETS toJson -> $json", [ThemePackageLoggers.converters]);
//     return edgeInsets;
//   }

//   dynamic _typeToEdgeInsets(
//     EdgeInsetsType type,
//   ) {
//     switch (type) {
//       case EdgeInsetsType.all:
//         return const EdgeInsetsAllConverter().toJson(const EdgeInsets.all(18));
//       case EdgeInsetsType.only:
//         return const EdgeInsetsOnlyConverter().toJson(const EdgeInsets.only(
//           top: 10.0,
//           right: 10.0,
//           bottom: 10.0,
//           left: 10.0,
//         ));
//       case EdgeInsetsType.symmetric:
//         return const EdgeInsetsSymmetricConverter().toJson(const EdgeInsets.symmetric(
//           vertical: 10.0,
//           horizontal: 10.0,
//         ));
//       default:
//         return EdgeInsets.zero;
//     }
//   }

//   @override
//   EdgeInsets? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     switch (json['type'] as String) {
//       case 'all':
//         return const EdgeInsetsAllConverter().fromJson(json['value']);
//       case 'only':
//         return const EdgeInsetsOnlyConverter().fromJson(json['value']);
//       case 'symmetric':
//         return const EdgeInsetsSymmetricConverter().fromJson(json['value']);
//       default:
//         return EdgeInsets.zero;
//     }
//   }

//   @override
//   Map<String, dynamic>? toJson(EdgeInsets? instance) {
//     if (instance == null) {
//       return null;
//     }
//     // if (instance.top == instance.bottom && instance.top == instance.right && instance.top == instance.left && instance.top == instance.right && instance.top == instance.left) {
//     //   return {
//     //     'type': 'all',
//     //     'value': const EdgeInsetsAllConverter().toJson(instance),
//     //   };
//     // } else if (instance.top == instance.bottom && instance.left == instance.right) {
//     //   return {
//     //     'type': 'symmetric',
//     //     'value': const EdgeInsetsSymmetricConverter().toJson(instance),
//     //   };
//     // } else {
//     return {
//       'type': 'only',
//       'value': const EdgeInsetsOnlyConverter().toJson(instance),
//     };
//     // }
//   }
// }
