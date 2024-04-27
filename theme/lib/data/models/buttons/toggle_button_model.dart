// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "toggle_button_model.freezed.dart";
part "toggle_button_model.g.dart";

@freezed
class ToggleButtonModel with _$ToggleButtonModel {
  const factory ToggleButtonModel({
    TextStyleString? textStyle_textStyleString,
    // @BoxConstraintsConverter()
    @Default(BoxConstraintsModel())
    BoxConstraintsModel? constraints_boxConstraints,
    ThemeColorString? color_themeColorString,
    ThemeColorString? selectedColor_themeColorString,
    ThemeColorString? disabledColor_themeColorString,
    ThemeColorString? fillColor_themeColorString,
    ThemeColorString? focusColor_themeColorString,
    ThemeColorString? highlightColor_themeColorString,
    ThemeColorString? hoverColor_themeColorString,
    ThemeColorString? splashColor_themeColorString,
    ThemeColorString? borderColor_themeColorString,
    ThemeColorString? selectedBorderColor_themeColorString,
    ThemeColorString? disabledBorderColor_themeColorString,
    @Default(BorderRadiusModel()) BorderRadiusModel? borderRadius_borderRadius,
    double? borderWidth_double,
  }) = _ToggleButtonModel;
  const ToggleButtonModel._();

  ToggleButtonsThemeData asToggleButtonThemeData({String? styleTypeName}) {
    return ToggleButtonsThemeData(
      textStyle: textStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      constraints: constraints_boxConstraints?.asBoxConstraints(
          styleTypeName: styleTypeName,),
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      selectedColor:
          selectedColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledColor:
          disabledColor_themeColorString?.toColor(styleType: styleTypeName),
      fillColor: fillColor_themeColorString?.toColor(styleType: styleTypeName),
      focusColor:
          focusColor_themeColorString?.toColor(styleType: styleTypeName),
      highlightColor:
          highlightColor_themeColorString?.toColor(styleType: styleTypeName),
      hoverColor:
          hoverColor_themeColorString?.toColor(styleType: styleTypeName),
      splashColor:
          splashColor_themeColorString?.toColor(styleType: styleTypeName),
      borderColor:
          borderColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedBorderColor: selectedBorderColor_themeColorString?.toColor(
          styleType: styleTypeName,),
      disabledBorderColor: disabledBorderColor_themeColorString?.toColor(
          styleType: styleTypeName,),
      borderRadius: borderRadius_borderRadius?.asBorderRadius(
          styleTypeName: styleTypeName,),
      borderWidth: borderWidth_double,
    );
  }

  // static ToggleButtonModel defaultToggleButtonStyle() {
  //   return const ToggleButtonModel(
  //     textStyle: "label-small",
  //     constraints: BoxConstraints(
  //       minWidth: 88.0,
  //       minHeight: 36.0,
  //       maxWidth: 120,
  //       maxHeight: 48,
  //     ),
  //     color: "primary",
  //     selectedColor: "primary",
  //     disabledColor: "disabled",
  //     fillColor: "#2196F3",
  //     focusColor: "#2196F3",
  //     highlightColor: "#2196F3",
  //     hoverColor: "#2196F3",
  //     splashColor: "#2196F3",
  //     borderColor: "#2196F3",
  //     selectedBorderColor: "#2196F3",
  //     disabledBorderColor: "#BDBDBD",
  //     borderRadius: BorderRadius.only(
  //       bottomLeft: Radius.circular(0.0),
  //       bottomRight: Radius.circular(0.0),
  //       topLeft: Radius.circular(0.0),
  //       topRight: Radius.circular(0.0),
  //     ),
  //     borderWidth: 2.0,
  //   );
  // }

  factory ToggleButtonModel.fromJson(Map<String, dynamic> json) =>
      _$ToggleButtonModelFromJson(json);
}
