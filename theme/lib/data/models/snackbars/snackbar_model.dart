// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "snackbar_model.mapper.dart";

@MappableEnum()
enum SnackbarBehaviorType {
  floating,
  fixed;

  SnackBarBehavior get behavior {
    switch (this) {
      case SnackbarBehaviorType.floating:
        return SnackBarBehavior.floating;
      case SnackbarBehaviorType.fixed:
        return SnackBarBehavior.fixed;
    }
  }
}

@MappableClass()
class SnackbarModel with SnackbarModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? actionTextColor_themeColorString;
  final ThemeColorString? disabledActionTextColor_themeColorString;
  final TextStyleString? contentTextStyle_textStyleString;
  final double? elevation_double;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  @MappableValue(SnackbarBehaviorType.floating)
  final SnackbarBehaviorType behavior_enum_snackBarBehavior;
  final double? width_double;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? insetPadding_edgeInsets;
  final bool? showCloseIcon_bool;
  final ThemeColorString? closeIconColor_themeColorString;
  final double? actionOverflowThreshold_double;
  final ThemeColorString? actionBackgroundColor_themeColorString;
  final ThemeColorString? disabledActionBackgroundColor_themeColorString;

  const SnackbarModel({
    this.backgroundColor_themeColorString,
    this.actionTextColor_themeColorString,
    this.disabledActionTextColor_themeColorString,
    this.contentTextStyle_textStyleString,
    this.elevation_double,
    this.shape_outlinedBorder,
    this.behavior_enum_snackBarBehavior = SnackbarBehaviorType.floating,
    this.width_double,
    this.insetPadding_edgeInsets,
    this.showCloseIcon_bool,
    this.closeIconColor_themeColorString,
    this.actionOverflowThreshold_double,
    this.actionBackgroundColor_themeColorString,
    this.disabledActionBackgroundColor_themeColorString,
  });

  static const fromMap = SnackbarModelMapper.fromMap;
  static const fromJson = SnackbarModelMapper.fromJson;

  SnackBarThemeData asSnackBarThemeData({String? styleTypeName}) {
    return SnackBarThemeData(
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      actionTextColor: actionTextColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledActionTextColor: disabledActionTextColor_themeColorString?.toColor(styleType: styleTypeName),
      contentTextStyle: contentTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      elevation: elevation_double,
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      behavior: behavior_enum_snackBarBehavior.behavior,
      width: width_double,
      insetPadding: insetPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      showCloseIcon: showCloseIcon_bool,
      actionOverflowThreshold: actionOverflowThreshold_double,
      actionBackgroundColor: actionBackgroundColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      disabledActionBackgroundColor: disabledActionBackgroundColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
    );
  }

  // static const empty = SnackbarModel(id: "");

  // static const snackbarOne = SnackbarModel(
  // id: "snackbarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const snackbarTwo = SnackbarModel(
  // id: "snackbarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const snackbarThree = SnackbarModel(
  // id: "snackbarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SnackbarModel> fakeData = [
  // snackbarOne,
  // snackbarTwo,
  // snackbarThree,
  // ];
}

// part "snackbar_model.freezed.dart";
// part "snackbar_model.g.dart";

// @freezed
// class SnackbarModel with _$SnackbarModel {
//   const factory SnackbarModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? actionTextColor_themeColorString,
//     ThemeColorString? disabledActionTextColor_themeColorString,
//     TextStyleString? contentTextStyle_textStyleString,
//     double? elevation_double,
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     @MappableValue(SnackBarBehavior.floating)
//     SnackBarBehavior behavior_enum_snackBarBehavior,
//     double? width_double,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? insetPadding_edgeInsets,
//     bool? showCloseIcon_bool,
//     ThemeColorString? closeIconColor_themeColorString,
//     double? actionOverflowThreshold_double,
//     ThemeColorString? actionBackgroundColor_themeColorString,
//     ThemeColorString? disabledActionBackgroundColor_themeColorString,
//   }) = _SnackbarModel;

//   const SnackbarModel._();

//   factory SnackbarModel.fromJson(Map<String, dynamic> json) =>
//       _$SnackbarModelFromJson(json);

//   // static SnackbarModel defaultSnackbarModel() {
//   //   return const SnackbarModel(
//   //     backgroundColor: "surface",
//   //     actionTextColor: "primary",
//   //     disabledActionTextColor: "disabled",
//   //     contentTextStyle: "label-medium",
//   //     elevation: 6.0,
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(0.0),
//   //         topRight: Radius.circular(0.0),
//   //         bottomLeft: Radius.circular(0.0),
//   //         bottomRight: Radius.circular(0.0),
//   //       ),
//   //     ),
//   //     behavior: SnackBarBehavior.floating,
//   //     width: 0.0,
//   //     insetPadding: EdgeInsets.only(
//   //       left: 16.0,
//   //       top: 8.0,
//   //       right: 16.0,
//   //       bottom: 8.0,
//   //     ),
//   //     showCloseIcon: true,
//   //     closeIconColor: "onSurface",
//   //     actionOverflowThreshold: 0.2,
//   //     actionBackgroundColor: "primary",
//   //     disabledActionBackgroundColor: "outline",
//   //   );
//   // }

//   SnackBarThemeData asSnackBarThemeData({String? styleTypeName}) {
//     return SnackBarThemeData(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       actionTextColor:
//           actionTextColor_themeColorString?.toColor(styleType: styleTypeName),
//       disabledActionTextColor: disabledActionTextColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       contentTextStyle: contentTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       elevation: elevation_double,
//       shape:
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       behavior: behavior_enum_snackBarBehavior,
//       width: width_double,
//       insetPadding:
//           insetPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       showCloseIcon: showCloseIcon_bool,
//       actionOverflowThreshold: actionOverflowThreshold_double,
//       actionBackgroundColor: actionBackgroundColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       disabledActionBackgroundColor:
//           disabledActionBackgroundColor_themeColorString?.toColor(
//               styleType: styleTypeName,),
//     );
//   }
// }
