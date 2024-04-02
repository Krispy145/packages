import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/domain/converters/sizes/size.dart';
import 'package:theme/extensions/string.dart';

part 'button_style_model.freezed.dart';
part 'button_style_model.g.dart';

@unfreezed
class ButtonStyleModel with _$ButtonStyleModel {
  ButtonStyleModel._();
  factory ButtonStyleModel({
    String? textStyle,
    String? backgroundColor,
    String? foregroundColor,
    String? overlayColor,
    String? shadowColor,
    String? surfaceTintColor,
    double? elevation,
    @EdgeInsetsConverter() EdgeInsets? padding,
    @SizeConverter() Size? minimumSize,
    @SizeConverter() Size? fixedSize,
    @SizeConverter() Size? maximumSize,
    String? iconColor,
    double? iconSize,
    @BorderSideConverter() BorderSide? side,
    @OutlinedBorderConverter() OutlinedBorder? shape,
  }) = _ButtonStyleModel;

  ElevatedButtonThemeData toElevatedButtonThemeData() {
    return ElevatedButtonThemeData(style: asButtonStyle());
  }

  OutlinedButtonThemeData toOutlinedButtonThemeData() {
    return OutlinedButtonThemeData(style: asButtonStyle());
  }

  TextButtonThemeData toTextButtonThemeData() {
    return TextButtonThemeData(style: asButtonStyle());
  }

  FilledButtonThemeData toFilledButtonThemeData() {
    return FilledButtonThemeData(style: asButtonStyle());
  }

  IconButtonThemeData toIconButtonThemeData() {
    return IconButtonThemeData(style: asButtonStyle());
  }

  SegmentedButtonThemeData toSegmentedButtonThemeData() {
    return SegmentedButtonThemeData(style: asButtonStyle());
  }

  MenuButtonThemeData toMenuButtonThemeData() {
    return MenuButtonThemeData(style: asButtonStyle());
  }

  // // TODO: Add option for different styles of defaults
  // factory ButtonStyleModel.defaultButtonStyle() {
  //   return ButtonStyleModel(
  //       // textStyle: "label-small",
  //       // backgroundColor: "primary",
  //       // foregroundColor: "primaryContainer",
  //       // overlayColor: "primaryContainer",
  //       // shadowColor: "primaryContainer",
  //       // elevation: 0.8,
  //       // padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
  //       // // minimumSize: Size(64.0, 36.0),
  //       // // fixedSize: Size(64.0, 36.0),
  //       // // maximumSize: Size(160.0, 80.0),
  //       // side: const BorderSide(
  //       //   color: Colors.transparent,
  //       //   width: 0.0,
  //       // ),
  //       // shape: const RoundedRectangleBorder(
  //       //   borderRadius: BorderRadius.only(
  //       //     topRight: Radius.circular(0.0),
  //       //     bottomLeft: Radius.circular(0.0),
  //       //     topLeft: Radius.circular(0.0),
  //       //     bottomRight: Radius.circular(0.0),
  //       //   ),
  //       // ),
  //       );
  // }

  ButtonStyle asButtonStyle({String? styleTypeName}) {
    return ButtonStyle(
      textStyle: MaterialStateProperty.all(textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      backgroundColor: MaterialStateProperty.all(backgroundColor?.toColor(styleType: styleTypeName)),
      foregroundColor: MaterialStateProperty.all(foregroundColor?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor?.toColor(styleType: styleTypeName)),
      shadowColor: MaterialStateProperty.all(shadowColor?.toColor(styleType: styleTypeName)),
      elevation: MaterialStateProperty.all(elevation),
      padding: MaterialStateProperty.all(padding),
      minimumSize: MaterialStateProperty.all(minimumSize),
      fixedSize: MaterialStateProperty.all(fixedSize),
      maximumSize: MaterialStateProperty.all(maximumSize),
      side: MaterialStateProperty.all(side),
      shape: MaterialStateProperty.all(shape),
    );
  }

  factory ButtonStyleModel.fromJson(Map<String, dynamic> json) => _$ButtonStyleModelFromJson(json);
}
