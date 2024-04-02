import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/list_tile_title.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'list_tile_model.freezed.dart';
part 'list_tile_model.g.dart';

@freezed
class ListTileModel with _$ListTileModel {
  const factory ListTileModel({
    bool? dense,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    String? selectedColor,
    String? iconColor,
    String? textColor,
    String? titleTextStyle,
    String? subtitleTextStyle,
    String? leadingAndTrailingTextStyle,
    @EdgeInsetsConverter() EdgeInsets? contentPadding,
    String? tileColor,
    String? selectedTileColor,
    double? horizontalTitleGap,
    double? minVerticalPadding,
    double? minLeadingWidth,
    bool? enableFeedback,
    @ListTileTitleAlignmentConverter() ListTileTitleAlignment? titleAlignment,
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
      dense: dense,
      shape: shape,
      selectedColor: selectedColor?.toColor(styleType: styleTypeName),
      iconColor: iconColor?.toColor(styleType: styleTypeName),
      textColor: textColor?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      subtitleTextStyle: subtitleTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      leadingAndTrailingTextStyle: leadingAndTrailingTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      contentPadding: contentPadding,
      tileColor: tileColor?.toColor(styleType: styleTypeName),
      selectedTileColor: selectedTileColor?.toColor(styleType: styleTypeName),
      horizontalTitleGap: horizontalTitleGap,
      minVerticalPadding: minVerticalPadding,
      minLeadingWidth: minLeadingWidth,
      enableFeedback: enableFeedback,
    );
  }
}
