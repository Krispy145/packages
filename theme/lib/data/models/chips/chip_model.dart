// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "chip_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ChipModel with ChipModelMappable {
  final ThemeColorString? color_themeColorString;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? deleteIconColor_themeColorString;
  final ThemeColorString? disabledColor_themeColorString;
  final ThemeColorString? selectedColor_themeColorString;
  final ThemeColorString? secondarySelectedColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? selectedShadowColor_themeColorString;
  final bool? showCheckmark_bool;
  final ThemeColorString? checkmarkColor_themeColorString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? labelPadding_edgeInsets;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  final TextStyleString? labelStyle_textStyleString;
  final TextStyleString? secondaryLabelStyle_textStyleString;
  final double? elevation_double;
  final double? pressElevation_double;

  const ChipModel({
    this.color_themeColorString,
    this.backgroundColor_themeColorString,
    this.deleteIconColor_themeColorString,
    this.disabledColor_themeColorString,
    this.selectedColor_themeColorString,
    this.secondarySelectedColor_themeColorString,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.selectedShadowColor_themeColorString,
    this.showCheckmark_bool,
    this.checkmarkColor_themeColorString,
    this.labelPadding_edgeInsets = const EdgeInsetsModel(),
    this.padding_edgeInsets = const EdgeInsetsModel(),
    this.side_borderSide,
    this.shape_outlinedBorder = const OutlinedBorderModel(),
    this.labelStyle_textStyleString,
    this.secondaryLabelStyle_textStyleString,
    this.elevation_double,
    this.pressElevation_double,
  });

  static const fromMap = ChipModelMapper.fromMap;
  static const fromJson = ChipModelMapper.fromJson;

  ChipThemeData asChipThemeData({String? styleTypeName}) {
    return ChipThemeData(
      color: color_themeColorString != null
          ? MaterialStateProperty.all(
              color_themeColorString?.toColor(styleType: styleTypeName),
            )
          : null,
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      deleteIconColor: deleteIconColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor_themeColorString?.toColor(styleType: styleTypeName),
      secondarySelectedColor: secondarySelectedColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedShadowColor: selectedShadowColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      showCheckmark: showCheckmark_bool,
      checkmarkColor: checkmarkColor_themeColorString?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      secondaryLabelStyle: secondaryLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation_double,
      pressElevation: pressElevation_double,
    );
  }

  // static const empty = ChipModel(id: "");

  // static const chipOne = ChipModel(
  // id: "chipOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const chipTwo = ChipModel(
  // id: "chipTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const chipThree = ChipModel(
  // id: "chipThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ChipModel> fakeData = [
  // chipOne,
  // chipTwo,
  // chipThree,
  // ];
}

// part "chip_model.freezed.dart";
// part "chip_model.g.dart";

// @freezed
// class ChipModel with _$ChipModel {
//   const factory ChipModel({
//     ThemeColorString? color_themeColorString,
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? deleteIconColor_themeColorString,
//     ThemeColorString? disabledColor_themeColorString,
//     ThemeColorString? selectedColor_themeColorString,
//     ThemeColorString? secondarySelectedColor_themeColorString,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ThemeColorString? selectedShadowColor_themeColorString,
//     bool? showCheckmark_bool,
//     ThemeColorString? checkmarkColor_themeColorString,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? labelPadding_edgeInsets,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//     BorderSideModel? side_borderSide,
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     TextStyleString? labelStyle_textStyleString,
//     TextStyleString? secondaryLabelStyle_textStyleString,
//     double? elevation_double,
//     double? pressElevation_double,
//   }) = _ChipModel;

//   const ChipModel._();

//   factory ChipModel.fromJson(Map<String, dynamic> json) =>
//       _$ChipModelFromJson(json);

//   ChipThemeData asChipThemeData({String? styleTypeName}) {
//     return ChipThemeData(
//       color: color_themeColorString != null
//           ? MaterialStateProperty.all(
//               color_themeColorString?.toColor(styleType: styleTypeName),)
//           : null,
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       deleteIconColor:
//           deleteIconColor_themeColorString?.toColor(styleType: styleTypeName),
//       disabledColor:
//           disabledColor_themeColorString?.toColor(styleType: styleTypeName),
//       selectedColor:
//           selectedColor_themeColorString?.toColor(styleType: styleTypeName),
//       secondarySelectedColor: secondarySelectedColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       selectedShadowColor: selectedShadowColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       showCheckmark: showCheckmark_bool,
//       checkmarkColor:
//           checkmarkColor_themeColorString?.toColor(styleType: styleTypeName),
//       labelPadding:
//           labelPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
//       shape:
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       labelStyle: labelStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       secondaryLabelStyle: secondaryLabelStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       elevation: elevation_double,
//       pressElevation: pressElevation_double,
//     );
//   }
// }
