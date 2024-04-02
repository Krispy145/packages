import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/alignment.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'dialog_model.freezed.dart';
part 'dialog_model.g.dart';

@freezed
class DialogModel with _$DialogModel {
  const factory DialogModel({
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @AlignmentConverter() Alignment? alignment,
    String? iconColor,
    String? titleTextStyle,
    String? contentTextStyle,
    @EdgeInsetsConverter() EdgeInsets? actionsPadding,
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
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      shape: shape,
      alignment: alignment,
      iconColor: iconColor?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      contentTextStyle: contentTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      actionsPadding: actionsPadding,
    );
  }
}
