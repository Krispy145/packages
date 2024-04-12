import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'bottom_appbar_model.freezed.dart';
part 'bottom_appbar_model.g.dart';

@freezed
class BottomAppbarModel with _$BottomAppbarModel {
  const factory BottomAppbarModel({
    ThemeColorString? color_themeColorString,
    double? elevation_double,
    double? height_double,
    ThemeColorString? surfaceTintColor_themeColorString,
    ThemeColorString? shadowColor_themeColorString,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
  }) = _BottomAppbarModel;

  const BottomAppbarModel._();

  factory BottomAppbarModel.fromJson(Map<String, dynamic> json) => _$BottomAppbarModelFromJson(json);

  // static BottomAppbarModel defaultBottomAppbarModel() {
  //   return const BottomAppbarModel(
  //     color: "surface",
  //     elevation: 8.0,
  //     height: 56.0,
  //     surfaceTintColor: "surface",
  //     shadowColor: "outline",
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //   );
  // }

  BottomAppBarTheme asBottomAppBarTheme({String? styleTypeName}) {
    return BottomAppBarTheme(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      height: height_double,
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
    );
  }
}
