// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'list_tile_model.freezed.dart';
part 'list_tile_model.g.dart';

@freezed
class ListTileModel with _$ListTileModel {
  const factory ListTileModel({
    bool? dense_bool,
    // @OutlinedBorderConverter()
    ShapeBorderModel? shape_shapeBorder,
    ThemeColorString? selectedColor_themeColorString,
    ThemeColorString? iconColor_themeColorString,
    ThemeColorString? textColor_themeColorString,
    TextStyleString? titleTextStyle_textStyleString,
    TextStyleString? subtitleTextStyle_textStyleString,
    TextStyleString? leadingAndTrailingTextStyle_textStyleString,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? contentPadding_edgeInsets,
    ThemeColorString? tileColor_themeColorString,
    ThemeColorString? selectedTileColor_themeColorString,
    double? horizontalTitleGap_double,
    double? minVerticalPadding_double,
    double? minLeadingWidth_double,
    bool? enableFeedback_bool,
    // @ListTileTitleAlignmentConverter()
    ListTileTitleAlignment? titleAlignment_enum_listTileTitleAlignment,
  }) = _ListTileModel;

  const ListTileModel._();

  factory ListTileModel.fromJson(Map<String, dynamic> json) => _$ListTileModelFromJson(json);

  // static ListTileModel defaultListTileModel() {
  //   return const ListTileModel(
  //     dense: false,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(0.0),
  //       topRight: Radius.circular(0.0),
  //       bottomLeft: Radius.circular(0.0),
  //       bottomRight: Radius.circular(0.0),
  //     )),
  //     selectedColor: "primary",
  //     iconColor: "primaryContainer",
  //     textColor: "primaryContainer",
  //     titleTextStyle: "label-medium",
  //     subtitleTextStyle: "label-small",
  //     leadingAndTrailingTextStyle: "label-medium",
  //     contentPadding: EdgeInsets.only(
  //       left: 16.0,
  //       top: 8.0,
  //       right: 16.0,
  //       bottom: 8.0,
  //     ),
  //     tileColor: "surface",
  //     selectedTileColor: "surface",
  //     horizontalTitleGap: 16.0,
  //     minVerticalPadding: 8.0,
  //     minLeadingWidth: 40.0,
  //     enableFeedback: true,
  //     titleAlignment: ListTileTitleAlignment.center,
  //   );
  // }

  ListTileThemeData asListTileThemeData({String? styleTypeName}) {
    return ListTileThemeData(
      dense: dense_bool,
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      selectedColor: selectedColor_themeColorString?.toColor(styleType: styleTypeName),
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      textColor: textColor_themeColorString?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      subtitleTextStyle: subtitleTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      contentPadding: contentPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      tileColor: tileColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedTileColor: selectedTileColor_themeColorString?.toColor(styleType: styleTypeName),
      horizontalTitleGap: horizontalTitleGap_double,
      minVerticalPadding: minVerticalPadding_double,
      minLeadingWidth: minLeadingWidth_double,
      enableFeedback: enableFeedback_bool,
    );
  }
}
