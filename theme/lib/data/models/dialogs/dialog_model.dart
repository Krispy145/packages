// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "dialog_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
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

  DialogTheme asDialogTheme({String? styleTypeName}) {
    return DialogTheme(
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      alignment: alignment_enum_alignmentOptions?.alignment,
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      titleTextStyle: titleTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      contentTextStyle: contentTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      actionsPadding: actionsPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
    );
  }

  // static const empty = DialogModel(id: "");

  // static const dialogOne = DialogModel(
  // id: "dialogOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const dialogTwo = DialogModel(
  // id: "dialogTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const dialogThree = DialogModel(
  // id: "dialogThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<DialogModel> fakeData = [
  // dialogOne,
  // dialogTwo,
  // dialogThree,
  // ];
}

// part "dialog_model.freezed.dart";
// part "dialog_model.g.dart";

// @freezed
// class DialogModel with _$DialogModel {
//   const factory DialogModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     double? elevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     // @OutlinedBorderConverter()
//     ShapeBorderModel? shape_shapeBorder,
//     AlignmentOptions? alignment_enum_alignmentOptions,
//     ThemeColorString? iconColor_themeColorString,
//     TextStyleString? titleTextStyle_textStyleString,
//     TextStyleString? contentTextStyle_textStyleString,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? actionsPadding_edgeInsets,
//   }) = _DialogModel;

//   const DialogModel._();

//   factory DialogModel.fromJson(Map<String, dynamic> json) =>
//       _$DialogModelFromJson(json);

//   // static DialogModel defaultDialogModel() {
//   //   return const DialogModel(
//   //     backgroundColor: "surface",
//   //     elevation: 24.0,
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(0.0),
//   //         topRight: Radius.circular(0.0),
//   //         bottomLeft: Radius.circular(0.0),
//   //         bottomRight: Radius.circular(0.0),
//   //       ),
//   //     ),
//   //     alignment: Alignment.center,
//   //     iconColor: "onSurface",
//   //     titleTextStyle: "title-medium",
//   //     contentTextStyle: "body-medium",
//   //     actionsPadding: EdgeInsets.only(
//   //       left: 8.0,
//   //       top: 8.0,
//   //       right: 8.0,
//   //       bottom: 8.0,
//   //     ),
//   //   );
//   // }

//   DialogTheme asDialogTheme({String? styleTypeName}) {
//     return DialogTheme(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
//       alignment: alignment_enum_alignmentOptions?.alignment,
//       iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
//       titleTextStyle: titleTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       contentTextStyle: contentTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       actionsPadding:
//           actionsPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//     );
//   }
// }
