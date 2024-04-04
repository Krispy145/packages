// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/domain/converters/alignments/alignment.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'dialog_model.freezed.dart';
part 'dialog_model.g.dart';

@freezed
class DialogModel with _$DialogModel {
  const factory DialogModel({
    ThemeColorString? backgroundColor_color,
    double? elevation_double,
    ThemeColorString? shadowColor_color,
    ThemeColorString? surfaceTintColor_color,
    // @OutlinedBorderConverter()
    ShapeBorderModel? shape_shapeBorder,
    @AlignmentConverter() Alignment? alignment_alignment,
    ThemeColorString? iconColor_color,
    TextStyleString? titleTextStyle_textStyle,
    TextStyleString? contentTextStyle_textStyle,
    @EdgeInsetsConverter() EdgeInsets? actionsPadding_edgeInsets,
  }) = _DialogModel;

  const DialogModel._();

  factory DialogModel.fromJson(Map<String, dynamic> json) => _$DialogModelFromJson(json);

  // static DialogModel defaultDialogModel() {
  //   return const DialogModel(
  //     backgroundColor: "surface",
  //     elevation: 24.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     alignment: Alignment.center,
  //     iconColor: "onSurface",
  //     titleTextStyle: "title-medium",
  //     contentTextStyle: "body-medium",
  //     actionsPadding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //   );
  // }

  DialogTheme asDialogTheme({String? styleTypeName}) {
    return DialogTheme(
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_color?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      alignment: alignment_alignment,
      iconColor: iconColor_color?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      contentTextStyle: contentTextStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      actionsPadding: actionsPadding_edgeInsets,
    );
  }
}
