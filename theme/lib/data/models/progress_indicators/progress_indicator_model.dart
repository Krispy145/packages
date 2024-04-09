import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'progress_indicator_model.freezed.dart';
part 'progress_indicator_model.g.dart';

@freezed
class ProgressIndicatorModel with _$ProgressIndicatorModel {
  const factory ProgressIndicatorModel({
    ThemeColorString? color_themeColorString,
    ThemeColorString? linearTrackColor_themeColorString,
    double? linearMinHeight_double,
    ThemeColorString? circularTrackColor_themeColorString,
    ThemeColorString? refreshBackgroundColor_themeColorString,
  }) = _ProgressIndicatorModel;

  const ProgressIndicatorModel._();

  factory ProgressIndicatorModel.fromJson(Map<String, dynamic> json) => _$ProgressIndicatorModelFromJson(json);

  // static ProgressIndicatorModel defaultProgressIndicatorModel() {
  //   return const ProgressIndicatorModel(
  //     color: "primary",
  //     linearTrackColor: "surface",
  //     linearMinHeight: 4.0,
  //     circularTrackColor: "surface",
  //     refreshBackgroundColor: "surface",
  //   );
  // }

  ProgressIndicatorThemeData asProgressIndicatorThemeData({String? styleTypeName}) {
    return ProgressIndicatorThemeData(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      linearTrackColor: linearTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      linearMinHeight: linearMinHeight_double,
      circularTrackColor: circularTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      refreshBackgroundColor: refreshBackgroundColor_themeColorString?.toColor(styleType: styleTypeName),
    );
  }
}
