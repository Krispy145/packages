// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/extensions/theme_color_string.dart";

part "switch_model.freezed.dart";
part "switch_model.g.dart";

@freezed
class SwitchModel with _$SwitchModel {
  const factory SwitchModel({
    ThemeColorString? thumbColor_themeColorString,
    ThemeColorString? trackColor_themeColorString,
    ThemeColorString? trackOutlineColor_themeColorString,
    double? trackOutlineWidth_double,
    ThemeColorString? overlayColor_themeColorString,
    double? splashRadius_double,
  }) = _SwitchModel;

  const SwitchModel._();

  factory SwitchModel.fromJson(Map<String, dynamic> json) =>
      _$SwitchModelFromJson(json);

  // static SwitchModel defaultSwitchModel() {
  //   return const SwitchModel(
  //     thumbColor: "primary",
  //     trackColor: "primary",
  //     trackOutlineColor: "outline",
  //     trackOutlineWidth: 1.0,
  //     overlayColor: "surface",
  //     splashRadius: 24.0,
  //   );
  // }

  SwitchThemeData asSwitchThemeData({String? styleTypeName}) {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
          thumbColor_themeColorString?.toColor(styleType: styleTypeName),),
      trackColor: MaterialStateProperty.all(
          trackColor_themeColorString?.toColor(styleType: styleTypeName),),
      trackOutlineColor: MaterialStateProperty.all(
          trackOutlineColor_themeColorString?.toColor(
              styleType: styleTypeName,),),
      trackOutlineWidth: MaterialStateProperty.all(trackOutlineWidth_double),
      overlayColor: MaterialStateProperty.all(
          overlayColor_themeColorString?.toColor(styleType: styleTypeName),),
      splashRadius: splashRadius_double,
    );
  }
}
