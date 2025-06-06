// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/alignments/alignment.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:theme/domain/converters/modes/tile.dart';

// class RadialGradientConverter implements JsonConverter<RadialGradient?, dynamic> {
//   const RadialGradientConverter();

//   /// This example shows how to use the [RadialGradientConverter]:
//   RadialGradient? example() {
//     final json = const RadialGradientConverter().toJson(
//       const RadialGradient(
//         colors: [Colors.red, Colors.blue],
//         stops: [0.0, 1.0],
//         focal: Alignment.center,
//       ),
//     );
//     final radialGradient = const RadialGradientConverter().fromJson(json);
//     debugPrint("RADIAL-GRADIENT fromJson -> $radialGradient");
//     debugPrint("RADIAL-GRADIENT toJson -> $json");
//     return radialGradient;
//   }

//   @override
//   RadialGradient? fromJson(dynamic json) {
//     json = json as Map<String, dynamic>?;
//     if (json == null) {
//       return null;
//     }
//     return RadialGradient(
//       center: const AlignmentConverter().fromJson(json['center'] as String?) ?? Alignment.center,
//       radius: json['radius'] as double? ?? 0.5,
//       colors: (json['colors'] as List<dynamic>).map((dynamic e) => const ColorConverter().fromJson(e) ?? Colors.transparent).toList(),
//       stops: (json['stops'] as List<dynamic>?)?.map((dynamic e) => e as double).toList(),
//       tileMode: const TileModeConverter().fromJson(json['tileMode'] as String?) ?? TileMode.clamp,
//       focal: const AlignmentConverter().fromJson(json['focal'] as String?),
//       focalRadius: json['focalRadius'] as double? ?? 0.0,
//     );
//   }

//   @override
//   dynamic toJson(RadialGradient? instance) {
//     if (instance == null) {
//       return null;
//     }
//     return {
//       'center': const AlignmentConverter().toJson(instance.center.resolve(TextDirection.ltr)),
//       'radius': instance.radius,
//       'colors': instance.colors.map((e) => const ColorConverter().toJson(e)).toList(),
//       'stops': instance.stops,
//       'tileMode': const TileModeConverter().toJson(instance.tileMode),
//       'focal': const AlignmentConverter().toJson(instance.focal?.resolve(TextDirection.ltr)),
//       'focalRadius': instance.focalRadius,
//     };
//   }
// }
