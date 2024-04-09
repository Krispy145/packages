// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'appbar_model.freezed.dart';
part 'appbar_model.g.dart';

@freezed
class AppbarModel with _$AppbarModel {
  const factory AppbarModel({
    ThemeColorString? color_themeColorString,
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? foregroundColor_themeColorString,
    double? elevation_double,
    double? scrolledUnderElevation_double,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    ShapeBorderModel? shape_shapeBorder,
    bool? centerTitle_bool,
    double? titleSpacing_double,
    double? toolbarHeight_double,
    TextStyleString? toolbarTextStyle_textStyleString,
    TextStyleString? titleTextStyle_textStyleString,
  }) = _AppbarModel;

  const AppbarModel._();

  factory AppbarModel.fromJson(Map<String, dynamic> json) => _$AppbarModelFromJson(json);
  // static AppbarModel defaultAppbarModel() {
  //   return const AppbarModel(
  //     backgroundColor: "primary",
  //     foregroundColor: "primaryContainer",
  //     elevation: 4,
  //     scrolledUnderElevation: 0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     shape: RoundedRectangleBorder(),
  //     centerTitle: true,
  //     titleSpacing: NavigationToolbar.kMiddleSpacing,
  //     toolbarHeight: 80, //  NavigationToolbar.kMiddleSpacing,
  //     toolbarTextStyle: "label-medium",
  //     titleTextStyle: "title-medium",
  //   );
  // }

  AppBarTheme asAppBarTheme({String? styleTypeName}) {
    return AppBarTheme(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      foregroundColor: foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      centerTitle: centerTitle_bool,
      titleSpacing: titleSpacing_double,
      toolbarHeight: toolbarHeight_double,
      toolbarTextStyle: toolbarTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      titleTextStyle: titleTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle.copyWith(
            color: foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
          ),
    );
  }
}
