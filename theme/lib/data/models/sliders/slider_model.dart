// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    double? trackHeight_double,
    ThemeColorString? activeTrackColor_themeColorString,
    ThemeColorString? inactiveTrackColor_themeColorString,
    ThemeColorString? secondaryActiveTrackColor_themeColorString,
    ThemeColorString? disabledActiveTrackColor_themeColorString,
    ThemeColorString? disabledInactiveTrackColor_themeColorString,
    ThemeColorString? disabledSecondaryActiveTrackColor_themeColorString,
    ThemeColorString? activeTickMarkColor_themeColorString,
    ThemeColorString? inactiveTickMarkColor_themeColorString,
    ThemeColorString? disabledActiveTickMarkColor_themeColorString,
    ThemeColorString? disabledInactiveTickMarkColor_themeColorString,
    ThemeColorString? thumbColor_themeColorString,
    ThemeColorString? overlappingShapeStrokeColor_themeColorString,
    ThemeColorString? disabledThumbColor_themeColorString,
    ThemeColorString? overlayColor_themeColorString,
    ThemeColorString? valueIndicatorColor_themeColorString,
    //TODO: implement Converter for these
    // SliderComponentShape? overlayShape,
    // SliderTickMarkShape? tickMarkShape,
    // SliderComponentShape? thumbShape,
    // SliderTrackShape? trackShape,
    // SliderComponentShape? valueIndicatorShape,
    // RangeSliderTickMarkShape? rangeTickMarkShape,
    // RangeSliderThumbShape? rangeThumbShape,
    // RangeSliderTrackShape? rangeTrackShape,
    // RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
    ShowValueIndicator? showValueIndicator_enum_showValueIndicator,
    SliderInteraction? allowedInteraction_enum_sliderInteraction,
    TextStyleString? valueIndicatorTextStyle_textStyleString,
    double? minThumbSeparation_double,
  }) = _SliderModel;

  const SliderModel._();

  factory SliderModel.fromJson(Map<String, dynamic> json) => _$SliderModelFromJson(json);

  // static SliderModel defaultSliderModel() {
  //   return const SliderModel(
  //     trackHeight: 2.0,
  //     activeTrackColor: "primary",
  //     inactiveTrackColor: "onSurface",
  //     secondaryActiveTrackColor: "primary",
  //     disabledActiveTrackColor: "onSurface",
  //     disabledInactiveTrackColor: "onSurface",
  //     disabledSecondaryActiveTrackColor: "onSurface",
  //     activeTickMarkColor: "onSurface",
  //     inactiveTickMarkColor: "onSurface",
  //     disabledActiveTickMarkColor: "onSurface",
  //     disabledInactiveTickMarkColor: "onSurface",
  //     thumbColor: "primary",
  //     overlappingShapeStrokeColor: "primary",
  //     disabledThumbColor: "onSurface",
  //     overlayColor: "primary",
  //     valueIndicatorColor: "primary",
  //     valueIndicatorTextStyle: "body-medium",
  //     minThumbSeparation: 8.0,
  //   );
  // }

  SliderThemeData asSliderThemeData({String? styleTypeName}) {
    return SliderThemeData(
      trackHeight: trackHeight_double,
      activeTrackColor: activeTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      inactiveTrackColor: inactiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      secondaryActiveTrackColor: secondaryActiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledActiveTrackColor: disabledActiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledInactiveTrackColor: disabledInactiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledSecondaryActiveTrackColor: disabledSecondaryActiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      activeTickMarkColor: activeTickMarkColor_themeColorString?.toColor(styleType: styleTypeName),
      inactiveTickMarkColor: inactiveTickMarkColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledActiveTickMarkColor: disabledActiveTickMarkColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledInactiveTickMarkColor: disabledInactiveTickMarkColor_themeColorString?.toColor(styleType: styleTypeName),
      thumbColor: thumbColor_themeColorString?.toColor(styleType: styleTypeName),
      overlappingShapeStrokeColor: overlappingShapeStrokeColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledThumbColor: disabledThumbColor_themeColorString?.toColor(styleType: styleTypeName),
      overlayColor: overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      valueIndicatorColor: valueIndicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      valueIndicatorTextStyle: valueIndicatorTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      minThumbSeparation: minThumbSeparation_double,
    );
  }
}
