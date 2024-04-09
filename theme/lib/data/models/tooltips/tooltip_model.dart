// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/box_decorations/box_decoration_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/text_style_string.dart';

part 'tooltip_model.freezed.dart';
part 'tooltip_model.g.dart';

@freezed
class TooltipModel with _$TooltipModel {
  const factory TooltipModel({
    double? height_double,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? margin_edgeInsets,
    double? verticalOffset_double,
    bool? preferBelow_bool,
    bool? excludeFromSemantics_bool,
    BoxDecorationModel? decoration_boxDecoration,
    // @BoxDecorationConverter() Map<BoxBorderType, BoxDecoration?>? decoration,
    TextStyleString? textStyle_textStyleString,
    TextAlign? textAlign_enum_textAlign,
    //TODO: implement these converters
    Duration? waitDuration_duration,
    Duration? showDuration_duration,
    TooltipTriggerMode? triggerMode_enum_tooltipTriggerMode,
    bool? enableFeedback_bool,
  }) = _TooltipModel;

  const TooltipModel._();

  factory TooltipModel.fromJson(Map<String, dynamic> json) => _$TooltipModelFromJson(json);

  // static TooltipModel defaultTooltipModel() {
  //   return TooltipModel(
  //     height: 32.0,
  //     padding: const EdgeInsets.only(
  //       left: 8.0,
  //       top: 4.0,
  //       right: 8.0,
  //       bottom: 4.0,
  //     ),
  //     margin: EdgeInsets.zero,
  //     verticalOffset: 24.0,
  //     preferBelow: true,
  //     excludeFromSemantics: false,
  //     decoration: {BoxBorderType.directional: BoxDecorationModel.defaultBoxDecorationModel().asBoxDecoration()},
  //     textStyle: "body-medium",
  //     enableFeedback: true,
  //   );
  // }

  TooltipThemeData asTooltipThemeData({String? styleTypeName}) {
    return TooltipThemeData(
      height: height_double,
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      margin: margin_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      verticalOffset: verticalOffset_double,
      preferBelow: preferBelow_bool,
      excludeFromSemantics: excludeFromSemantics_bool,
      decoration: decoration_boxDecoration?.asBoxDecoration(styleTypeName: styleTypeName),
      textStyle: textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      enableFeedback: enableFeedback_bool,
    );
  }
}
