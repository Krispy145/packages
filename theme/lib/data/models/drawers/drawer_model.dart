// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'drawer_model.freezed.dart';
part 'drawer_model.g.dart';

@freezed
class DrawerModel with _$DrawerModel {
  const factory DrawerModel({
    ThemeColorString? backgroundColor_color,
    ThemeColorString? scrimColor_color,
    double? elevation_double,
    ThemeColorString? shadowColor_color,
    ThemeColorString? surfaceTintColor_color,
    // @OutlinedBorderConverter()
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    // @OutlinedBorderConverter()
    @Default(OutlinedBorderModel()) OutlinedBorderModel? endShape_outlinedBorder,
    double? width_double,
  }) = _DrawerModel;

  const DrawerModel._();

  factory DrawerModel.fromJson(Map<String, dynamic> json) => _$DrawerModelFromJson(json);

  DrawerThemeData asDrawerThemeData({String? styleTypeName}) {
    return DrawerThemeData(
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      scrimColor: scrimColor_color?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_color?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_color?.toColor(styleType: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      endShape: endShape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      width: width_double,
    );
  }
}
