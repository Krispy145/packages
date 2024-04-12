// import 'dart:math' as math;

// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/alignments/alignment.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:theme/domain/converters/modes/tile.dart';

// class SweepGradientConverter implements JsonConverter<SweepGradient?, dynamic> {
//   const SweepGradientConverter();

//   /// This example shows how to use the [SweepGradientConverter]:
//   SweepGradient? example() {
//     final json = const SweepGradientConverter().toJson(
//       const SweepGradient(
//         colors: [Colors.red, Colors.blue],
//         stops: [0.0, 1.0],
//       ),
//     );
//     final sweepGradient = const SweepGradientConverter().fromJson(json);
//     debugPrint("SWEEP-GRADIENT fromJson -> $sweepGradient");
//     debugPrint("SWEEP-GRADIENT toJson -> $json");
//     return sweepGradient;
//   }

//   @override
//   SweepGradient? fromJson(dynamic json) {
//     json = json as Map<String, dynamic>?;
//     if (json == null) {
//       return null;
//     }
//     return SweepGradient(
//       center: const AlignmentConverter().fromJson(json['center'] as String?) ?? Alignment.center,
//       startAngle: json['startAngle'] as double? ?? 0.0,
//       endAngle: json['endAngle'] as double? ?? math.pi * 2,
//       colors: (json['colors'] as List<dynamic>).map((dynamic e) => const ColorConverter().fromJson(e) ?? Colors.transparent).toList(),
//       stops: (json['stops'] as List<dynamic>?)?.map((dynamic e) => e as double).toList(),
//       tileMode: const TileModeConverter().fromJson(json['tileMode'] as String?) ?? TileMode.clamp,
//     );
//   }

//   @override
//   dynamic toJson(SweepGradient? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'center': const AlignmentConverter().toJson(instance.center.resolve(TextDirection.ltr)),
//       'startAngle': instance.startAngle,
//       'endAngle': instance.endAngle,
//       'colors': instance.colors.map((e) => const ColorConverter().toJson(e)).toList(),
//       'stops': instance.stops,
//       'tileMode': const TileModeConverter().toJson(instance.tileMode),
//     };
//   }
// }
