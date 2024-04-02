import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/string.dart';

part 'slider_model.freezed.dart';
part 'slider_model.g.dart';

@freezed
class SliderModel with _$SliderModel {
  const factory SliderModel({
    double? trackHeight,
    String? activeTrackColor,
    String? inactiveTrackColor,
    String? secondaryActiveTrackColor,
    String? disabledActiveTrackColor,
    String? disabledInactiveTrackColor,
    String? disabledSecondaryActiveTrackColor,
    String? activeTickMarkColor,
    String? inactiveTickMarkColor,
    String? disabledActiveTickMarkColor,
    String? disabledInactiveTickMarkColor,
    String? thumbColor,
    String? overlappingShapeStrokeColor,
    String? disabledThumbColor,
    String? overlayColor,
    String? valueIndicatorColor,
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
    // ShowValueIndicator? showValueIndicator,
    // SliderInteraction? allowedInteraction,
    String? valueIndicatorTextStyle,
    double? minThumbSeparation,
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
      trackHeight: trackHeight,
      activeTrackColor: activeTrackColor?.toColor(styleType: styleTypeName),
      inactiveTrackColor: inactiveTrackColor?.toColor(styleType: styleTypeName),
      secondaryActiveTrackColor: secondaryActiveTrackColor?.toColor(styleType: styleTypeName),
      disabledActiveTrackColor: disabledActiveTrackColor?.toColor(styleType: styleTypeName),
      disabledInactiveTrackColor: disabledInactiveTrackColor?.toColor(styleType: styleTypeName),
      disabledSecondaryActiveTrackColor: disabledSecondaryActiveTrackColor?.toColor(styleType: styleTypeName),
      activeTickMarkColor: activeTickMarkColor?.toColor(styleType: styleTypeName),
      inactiveTickMarkColor: inactiveTickMarkColor?.toColor(styleType: styleTypeName),
      disabledActiveTickMarkColor: disabledActiveTickMarkColor?.toColor(styleType: styleTypeName),
      disabledInactiveTickMarkColor: disabledInactiveTickMarkColor?.toColor(styleType: styleTypeName),
      thumbColor: thumbColor?.toColor(styleType: styleTypeName),
      overlappingShapeStrokeColor: overlappingShapeStrokeColor?.toColor(styleType: styleTypeName),
      disabledThumbColor: disabledThumbColor?.toColor(styleType: styleTypeName),
      overlayColor: overlayColor?.toColor(styleType: styleTypeName),
      valueIndicatorColor: valueIndicatorColor?.toColor(styleType: styleTypeName),
      valueIndicatorTextStyle: valueIndicatorTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      minThumbSeparation: minThumbSeparation,
    );
  }
}
