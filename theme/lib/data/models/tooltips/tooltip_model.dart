// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/box_decorations/box_decoration_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";

part "tooltip_model.mapper.dart";

@MappableClass()
class TooltipModel with TooltipModelMappable {
  final double? height_double;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? margin_edgeInsets;
  final double? verticalOffset_double;
  final bool? preferBelow_bool;
  final bool? excludeFromSemantics_bool;
  @MappableValue(BoxDecorationModel())
  final BoxDecorationModel? decoration_boxDecoration;
  // @BoxDecorationConverter() Map<BoxBorderType, BoxDecoration?>? decoration,
  final TextStyleString? textStyle_textStyleString;
  final TextAlign? textAlign_enum_textAlign;
  //TODO: implement these converter;
  final Duration? waitDuration_duration;
  final Duration? showDuration_duration;
  final TooltipTriggerMode? triggerMode_enum_tooltipTriggerMode;
  final bool? enableFeedback_bool;

  const TooltipModel({
    this.height_double,
    this.padding_edgeInsets,
    this.margin_edgeInsets,
    this.verticalOffset_double,
    this.preferBelow_bool,
    this.excludeFromSemantics_bool,
    this.decoration_boxDecoration,
    this.textStyle_textStyleString,
    this.textAlign_enum_textAlign,
    this.waitDuration_duration,
    this.showDuration_duration,
    this.triggerMode_enum_tooltipTriggerMode,
    this.enableFeedback_bool,
  });

  static const fromMap = TooltipModelMapper.fromMap;
  static const fromJson = TooltipModelMapper.fromJson;

  TooltipThemeData asTooltipThemeData({String? styleTypeName}) {
    return TooltipThemeData(
      height: height_double,
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      margin: margin_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      verticalOffset: verticalOffset_double,
      preferBelow: preferBelow_bool,
      excludeFromSemantics: excludeFromSemantics_bool,
      decoration: decoration_boxDecoration?.asBoxDecoration(
        styleTypeName: styleTypeName,
      ),
      textStyle: textStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      enableFeedback: enableFeedback_bool,
    );
  }

  // static const empty = TooltipModel(id: "");

  // static const tooltipOne = TooltipModel(
  // id: "tooltipOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const tooltipTwo = TooltipModel(
  // id: "tooltipTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const tooltipThree = TooltipModel(
  // id: "tooltipThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<TooltipModel> fakeData = [
  // tooltipOne,
  // tooltipTwo,
  // tooltipThree,
  // ];
}

// part "tooltip_model.freezed.dart";
// part "tooltip_model.g.dart";

// @freezed
// class TooltipModel with _$TooltipModel {
//   const factory TooltipModel({
//     double? height_double,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? margin_edgeInsets,
//     double? verticalOffset_double,
//     bool? preferBelow_bool,
//     bool? excludeFromSemantics_bool,
//     BoxDecorationModel? decoration_boxDecoration,
//     // @BoxDecorationConverter() Map<BoxBorderType, BoxDecoration?>? decoration,
//     TextStyleString? textStyle_textStyleString,
//     TextAlign? textAlign_enum_textAlign,
//     //TODO: implement these converters
//     Duration? waitDuration_duration,
//     Duration? showDuration_duration,
//     TooltipTriggerMode? triggerMode_enum_tooltipTriggerMode,
//     bool? enableFeedback_bool,
//   }) = _TooltipModel;

//   const TooltipModel._();

//   factory TooltipModel.fromJson(Map<String, dynamic> json) =>
//       _$TooltipModelFromJson(json);

//   // static TooltipModel defaultTooltipModel() {
//   //   return TooltipModel(
//   //     height: 32.0,
//   //     padding: const EdgeInsets.only(
//   //       left: 8.0,
//   //       top: 4.0,
//   //       right: 8.0,
//   //       bottom: 4.0,
//   //     ),
//   //     margin: EdgeInsets.zero,
//   //     verticalOffset: 24.0,
//   //     preferBelow: true,
//   //     excludeFromSemantics: false,
//   //     decoration: {BoxBorderType.directional: BoxDecorationModel.defaultBoxDecorationModel().asBoxDecoration()},
//   //     textStyle: "body-medium",
//   //     enableFeedback: true,
//   //   );
//   // }

//   TooltipThemeData asTooltipThemeData({String? styleTypeName}) {
//     return TooltipThemeData(
//       height: height_double,
//       padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       margin: margin_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       verticalOffset: verticalOffset_double,
//       preferBelow: preferBelow_bool,
//       excludeFromSemantics: excludeFromSemantics_bool,
//       decoration: decoration_boxDecoration?.asBoxDecoration(
//           styleTypeName: styleTypeName,),
//       textStyle: textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       enableFeedback: enableFeedback_bool,
//     );
//   }
// }
