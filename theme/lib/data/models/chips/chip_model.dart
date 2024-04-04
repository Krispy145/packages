// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'chip_model.freezed.dart';
part 'chip_model.g.dart';

@freezed
class ChipModel with _$ChipModel {
  const factory ChipModel({
    ThemeColorString? color,
    ThemeColorString? backgroundColor_color,
    ThemeColorString? deleteIconColor_color,
    ThemeColorString? disabledColor_color,
    ThemeColorString? selectedColor_color,
    ThemeColorString? secondarySelectedColor_color,
    ThemeColorString? shadowColor_color,
    ThemeColorString? surfaceTintColor_color,
    ThemeColorString? selectedShadowColor_color,
    bool? showCheckmark_bool,
    ThemeColorString? checkmarkColor_color,
    @EdgeInsetsConverter() EdgeInsets? labelPadding_edgeInsets,
    @EdgeInsetsConverter() EdgeInsets? padding_edgeInsets,
    BorderSideModel? side_borderSide,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    TextStyleString? labelStyle_textStyle,
    TextStyleString? secondaryLabelStyle_textStyle,
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
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      deleteIconColor: deleteIconColor_color?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor_color?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor_color?.toColor(styleType: styleTypeName),
      secondarySelectedColor: secondarySelectedColor_color?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_color?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_color?.toColor(styleType: styleTypeName),
      selectedShadowColor: selectedShadowColor_color?.toColor(styleType: styleTypeName),
      showCheckmark: showCheckmark_bool,
      checkmarkColor: checkmarkColor_color?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding_edgeInsets,
      padding: padding_edgeInsets,
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      labelStyle: labelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      secondaryLabelStyle: secondaryLabelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation_double,
      pressElevation: pressElevation_double,
    );
  }
}
