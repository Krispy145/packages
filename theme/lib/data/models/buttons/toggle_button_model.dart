import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_radius/border_radius.dart';
import 'package:theme/domain/converters/box/constraints.dart';
import 'package:theme/extensions/string.dart';

part 'toggle_button_model.freezed.dart';
part 'toggle_button_model.g.dart';

@freezed
class ToggleButtonModel with _$ToggleButtonModel {
  const ToggleButtonModel._();
  const factory ToggleButtonModel({
    String? textStyle,
    @BoxConstraintsConverter() BoxConstraints? constraints,
    String? color,
    String? selectedColor,
    String? disabledColor,
    String? fillColor,
    String? focusColor,
    String? highlightColor,
    String? hoverColor,
    String? splashColor,
    String? borderColor,
    String? selectedBorderColor,
    String? disabledBorderColor,
    @BorderRadiusConverter() BorderRadius? borderRadius,
    double? borderWidth,
  }) = _ToggleButtonModel;

  ToggleButtonsThemeData asToggleButtonThemeData({String? styleTypeName}) {
    return ToggleButtonsThemeData(
      textStyle: textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      constraints: constraints,
      color: color?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor?.toColor(styleType: styleTypeName),
      fillColor: fillColor?.toColor(styleType: styleTypeName),
      focusColor: focusColor?.toColor(styleType: styleTypeName),
      highlightColor: highlightColor?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor?.toColor(styleType: styleTypeName),
      splashColor: splashColor?.toColor(styleType: styleTypeName),
      borderColor: borderColor?.toColor(styleType: styleTypeName),
      selectedBorderColor: selectedBorderColor?.toColor(styleType: styleTypeName),
      disabledBorderColor: disabledBorderColor?.toColor(styleType: styleTypeName),
      borderRadius: borderRadius,
      borderWidth: borderWidth,
    );
  }

  static ToggleButtonModel defaultToggleButtonStyle() {
    return const ToggleButtonModel(
      textStyle: "label-small",
      constraints: BoxConstraints(
        minWidth: 88.0,
        minHeight: 36.0,
        maxWidth: 120,
        maxHeight: 48,
      ),
      color: "primary",
      selectedColor: "primary",
      disabledColor: "disabled",
      fillColor: "#2196F3",
      focusColor: "#2196F3",
      highlightColor: "#2196F3",
      hoverColor: "#2196F3",
      splashColor: "#2196F3",
      borderColor: "#2196F3",
      selectedBorderColor: "#2196F3",
      disabledBorderColor: "#BDBDBD",
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(0.0),
        bottomRight: Radius.circular(0.0),
        topLeft: Radius.circular(0.0),
        topRight: Radius.circular(0.0),
      ),
      borderWidth: 2.0,
    );
  }

  factory ToggleButtonModel.fromJson(Map<String, dynamic> json) => _$ToggleButtonModelFromJson(json);
}
