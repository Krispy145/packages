// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/box_border_model.dart';
import 'package:theme/data/models/box_decorations/box_shadow_model.dart';
import 'package:theme/data/models/gradient_model.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'box_decoration_model.freezed.dart';
part 'box_decoration_model.g.dart';

@freezed
class BoxDecorationModel with _$BoxDecorationModel {
  const factory BoxDecorationModel({
    ThemeColorString? color_themeColorString,
    // @BoxBorderConverter() Map<BoxBorderType, BoxBorder?>? border,
    BoxBorderModel? border_boxBorder,
    // @BorderRadiusConverter() BorderRadius? borderRadius,
    BorderRadiusModel? borderRadius_borderRadius,
    // @BoxShadowsConverter()
    @Default([]) List<BoxShadowModel>? boxShadows_list_boxShadow,
    // @GradientConverter()
    @Default(GradientModel()) GradientModel? gradient_gradient,
    BlendMode? backgroundBlendMode_enum_blendMode,
    @Default(BoxShape.rectangle) BoxShape? shape_enum_boxShape,
  }) = _BoxDecorationModel;

  const BoxDecorationModel._();

  factory BoxDecorationModel.fromJson(Map<String, dynamic> json) => _$BoxDecorationModelFromJson(json);

  BoxDecoration asBoxDecoration({String? styleTypeName}) {
    return BoxDecoration(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      border: border_boxBorder?.asBoxBorder(styleTypeName: styleTypeName),
      borderRadius: borderRadius_borderRadius?.asBorderRadius(styleTypeName: styleTypeName),
      boxShadow: boxShadows_list_boxShadow?.map((e) => e.asBoxShadow(styleTypeName: styleTypeName)).toList() ?? [],
      gradient: gradient_gradient?.asGradient(styleTypeName: styleTypeName),
      backgroundBlendMode: backgroundBlendMode_enum_blendMode,
      shape: shape_enum_boxShape ?? BoxShape.rectangle,
    );
  }
}
