// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'switch_model.freezed.dart';
part 'switch_model.g.dart';

@freezed
class SwitchModel with _$SwitchModel {
  const factory SwitchModel({
    ThemeColorString? thumbColor_color,
    ThemeColorString? trackColor_color,
    ThemeColorString? trackOutlineColor_color,
    double? trackOutlineWidth_double,
    ThemeColorString? overlayColor_color,
    double? splashRadius_double,
  }) = _SwitchModel;

  const SwitchModel._();

  factory SwitchModel.fromJson(Map<String, dynamic> json) => _$SwitchModelFromJson(json);

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
      thumbColor: MaterialStateProperty.all(thumbColor_color?.toColor(styleType: styleTypeName)),
      trackColor: MaterialStateProperty.all(trackColor_color?.toColor(styleType: styleTypeName)),
      trackOutlineColor: MaterialStateProperty.all(trackOutlineColor_color?.toColor(styleType: styleTypeName)),
      trackOutlineWidth: MaterialStateProperty.all(trackOutlineWidth_double),
      overlayColor: MaterialStateProperty.all(overlayColor_color?.toColor(styleType: styleTypeName)),
      splashRadius: splashRadius_double,
    );
  }
}
