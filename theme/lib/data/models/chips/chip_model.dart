// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'chip_model.freezed.dart';
part 'chip_model.g.dart';

@freezed
class ChipModel with _$ChipModel {
  const factory ChipModel({
    ThemeColorString? color_themeColorString,
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? deleteIconColor_themeColorString,
    ThemeColorString? disabledColor_themeColorString,
    ThemeColorString? selectedColor_themeColorString,
    ThemeColorString? secondarySelectedColor_themeColorString,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    ThemeColorString? selectedShadowColor_themeColorString,
    bool? showCheckmark_bool,
    ThemeColorString? checkmarkColor_themeColorString,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? labelPadding_edgeInsets,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
    BorderSideModel? side_borderSide,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    TextStyleString? labelStyle_textStyleString,
    TextStyleString? secondaryLabelStyle_textStyleString,
    double? elevation_double,
    double? pressElevation_double,
  }) = _ChipModel;

  const ChipModel._();

  factory ChipModel.fromJson(Map<String, dynamic> json) => _$ChipModelFromJson(json);

  // static ChipModel defaultChipModel() {
  //   return const ChipModel(
  //     color: "surface",
  //     backgroundColor: "surface",
  //     deleteIconColor: "onSurface",
  //     disabledColor: "onSurface",
  //     selectedColor: "primary",
  //     secondarySelectedColor: "primary",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     selectedShadowColor: "outline",
  //     showCheckmark: true,
  //     checkmarkColor: "onSurface",
  //     labelPadding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     labelStyle: "label-medium",
  //     secondaryLabelStyle: "label-small",
  //     elevation: 0.0,
  //     pressElevation: 0.0,
  //   );
  // }

  ChipThemeData asChipThemeData({String? styleTypeName}) {
    return ChipThemeData(
      color: color_themeColorString != null ? MaterialStateProperty.all(color_themeColorString?.toColor(styleType: styleTypeName)) : null,
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      deleteIconColor: deleteIconColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor_themeColorString?.toColor(styleType: styleTypeName),
      secondarySelectedColor: secondarySelectedColor_themeColorString?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedShadowColor: selectedShadowColor_themeColorString?.toColor(styleType: styleTypeName),
      showCheckmark: showCheckmark_bool,
      checkmarkColor: checkmarkColor_themeColorString?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      secondaryLabelStyle: secondaryLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation_double,
      pressElevation: pressElevation_double,
    );
  }
}
