// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/converters/border_radius/border_radius.dart';
// import 'package:theme/domain/converters/box/borders/border.dart';
// import 'package:theme/domain/converters/box/shadow.dart';
// import 'package:theme/domain/converters/box/shape.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:theme/domain/converters/colors/gradients/gradient.dart';
// import 'package:theme/domain/converters/modes/blend.dart';
// import 'package:utilities/logger/logger.dart';

// /// This converter is used for converting [BoxDecoration] to/from JSON:
// class BoxDecorationConverter implements JsonConverter<Map<BoxBorderType, BoxDecoration?>?, Map<String, dynamic>?> {
//   const BoxDecorationConverter();

//   /// This example shows how to use the [BoxDecorationConverter]:
//   BoxDecoration? example(BoxBorderType type) {
//     final json = const BoxDecorationConverter().toJson({
//       type: const BoxDecoration(
//         // color: Colors.red,

//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         // boxShadow: [BoxShadow(color: Colors.black, blurRadius: 2)],
//         gradient: LinearGradient(
//           colors: [Colors.red, Colors.blue],
//           stops: [0.0, 1.0],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         // backgroundBlendMode: BlendMode.color,
//       ),
//     });
//     final border = const BoxDecorationConverter().fromJson(json);
//     AppLogger.print("BOX-DECORATION fromJson -> $border", [PackageFeatures.converters]);
//     AppLogger.print("BOX-DECORATION toJson -> $json", [PackageFeatures.converters]);
//     return border?.values.first;
//   }

//   @override
//   Map<BoxBorderType, BoxDecoration?>? fromJson(Map<String, dynamic>? json) {
//     if (json == null) {
//       return null;
//     }
//     return {
//       BoxBorderType.values.firstWhere((e) => e.name == json.keys.first): BoxDecoration(
//         color: const ColorConverter().fromJson(json.values.first['color']),
//         border: const BoxBorderConverter().fromJson(json.values.first['border'] as Map<String, dynamic>?)?.values.first,
//         borderRadius: const BorderRadiusConverter().fromJson(json.values.first['borderRadius']),
//         boxShadow: _boxShadowFromJson(json.values.first),
//         gradient: const GradientConverter().fromJson(json.values.first['gradient']),
//         backgroundBlendMode: const BlendModeConverter().fromJson(json.values.first['backgroundBlendMode'] as String?),
//         shape: const BoxShapeConverter().fromJson(json.values.first['shape'] as String?) ?? BoxShape.rectangle,
//       ),
//     };
//   }

//   List<BoxShadow>? _boxShadowFromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     if (json['boxShadow'] != null) {
//       if (json['boxShadow'] is List) {
//         return (json['boxShadow'] as List<dynamic>).map((e) => const BoxShadowConverter().fromJson(e) ?? const BoxShadow()).toList();
//       } else {
//         return [const BoxShadowConverter().fromJson(json['boxShadow']) ?? const BoxShadow()];
//       }
//     }
//     if (json['boxShadows'] != null) {
//       return (json['boxShadows'] as List<dynamic>).map((e) => const BoxShadowConverter().fromJson(e) ?? const BoxShadow()).toList();
//     }
//     return null;
//   }

//   @override
//   Map<String, dynamic>? toJson(Map<BoxBorderType, BoxDecoration?>? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final jsonValue = <String, dynamic>{};

//     if (instance.values.first?.color != null) {
//       jsonValue['color'] = const ColorConverter().toJson(instance.values.first?.color);
//     }
//     if (instance.values.first?.border != null) {
//       jsonValue['border'] = const BoxBorderConverter().toJson({instance.keys.first: instance.values.first?.border});
//     }
//     if (instance.values.first?.borderRadius != null) {
//       jsonValue['borderRadius'] = const BorderRadiusConverter().toJson(instance.values.first?.borderRadius?.resolve(TextDirection.ltr));
//     }
//     if (instance.values.first?.boxShadow != null) {
//       jsonValue['boxShadow'] = instance.values.first?.boxShadow?.map((e) => const BoxShadowConverter().toJson(e)).toList();
//     }
//     if (instance.values.first?.gradient != null) {
//       jsonValue['gradient'] = const GradientConverter().toJson(instance.values.first?.gradient);
//     }
//     if (instance.values.first?.backgroundBlendMode != null) {
//       jsonValue['backgroundBlendMode'] = const BlendModeConverter().toJson(instance.values.first?.backgroundBlendMode);
//     }
//     if (instance.values.first?.shape != null) {
//       jsonValue['shape'] = const BoxShapeConverter().toJson(instance.values.first?.shape);
//     }

//     final json = <String, dynamic>{};
//     json[instance.keys.first.name] = jsonValue;
//     return json;
//   }
// }
