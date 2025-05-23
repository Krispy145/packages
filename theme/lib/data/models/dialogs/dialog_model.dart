// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "dialog_model.mapper.dart";

@MappableClass()
class DialogModel with DialogModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final double? elevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ShapeBorderModel? shape_shapeBorder;
  final AlignmentOptions? alignment_enum_alignmentOptions;
  final ThemeColorString? iconColor_themeColorString;
  final TextStyleString? titleTextStyle_textStyleString;
  final TextStyleString? contentTextStyle_textStyleString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? actionsPadding_edgeInsets;

  const DialogModel({
    this.backgroundColor_themeColorString,
    this.elevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.shape_shapeBorder,
    this.alignment_enum_alignmentOptions,
    this.iconColor_themeColorString,
    this.titleTextStyle_textStyleString,
    this.contentTextStyle_textStyleString,
    this.actionsPadding_edgeInsets = const EdgeInsetsModel(),
  });

  static const fromMap = DialogModelMapper.fromMap;
  static const fromJson = DialogModelMapper.fromJson;

  DialogThemeData asDialogThemeData({String? styleTypeName}) {
    return DialogThemeData(
      backgroundColor:
          backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor:
          shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      alignment: alignment_enum_alignmentOptions?.alignment,
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      contentTextStyle: contentTextStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      actionsPadding:
          actionsPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
    );
  }
}
