// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/data/models/general/size_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'button_style_model.freezed.dart';
part 'button_style_model.g.dart';

@unfreezed
class ButtonStyleModel with _$ButtonStyleModel {
  factory ButtonStyleModel({
    TextStyleString? textStyle_textStyleString,
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? foregroundColor_themeColorString,
    ThemeColorString? overlayColor_themeColorString,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    double? elevation_double,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
    @Default(SizeModel()) SizeModel? minimumSize_size,
    @Default(SizeModel()) SizeModel? fixedSize_size,
    @Default(SizeModel()) SizeModel? maximumSize_size,
    ThemeColorString? iconColor_themeColorString,
    double? iconSize_double,
    // @BorderSideConverter()
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
    // @OutlinedBorderConverter()
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
  }) = _ButtonStyleModel;
  ButtonStyleModel._();

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
      textStyle: MaterialStateProperty.all(textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      backgroundColor: MaterialStateProperty.all(backgroundColor_themeColorString?.toColor(styleType: styleTypeName)),
      foregroundColor: MaterialStateProperty.all(foregroundColor_themeColorString?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor_themeColorString?.toColor(styleType: styleTypeName)),
      shadowColor: MaterialStateProperty.all(shadowColor_themeColorString?.toColor(styleType: styleTypeName)),
      elevation: MaterialStateProperty.all(elevation_double),
      padding: MaterialStateProperty.all(padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName)),
      minimumSize: MaterialStateProperty.all(minimumSize_size?.asSize(styleTypeName: styleTypeName)),
      fixedSize: MaterialStateProperty.all(fixedSize_size?.asSize(styleTypeName: styleTypeName)),
      maximumSize: MaterialStateProperty.all(maximumSize_size?.asSize(styleTypeName: styleTypeName)),
      side: MaterialStateProperty.all(side_borderSide?.asBorderSide(styleTypeName: styleTypeName)),
      shape: MaterialStateProperty.all(shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName)),
    );
  }

  factory ButtonStyleModel.fromJson(Map<String, dynamic> json) => _$ButtonStyleModelFromJson(json);
}
