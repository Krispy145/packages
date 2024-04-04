// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'border_side_model.freezed.dart';
part 'border_side_model.g.dart';

@freezed
class BorderSideModel with _$BorderSideModel {
  const factory BorderSideModel({
    final ThemeColorString? color_color,
    final double? width_double,
    final BorderStyle? style_enum_borderStyle,
    final double? strokeAlign_double,
  }) = _BorderSideModel;

  const BorderSideModel._();

  factory BorderSideModel.fromJson(Map<String, dynamic> json) => _$BorderSideModelFromJson(json);

  BorderSide asBorderSide({String? styleTypeName}) {
    return BorderSide(
      color: color_color?.toColor() ?? const Color(0xFF000000),
      width: width_double ?? 1.0,
      style: style_enum_borderStyle ?? BorderStyle.solid,
      strokeAlign: strokeAlign_double ?? BorderSide.strokeAlignInside,
    );
  }
}
