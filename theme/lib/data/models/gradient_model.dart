// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'gradient_model.freezed.dart';
part 'gradient_model.g.dart';

enum GradientType { linear, radial, sweep }

@freezed
class GradientModel with _$GradientModel {
  const factory GradientModel({
    final GradientType? type_enum_gradientType,
    final List<ThemeColorString>? colors_list_color,
  }) = _GradientModel;

  const GradientModel._();

  factory GradientModel.fromJson(Map<String, dynamic> json) => _$GradientModelFromJson(json);

  Gradient asGradient({String? styleTypeName}) {
    final colorsList = (colors_list_color ?? []).map((e) => e.toColor()).whereType<Color>().toList();
    switch (type_enum_gradientType) {
      case GradientType.linear:
        return LinearGradient(
          colors: colorsList,
        );
      case GradientType.radial:
        return RadialGradient(
          colors: colorsList,
        );
      case GradientType.sweep:
        return SweepGradient(
          colors: colorsList,
        );
      default:
        return LinearGradient(
          colors: colorsList,
        );
    }
  }
}
