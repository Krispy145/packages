// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/alignments/alignment.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:theme/domain/converters/modes/tile.dart';
// import 'package:utilities/logger/logger.dart';

// class LinearGradientConverter implements JsonConverter<LinearGradient?, dynamic> {
//   const LinearGradientConverter();

//   /// This example shows how to use the [LinearGradientConverter]:
//   LinearGradient? example() {
//     final json = const LinearGradientConverter().toJson(const LinearGradient(colors: [Colors.red, Colors.blue]));
//     final linearGradient = const LinearGradientConverter().fromJson(json);
//     AppLogger.print("LINEAR-GRADIENT fromJson -> $linearGradient", [PackageFeatures.converters]);
//     AppLogger.print("LINEAR-GRADIENT toJson -> $json", [PackageFeatures.converters]);
//     return linearGradient;
//   }

//   @override
//   LinearGradient? fromJson(dynamic json) {
//     json = json as Map<String, dynamic>?;
//     if (json == null) {
//       return null;
//     }
//     return LinearGradient(
//       begin: const AlignmentConverter().fromJson(json['begin'] as String?) ?? Alignment.centerLeft,
//       end: const AlignmentConverter().fromJson(json['end'] as String?) ?? Alignment.centerRight,
//       colors: (json['colors'] as List<dynamic>).map((dynamic e) => const ColorConverter().fromJson(e) ?? Colors.transparent).toList(),
//       stops: (json['stops'] as List<dynamic>?)?.map((dynamic e) => e as double).toList(),
//       tileMode: const TileModeConverter().fromJson(json['tileMode'] as String?) ?? TileMode.clamp,
//     );
//   }

//   @override
//   dynamic toJson(LinearGradient? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'begin': const AlignmentConverter().toJson(instance.begin.resolve(TextDirection.ltr)),
//       'end': const AlignmentConverter().toJson(instance.end.resolve(TextDirection.ltr)),
//       'colors': instance.colors.map((e) => const ColorConverter().toJson(e)).toList(),
//       'stops': instance.stops,
//       'tileMode': const TileModeConverter().toJson(instance.tileMode),
//     };
//   }
// }
