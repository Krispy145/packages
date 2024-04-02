import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_radius/border_radius.dart';
import 'package:theme/domain/converters/box/borders/border.dart';
import 'package:theme/domain/converters/box/shadows.dart';
import 'package:theme/domain/converters/box/shape.dart';
import 'package:theme/domain/converters/colors/gradients/gradient.dart';
import 'package:theme/domain/converters/modes/blend.dart';
import 'package:theme/extensions/string.dart';

part 'box_decoration_model.freezed.dart';
part 'box_decoration_model.g.dart';

@freezed
class BoxDecorationModel with _$BoxDecorationModel {
  const factory BoxDecorationModel({
    String? color,
    @BoxBorderConverter() Map<BoxBorderType, BoxBorder?>? border,
    @BorderRadiusConverter() BorderRadius? borderRadius,
    @BoxShadowsConverter() List<BoxShadow>? boxShadows,
    @GradientConverter() Gradient? gradient,
    @BlendModeConverter() BlendMode? backgroundBlendMode,
    @BoxShapeConverter() @Default(BoxShape.rectangle) BoxShape? shape,
  }) = _BoxDecorationModel;

  const BoxDecorationModel._();

  factory BoxDecorationModel.fromJson(Map<String, dynamic> json) => _$BoxDecorationModelFromJson(json);

  // static BoxDecorationModel defaultBoxDecorationModel() {
  //   return BoxDecorationModel(
  //     color: "background",
  //     border: {
  //       BoxBorderType.directional: const Border(
  //         top: BorderSide(
  //           color: Colors.transparent,
  //           width: 0.0,
  //         ),
  //         right: BorderSide(
  //           color: Colors.transparent,
  //           width: 0.0,
  //         ),
  //         bottom: BorderSide(
  //           color: Colors.transparent,
  //           width: 0.0,
  //         ),
  //         left: BorderSide(
  //           color: Colors.transparent,
  //           width: 0.0,
  //         ),
  //       ),
  //     },
  //     borderRadius: const BorderRadius.only(
  //       topLeft: Radius.circular(0.0),
  //       topRight: Radius.circular(0.0),
  //       bottomLeft: Radius.circular(0.0),
  //       bottomRight: Radius.circular(0.0),
  //     ),
  //     shape: BoxShape.rectangle,
  //     boxShadows: [
  //       BoxShadow(
  //         color: "outline".toColor() ?? Colors.transparent,
  //         blurRadius: 4,
  //         offset: const Offset(0, 2),
  //       ),
  //     ],
  //   );
  // }

  BoxDecoration asBoxDecoration({String? styleTypeName}) {
    return BoxDecoration(
      color: color?.toColor(styleType: styleTypeName),
      border: border?.values.first,
      borderRadius: borderRadius,
      boxShadow: boxShadows,
      gradient: gradient,
      backgroundBlendMode: backgroundBlendMode,
      shape: shape ?? BoxShape.rectangle,
    );
  }
}
