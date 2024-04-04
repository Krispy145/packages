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
    ThemeColorString? activeTrackColor_color,
    ThemeColorString? inactiveTrackColor_color,
    ThemeColorString? secondaryActiveTrackColor_color,
    ThemeColorString? disabledActiveTrackColor_color,
    ThemeColorString? disabledInactiveTrackColor_color,
    ThemeColorString? disabledSecondaryActiveTrackColor_color,
    ThemeColorString? activeTickMarkColor_color,
    ThemeColorString? inactiveTickMarkColor_color,
    ThemeColorString? disabledActiveTickMarkColor_color,
    ThemeColorString? disabledInactiveTickMarkColor_color,
    ThemeColorString? thumbColor_color,
    ThemeColorString? overlappingShapeStrokeColor_color,
    ThemeColorString? disabledThumbColor_color,
    ThemeColorString? overlayColor_color,
    ThemeColorString? valueIndicatorColor_color,
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
    TextStyleString? valueIndicatorTextStyle_textStyle,
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
      activeTrackColor: activeTrackColor_color?.toColor(styleType: styleTypeName),
      inactiveTrackColor: inactiveTrackColor_color?.toColor(styleType: styleTypeName),
      secondaryActiveTrackColor: secondaryActiveTrackColor_color?.toColor(styleType: styleTypeName),
      disabledActiveTrackColor: disabledActiveTrackColor_color?.toColor(styleType: styleTypeName),
      disabledInactiveTrackColor: disabledInactiveTrackColor_color?.toColor(styleType: styleTypeName),
      disabledSecondaryActiveTrackColor: disabledSecondaryActiveTrackColor_color?.toColor(styleType: styleTypeName),
      activeTickMarkColor: activeTickMarkColor_color?.toColor(styleType: styleTypeName),
      inactiveTickMarkColor: inactiveTickMarkColor_color?.toColor(styleType: styleTypeName),
      disabledActiveTickMarkColor: disabledActiveTickMarkColor_color?.toColor(styleType: styleTypeName),
      disabledInactiveTickMarkColor: disabledInactiveTickMarkColor_color?.toColor(styleType: styleTypeName),
      thumbColor: thumbColor_color?.toColor(styleType: styleTypeName),
      overlappingShapeStrokeColor: overlappingShapeStrokeColor_color?.toColor(styleType: styleTypeName),
      disabledThumbColor: disabledThumbColor_color?.toColor(styleType: styleTypeName),
      overlayColor: overlayColor_color?.toColor(styleType: styleTypeName),
      valueIndicatorColor: valueIndicatorColor_color?.toColor(styleType: styleTypeName),
      valueIndicatorTextStyle: valueIndicatorTextStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      minThumbSeparation: minThumbSeparation_double,
    );
  }
}
