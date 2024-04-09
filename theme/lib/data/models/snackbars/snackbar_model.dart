// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'snackbar_model.freezed.dart';
part 'snackbar_model.g.dart';

@freezed
class SnackbarModel with _$SnackbarModel {
  const factory SnackbarModel({
    ThemeColorString? backgroundColor_color,
    ThemeColorString? actionTextColor_color,
    ThemeColorString? disabledActionTextColor_color,
    TextStyleString? contentTextStyle_textStyle,
    double? elevation_double,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    @Default(SnackBarBehavior.floating) SnackBarBehavior behavior_enum_snackBarBehavior,
    double? width_double,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? insetPadding_edgeInsets,
    bool? showCloseIcon_bool,
    ThemeColorString? closeIconColor_color,
    double? actionOverflowThreshold_double,
    ThemeColorString? actionBackgroundColor_color,
    ThemeColorString? disabledActionBackgroundColor_color,
  }) = _SnackbarModel;

  const SnackbarModel._();

  factory SnackbarModel.fromJson(Map<String, dynamic> json) => _$SnackbarModelFromJson(json);

  // static SnackbarModel defaultSnackbarModel() {
  //   return const SnackbarModel(
  //     backgroundColor: "surface",
  //     actionTextColor: "primary",
  //     disabledActionTextColor: "disabled",
  //     contentTextStyle: "label-medium",
  //     elevation: 6.0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     behavior: SnackBarBehavior.floating,
  //     width: 0.0,
  //     insetPadding: EdgeInsets.only(
  //       left: 16.0,
  //       top: 8.0,
  //       right: 16.0,
  //       bottom: 8.0,
  //     ),
  //     showCloseIcon: true,
  //     closeIconColor: "onSurface",
  //     actionOverflowThreshold: 0.2,
  //     actionBackgroundColor: "primary",
  //     disabledActionBackgroundColor: "outline",
  //   );
  // }

  SnackBarThemeData asSnackBarThemeData({String? styleTypeName}) {
    return SnackBarThemeData(
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      actionTextColor: actionTextColor_color?.toColor(styleType: styleTypeName),
      disabledActionTextColor: disabledActionTextColor_color?.toColor(styleType: styleTypeName),
      contentTextStyle: contentTextStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation_double,
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      behavior: behavior_enum_snackBarBehavior,
      width: width_double,
      insetPadding: insetPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      showCloseIcon: showCloseIcon_bool,
      actionOverflowThreshold: actionOverflowThreshold_double,
      actionBackgroundColor: actionBackgroundColor_color?.toColor(styleType: styleTypeName),
      disabledActionBackgroundColor: disabledActionBackgroundColor_color?.toColor(styleType: styleTypeName),
    );
  }
}
