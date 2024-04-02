import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'chip_model.freezed.dart';
part 'chip_model.g.dart';

@freezed
class ChipModel with _$ChipModel {
  const factory ChipModel({
    String? color,
    String? backgroundColor,
    String? deleteIconColor,
    String? disabledColor,
    String? selectedColor,
    String? secondarySelectedColor,
    String? shadowColor,
    String? surfaceTintColor,
    String? selectedShadowColor,
    bool? showCheckmark,
    String? checkmarkColor,
    @EdgeInsetsConverter() EdgeInsets? labelPadding,
    @EdgeInsetsConverter() EdgeInsets? padding,
    @BorderSideConverter() BorderSide? side,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    String? labelStyle,
    String? secondaryLabelStyle,
    double? elevation,
    double? pressElevation,
  }) = _ChipModel;

  const ChipModel._();

  factory ChipModel.fromJson(Map<String, dynamic> json) => _$ChipModelFromJson(json);

  // static ChipModel defaultChipModel() {
  //   return const ChipModel(
  //     color: "surface",
  //     backgroundColor: "surface",
  //     deleteIconColor: "onSurface",
  //     disabledColor: "onSurface",
  //     selectedColor: "primary",
  //     secondarySelectedColor: "primary",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     selectedShadowColor: "outline",
  //     showCheckmark: true,
  //     checkmarkColor: "onSurface",
  //     labelPadding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     labelStyle: "label-medium",
  //     secondaryLabelStyle: "label-small",
  //     elevation: 0.0,
  //     pressElevation: 0.0,
  //   );
  // }

  ChipThemeData asChipThemeData({String? styleTypeName}) {
    return ChipThemeData(
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      deleteIconColor: deleteIconColor?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor?.toColor(styleType: styleTypeName),
      secondarySelectedColor: secondarySelectedColor?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      selectedShadowColor: selectedShadowColor?.toColor(styleType: styleTypeName),
      showCheckmark: showCheckmark,
      checkmarkColor: checkmarkColor?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding,
      padding: padding,
      side: side,
      shape: shape,
      labelStyle: labelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      secondaryLabelStyle: secondaryLabelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation,
      pressElevation: pressElevation,
    );
  }
}
