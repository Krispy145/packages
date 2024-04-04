import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'radio_model.freezed.dart';
part 'radio_model.g.dart';

@freezed
class RadioModel with _$RadioModel {
  const factory RadioModel({
    ThemeColorString? fillColor_color,
    ThemeColorString? overlayColor_color,
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
      fillColor: MaterialStateProperty.all(fillColor_color?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor_color?.toColor(styleType: styleTypeName)),
      splashRadius: splashRadius_double,
    );
  }
}
