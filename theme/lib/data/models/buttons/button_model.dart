// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/data/models/general/size_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "button_model.mapper.dart";

enum ButtonModelType {
  elevated,
  outlined,
  text,
  toggle,
  icon,
  filled,
  floating,
  menu,
  segmented,
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ButtonModel with ButtonModelMappable {
  final TextStyleString? textStyle_textStyleString;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? foregroundColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final double? elevation_double;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  @MappableValue(SizeModel())
  final SizeModel? minimumSize_size;
  @MappableValue(SizeModel())
  final SizeModel? fixedSize_size;
  @MappableValue(SizeModel())
  final SizeModel? maximumSize_size;
  final ThemeColorString? iconColor_themeColorString;
  final double? iconSize_double;
  @MappableValue(BorderSideModel())
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;

  const ButtonModel({
    this.textStyle_textStyleString,
    this.backgroundColor_themeColorString,
    this.foregroundColor_themeColorString,
    this.overlayColor_themeColorString,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.elevation_double,
    this.padding_edgeInsets = const EdgeInsetsModel(),
    this.minimumSize_size = const SizeModel(),
    this.fixedSize_size = const SizeModel(),
    this.maximumSize_size = const SizeModel(),
    this.iconColor_themeColorString,
    this.iconSize_double,
    this.side_borderSide = const BorderSideModel(),
    this.shape_outlinedBorder = const OutlinedBorderModel(),
  });

  static const fromMap = ButtonModelMapper.fromMap;
  static const fromJson = ButtonModelMapper.fromJson;

  ElevatedButtonThemeData toElevatedButtonThemeData() => ElevatedButtonThemeData(style: asButtonStyle());

  OutlinedButtonThemeData toOutlinedButtonThemeData() => OutlinedButtonThemeData(style: asButtonStyle());

  TextButtonThemeData toTextButtonThemeData() => TextButtonThemeData(style: asButtonStyle());

  FilledButtonThemeData toFilledButtonThemeData() => FilledButtonThemeData(style: asButtonStyle());

  IconButtonThemeData toIconButtonThemeData() => IconButtonThemeData(style: asButtonStyle());

  SegmentedButtonThemeData toSegmentedButtonThemeData() => SegmentedButtonThemeData(style: asButtonStyle());

  MenuButtonThemeData toMenuButtonThemeData() => MenuButtonThemeData(style: asButtonStyle());

  ButtonStyle asButtonStyle({String? styleTypeName}) {
    return ButtonStyle(
      textStyle: MaterialStateProperty.all(
        textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      backgroundColor: MaterialStateProperty.all(
        backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      foregroundColor: MaterialStateProperty.all(
        foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: MaterialStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      shadowColor: MaterialStateProperty.all(
        shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      elevation: MaterialStateProperty.all(elevation_double),
      padding: MaterialStateProperty.all(
        padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      ),
      minimumSize: MaterialStateProperty.all(
        minimumSize_size?.asSize(styleTypeName: styleTypeName),
      ),
      fixedSize: MaterialStateProperty.all(
        fixedSize_size?.asSize(styleTypeName: styleTypeName),
      ),
      maximumSize: MaterialStateProperty.all(
        maximumSize_size?.asSize(styleTypeName: styleTypeName),
      ),
      side: MaterialStateProperty.all(
        side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      ),
      shape: MaterialStateProperty.all(
        shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      ),
    );
  }

  // static const empty = ButtonModel(id: "");

  // static const buttonOne = ButtonModel(
  //   id: "buttonOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const buttonTwo = ButtonModel(
  //   id: "buttonTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const buttonThree = ButtonModel(
  //   id: "buttonThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<ButtonModel> fakeData = [
  //   buttonOne,
  //   buttonTwo,
  //   buttonThree,
  // ];
}

// @unfreezed
// class ButtonModel with _$ButtonModel {
//   factory ButtonModel({
//     TextStyleString? textStyle_textStyleString,
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? foregroundColor_themeColorString,
//     ThemeColorString? overlayColor_themeColorString,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     double? elevation_double,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//     @MappableValue(SizeModel()) SizeModel? minimumSize_size,
//     @MappableValue(SizeModel()) SizeModel? fixedSize_size,
//     @MappableValue(SizeModel()) SizeModel? maximumSize_size,
//     ThemeColorString? iconColor_themeColorString,
//     double? iconSize_double,
//     // @BorderSideConverter()
//     @MappableValue(BorderSideModel()) BorderSideModel? side_borderSide,
//     // @OutlinedBorderConverter()
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//   }) = _ButtonModel;
//   ButtonModel._();

//   ElevatedButtonThemeData toElevatedButtonThemeData() {
//     return ElevatedButtonThemeData(style: asButtonStyle());
//   }

//   OutlinedButtonThemeData toOutlinedButtonThemeData() {
//     return OutlinedButtonThemeData(style: asButtonStyle());
//   }

//   TextButtonThemeData toTextButtonThemeData() {
//     return TextButtonThemeData(style: asButtonStyle());
//   }

//   FilledButtonThemeData toFilledButtonThemeData() {
//     return FilledButtonThemeData(style: asButtonStyle());
//   }

//   IconButtonThemeData toIconButtonThemeData() {
//     return IconButtonThemeData(style: asButtonStyle());
//   }

//   SegmentedButtonThemeData toSegmentedButtonThemeData() {
//     return SegmentedButtonThemeData(style: asButtonStyle());
//   }

//   MenuButtonThemeData toMenuButtonThemeData() {
//     return MenuButtonThemeData(style: asButtonStyle());
//   }

//   ButtonStyle asButtonStyle({String? styleTypeName}) {
//     return ButtonStyle(
//       textStyle: MaterialStateProperty.all(
//         textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
//       ),
//       backgroundColor: MaterialStateProperty.all(
//         backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       ),
//       foregroundColor: MaterialStateProperty.all(
//         foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       ),
//       overlayColor: MaterialStateProperty.all(
//         overlayColor_themeColorString?.toColor(styleType: styleTypeName),
//       ),
//       shadowColor: MaterialStateProperty.all(
//         shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       ),
//       elevation: MaterialStateProperty.all(elevation_double),
//       padding: MaterialStateProperty.all(
//         padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       ),
//       minimumSize: MaterialStateProperty.all(
//         minimumSize_size?.asSize(styleTypeName: styleTypeName),
//       ),
//       fixedSize: MaterialStateProperty.all(
//         fixedSize_size?.asSize(styleTypeName: styleTypeName),
//       ),
//       maximumSize: MaterialStateProperty.all(
//         maximumSize_size?.asSize(styleTypeName: styleTypeName),
//       ),
//       side: MaterialStateProperty.all(
//         side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
//       ),
//       shape: MaterialStateProperty.all(
//         shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       ),
//     );
//   }

//   factory ButtonModel.fromJson(Map<String, dynamic> json) => _$ButtonModelFromJson(json);
// }
