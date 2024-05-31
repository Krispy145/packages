// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/extensions/theme_color_string.dart";

part "radio_model.freezed.dart";
part "radio_model.g.dart";

@freezed
class RadioModel with _$RadioModel {
  const factory RadioModel({
    ThemeColorString? fillColor_themeColorString,
    ThemeColorString? overlayColor_themeColorString,
    double? splashRadius_double,
  }) = _RadioModel;

  const RadioModel._();

  factory RadioModel.fromJson(Map<String, dynamic> json) => _$RadioModelFromJson(json);

  // static RadioModel defaultRadioModel() {
  //   return const RadioModel(
  //     fillColor: "primary",
  //     overlayColor: "surface",
  //     splashRadius: 24.0,
  //   );
  // }

  RadioThemeData asRadioThemeData({String? styleTypeName}) {
    return RadioThemeData(
      fillColor: WidgetStateProperty.all(
        fillColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      splashRadius: splashRadius_double,
    );
  }
}
