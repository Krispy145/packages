// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "popup_menu_model.freezed.dart";
part "popup_menu_model.g.dart";

@freezed
class PopupMenuModel with _$PopupMenuModel {
  const factory PopupMenuModel({
    ThemeColorString? color_themeColorString,
    ShapeBorderModel? shape_shapeBorder,
    double? elevation_double,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    TextStyleString? textStyle_textStyleString,
    TextStyleString? labelTextStyle_textStyleString,
    bool? enableFeedback_bool,
    @Default(PopupMenuPosition.under) PopupMenuPosition position,
    ThemeColorString? iconColor_themeColorString,
    double? iconSize_double,
  }) = _PopupMenuModel;

  const PopupMenuModel._();

  factory PopupMenuModel.fromJson(Map<String, dynamic> json) =>
      _$PopupMenuModelFromJson(json);
  // static PopupMenuModel defaultPopupMenuModel() {
  //   return const PopupMenuModel(
  //     color: "surface",
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     elevation: 8.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     textStyle: "body-medium",
  //     labelTextStyle: "body-medium",
  //     enableFeedback: true,
  //     position: PopupMenuPosition.under,
  //     iconColor: "onSurface",
  //     iconSize: 24.0,
  //   );
  // }

  PopupMenuThemeData asPopupMenuThemeData({String? styleTypeName}) {
    return PopupMenuThemeData(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      elevation: elevation_double,
      shadowColor:
          shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor:
          surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      textStyle: textStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      enableFeedback: enableFeedback_bool,
      position: position,
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      iconSize: iconSize_double,
    );
  }
}
