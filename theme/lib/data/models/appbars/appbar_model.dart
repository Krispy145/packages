// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "appbar_model.mapper.dart";

@MappableClass()
class AppbarModel with AppbarModelMappable {
  final ThemeColorString? color_themeColorString;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? foregroundColor_themeColorString;
  final double? elevation_double;
  final double? scrolledUnderElevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ShapeBorderModel? shape_shapeBorder;
  final bool? centerTitle_bool;
  final double? titleSpacing_double;
  final double? toolbarHeight_double;
  final TextStyleString? toolbarTextStyle_textStyleString;
  final TextStyleString? titleTextStyle_textStyleString;

  const AppbarModel({
    this.color_themeColorString,
    this.backgroundColor_themeColorString,
    this.foregroundColor_themeColorString,
    this.elevation_double,
    this.scrolledUnderElevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.shape_shapeBorder,
    this.centerTitle_bool,
    this.titleSpacing_double,
    this.toolbarHeight_double,
    this.toolbarTextStyle_textStyleString,
    this.titleTextStyle_textStyleString,
  });

  static const fromMap = AppbarModelMapper.fromMap;
  static const fromJson = AppbarModelMapper.fromJson;

  AppBarTheme asAppBarTheme({String? styleTypeName}) {
    return AppBarTheme(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      foregroundColor: foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      centerTitle: centerTitle_bool,
      titleSpacing: titleSpacing_double,
      toolbarHeight: toolbarHeight_double,
      toolbarTextStyle: toolbarTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      titleTextStyle: titleTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle.copyWith(
            color: foregroundColor_themeColorString?.toColor(
              styleType: styleTypeName,
            ),
          ),
    );
  }

  // static const empty = AppbarModel(id: "");

  // static const appbarOne = AppbarModel(
  // id: "appbarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const appbarTwo = AppbarModel(
  // id: "appbarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const appbarThree = AppbarModel(
  // id: "appbarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<AppbarModel> fakeData = [
  // appbarOne,
  // appbarTwo,
  // appbarThree,
  // ];
}

// import "package:flutter/material.dart";
// import "package:theme/data/models/borders/shape_border_model.dart";
// import "package:theme/extensions/text_style_string.dart";
// import "package:theme/extensions/theme_color_string.dart";

// part "appbar_model.freezed.dart";
// part "appbar_model.g.dart";

// @freezed
// class AppbarModel with _$AppbarModel {
//   const factory AppbarModel({
//     ThemeColorString? color_themeColorString,
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? foregroundColor_themeColorString,
//     double? elevation_double,
//     double? scrolledUnderElevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ShapeBorderModel? shape_shapeBorder,
//     bool? centerTitle_bool,
//     double? titleSpacing_double,
//     double? toolbarHeight_double,
//     TextStyleString? toolbarTextStyle_textStyleString,
//     TextStyleString? titleTextStyle_textStyleString,
//   }) = _AppbarModel;

//   const AppbarModel._();

//   factory AppbarModel.fromJson(Map<String, dynamic> json) =>
//       _$AppbarModelFromJson(json);
//   // static AppbarModel defaultAppbarModel() {
//   //   return const AppbarModel(
//   //     backgroundColor: "primary",
//   //     foregroundColor: "primaryContainer",
//   //     elevation: 4,
//   //     scrolledUnderElevation: 0,
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     shape: RoundedRectangleBorder(),
//   //     centerTitle: true,
//   //     titleSpacing: NavigationToolbar.kMiddleSpacing,
//   //     toolbarHeight: 80, //  NavigationToolbar.kMiddleSpacing,
//   //     toolbarTextStyle: "label-medium",
//   //     titleTextStyle: "title-medium",
//   //   );
//   // }

//   AppBarTheme asAppBarTheme({String? styleTypeName}) {
//     return AppBarTheme(
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       foregroundColor:
//           foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
//       centerTitle: centerTitle_bool,
//       titleSpacing: titleSpacing_double,
//       toolbarHeight: toolbarHeight_double,
//       toolbarTextStyle: toolbarTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       titleTextStyle: titleTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle
//           .copyWith(
//             color: foregroundColor_themeColorString?.toColor(
//                 styleType: styleTypeName,),
//           ),
//     );
//   }
// }
