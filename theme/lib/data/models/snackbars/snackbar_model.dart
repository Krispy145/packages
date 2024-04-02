import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'snackbar_model.freezed.dart';
part 'snackbar_model.g.dart';

@freezed
class SnackbarModel with _$SnackbarModel {
  const factory SnackbarModel({
    String? backgroundColor,
    String? actionTextColor,
    String? disabledActionTextColor,
    String? contentTextStyle,
    double? elevation,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @Default(SnackBarBehavior.floating) SnackBarBehavior behavior,
    double? width,
    @EdgeInsetsConverter() EdgeInsets? insetPadding,
    bool? showCloseIcon,
    String? closeIconColor,
    double? actionOverflowThreshold,
    String? actionBackgroundColor,
    String? disabledActionBackgroundColor,
  }) = _SnackbarModel;

  const SnackbarModel._();

  factory SnackbarModel.fromJson(Map<String, dynamic> json) => _$SnackbarModelFromJson(json);

  // static SnackbarModel defaultSnackbarModel() {
  //   return const SnackbarModel(
  //     backgroundColor: "surface",
  //     actionTextColor: "primary",
  //     disabledActionTextColor: "disabled",
  //     contentTextStyle: "label-medium",
  //     elevation: 6.0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     behavior: SnackBarBehavior.floating,
  //     width: 0.0,
  //     insetPadding: EdgeInsets.only(
  //       left: 16.0,
  //       top: 8.0,
  //       right: 16.0,
  //       bottom: 8.0,
  //     ),
  //     showCloseIcon: true,
  //     closeIconColor: "onSurface",
  //     actionOverflowThreshold: 0.2,
  //     actionBackgroundColor: "primary",
  //     disabledActionBackgroundColor: "outline",
  //   );
  // }

  SnackBarThemeData asSnackBarThemeData({String? styleTypeName}) {
    return SnackBarThemeData(
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      actionTextColor: actionTextColor?.toColor(styleType: styleTypeName),
      disabledActionTextColor: disabledActionTextColor?.toColor(styleType: styleTypeName),
      contentTextStyle: contentTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation,
      shape: shape,
      behavior: behavior,
      width: width,
      insetPadding: insetPadding,
      showCloseIcon: showCloseIcon,
      actionOverflowThreshold: actionOverflowThreshold,
      actionBackgroundColor: actionBackgroundColor?.toColor(styleType: styleTypeName),
      disabledActionBackgroundColor: disabledActionBackgroundColor?.toColor(styleType: styleTypeName),
    );
  }
}
