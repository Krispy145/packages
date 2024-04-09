// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/offset_model.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'box_shadow_model.freezed.dart';
part 'box_shadow_model.g.dart';

@freezed
class BoxShadowModel with _$BoxShadowModel {
  const factory BoxShadowModel({
    // final ThemeColorString? color_color,
    // final double? width_double,
    // final BorderStyle? style_enum_borderStyle,
    // final double? strokeAlign_double,
    ThemeColorString? color_color,
    @Default(OffsetModel()) OffsetModel? offset_offset,
    double? blurRadius_double,
    double? spreadRadius_double,
    // @Default(BlurStyle.normal) BlurStyle? blurStyle_enum_blurStyle,
  }) = _BoxShadowModel;

  const BoxShadowModel._();

  factory BoxShadowModel.fromJson(Map<String, dynamic> json) => _$BoxShadowModelFromJson(json);

  BoxShadow asBoxShadow({String? styleTypeName}) {
    return BoxShadow(
      color: color_color?.toColor() ?? const Color(0xFF000000),
      offset: offset_offset?.asOffset(styleTypeName: styleTypeName) ?? const Offset(0, 0),
      blurRadius: blurRadius_double ?? 0.0,
      spreadRadius: spreadRadius_double ?? 0.0,
    );
  }
}
