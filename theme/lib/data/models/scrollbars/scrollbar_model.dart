import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/radius/radius.dart';
import 'package:theme/extensions/string.dart';

part 'scrollbar_model.freezed.dart';
part 'scrollbar_model.g.dart';

@freezed
class ScrollbarModel with _$ScrollbarModel {
  const factory ScrollbarModel({
    bool? thumbVisibility,
    double? thickness,
    bool? trackVisibility,
    @RadiusConverter() Radius? radius,
    String? thumbColor,
    String? trackColor,
    String? trackBorderColor,
    double? crossAxisMargin,
    double? mainAxisMargin,
    double? minThumbLength,
    bool? interactive,
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
      thumbVisibility: MaterialStateProperty.all(thumbVisibility),
      thickness: MaterialStateProperty.all(thickness),
      trackVisibility: MaterialStateProperty.all(trackVisibility),
      radius: radius,
      thumbColor: MaterialStateProperty.all(thumbColor?.toColor(styleType: styleTypeName)),
      trackColor: MaterialStateProperty.all(trackColor?.toColor(styleType: styleTypeName)),
      trackBorderColor: MaterialStateProperty.all(trackBorderColor?.toColor(styleType: styleTypeName)),
      crossAxisMargin: crossAxisMargin,
      mainAxisMargin: mainAxisMargin,
      minThumbLength: minThumbLength,
      interactive: interactive,
    );
  }
}
