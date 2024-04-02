import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/box/borders/border.dart';
import 'package:theme/domain/converters/box_decoration/box_decoration.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/string.dart';

part 'tooltip_model.freezed.dart';
part 'tooltip_model.g.dart';

@freezed
class TooltipModel with _$TooltipModel {
  const factory TooltipModel({
    double? height,
    @EdgeInsetsConverter() EdgeInsets? padding,
    @EdgeInsetsConverter() EdgeInsets? margin,
    double? verticalOffset,
    bool? preferBelow,
    bool? excludeFromSemantics,
    @BoxDecorationConverter() Map<BoxBorderType, BoxDecoration?>? decoration,
    String? textStyle,
    //TODO: implement these converters
    // TextAlign? textAlign,
    // Duration? waitDuration,
    // Duration? showDuration,
    // TooltipTriggerMode? triggerMode,
    bool? enableFeedback,
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
        height: height,
        padding: padding,
        margin: margin,
        verticalOffset: verticalOffset,
        preferBelow: preferBelow,
        excludeFromSemantics: excludeFromSemantics,
        decoration: decoration?.values.first,
        textStyle: textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
        enableFeedback: enableFeedback);
  }
}
