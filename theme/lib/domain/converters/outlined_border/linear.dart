// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/converters/border_side/border_side.dart';
// import 'package:utilities/logger/logger.dart';

// class LinearBorderConverter implements JsonConverter<LinearBorder?, Map<String, dynamic>?> {
//   const LinearBorderConverter();

//   /// This example shows how to use the [LinearBorderConverter]:
//   LinearBorder? example() {
//     final json = const LinearBorderConverter().toJson(const LinearBorder(side: BorderSide.none));
//     final border = const LinearBorderConverter().fromJson(json);
//     AppLogger.print("LINEAR-BORDER fromJson -> $border", [ThemePackageLoggers.converters]);
//     AppLogger.print("LINEAR-BORDER toJson -> $json", [ThemePackageLoggers.converters]);
//     return border;
//   }

//   @override
//   LinearBorder? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return LinearBorder(
//       side: const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
//       start: json['start'] != null
//           ? LinearBorderEdge(
//               size: json['start']['size'] as double? ?? 1,
//               alignment: json['start']['alignment'] as double? ?? 0,
//             )
//           : null,
//       end: json['end'] != null
//           ? LinearBorderEdge(
//               size: json['end']['size'] as double? ?? 1,
//               alignment: json['end']['alignment'] as double? ?? 0,
//             )
//           : null,
//       top: json['top'] != null
//           ? LinearBorderEdge(
//               size: json['top']['size'] as double? ?? 1,
//               alignment: json['top']['alignment'] as double? ?? 0,
//             )
//           : null,
//       bottom: json['bottom'] != null
//           ? LinearBorderEdge(
//               size: json['bottom']['size'] as double? ?? 1,
//               alignment: json['bottom']['alignment'] as double? ?? 0,
//             )
//           : null,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(LinearBorder? instance) {
//     if (instance == null) {
//       return null;
//     }
//     Map<String, dynamic> json = {};
//     if (instance.side != BorderSide.none) {
//       json['side'] = const BorderSideConverter().toJson(instance.side);
//     }
//     if (instance.start != null) {
//       json['start'] = {
//         'size': instance.start?.size,
//         'alignment': instance.start?.alignment,
//       };
//     }
//     if (instance.end != null) {
//       json['end'] = {
//         'size': instance.end?.size,
//         'alignment': instance.end?.alignment,
//       };
//     }
//     if (instance.top != null) {
//       json['top'] = {
//         'size': instance.top?.size,
//         'alignment': instance.top?.alignment,
//       };
//     }
//     if (instance.bottom != null) {
//       json['bottom'] = {
//         'size': instance.bottom?.size,
//         'alignment': instance.bottom?.alignment,
//       };
//     }
//     return json.isNotEmpty ? json : null;
//   }
// }
