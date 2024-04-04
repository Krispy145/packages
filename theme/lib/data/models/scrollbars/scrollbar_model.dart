// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/radius/radius.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'scrollbar_model.freezed.dart';
part 'scrollbar_model.g.dart';

@freezed
class ScrollbarModel with _$ScrollbarModel {
  const factory ScrollbarModel({
    bool? thumbVisibility_bool,
    double? thickness_double,
    bool? trackVisibility_bool,
    @RadiusConverter() Radius? radius_radius,
    ThemeColorString? thumbColor_color,
    ThemeColorString? trackColor_color,
    ThemeColorString? trackBorderColor_color,
    double? crossAxisMargin_double,
    double? mainAxisMargin_double,
    double? minThumbLength_double,
    bool? interactive_bool,
  }) = _ScrollbarModel;

  const ScrollbarModel._();

  factory ScrollbarModel.fromJson(Map<String, dynamic> json) => _$ScrollbarModelFromJson(json);

  // static ScrollbarModel defaultScrollbarModel() {
  //   return const ScrollbarModel(
  //     thumbVisibility: true,
  //     thickness: 8.0,
  //     trackVisibility: true,
  //     radius: Radius.circular(0.0),
  //     thumbColor: "primary",
  //     trackColor: "surface",
  //     trackBorderColor: "outline",
  //     crossAxisMargin: 4.0,
  //     mainAxisMargin: 4.0,
  //     minThumbLength: 48.0,
  //     interactive: true,
  //   );
  // }

  ScrollbarThemeData asScrollbarThemeData({String? styleTypeName}) {
    return ScrollbarThemeData(
      thumbVisibility: MaterialStateProperty.all(thumbVisibility_bool),
      thickness: MaterialStateProperty.all(thickness_double),
      trackVisibility: MaterialStateProperty.all(trackVisibility_bool),
      radius: radius_radius,
      thumbColor: MaterialStateProperty.all(thumbColor_color?.toColor(styleType: styleTypeName)),
      trackColor: MaterialStateProperty.all(trackColor_color?.toColor(styleType: styleTypeName)),
      trackBorderColor: MaterialStateProperty.all(trackBorderColor_color?.toColor(styleType: styleTypeName)),
      crossAxisMargin: crossAxisMargin_double,
      mainAxisMargin: mainAxisMargin_double,
      minThumbLength: minThumbLength_double,
      interactive: interactive_bool,
    );
  }
}
