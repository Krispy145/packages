import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/string.dart';

part 'progress_indicator_model.freezed.dart';
part 'progress_indicator_model.g.dart';

@freezed
class ProgressIndicatorModel with _$ProgressIndicatorModel {
  const factory ProgressIndicatorModel({
    String? color,
    String? linearTrackColor,
    double? linearMinHeight,
    String? circularTrackColor,
    String? refreshBackgroundColor,
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
      color: color?.toColor(styleType: styleTypeName),
      linearTrackColor: linearTrackColor?.toColor(styleType: styleTypeName),
      linearMinHeight: linearMinHeight,
      circularTrackColor: circularTrackColor?.toColor(styleType: styleTypeName),
      refreshBackgroundColor: refreshBackgroundColor?.toColor(styleType: styleTypeName),
    );
  }
}
