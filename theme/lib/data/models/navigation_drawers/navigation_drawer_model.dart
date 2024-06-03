// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/data/models/general/size_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "navigation_drawer_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class NavigationDrawerModel with NavigationDrawerModelMappable {
  final double? tileHeight_double;
  final ThemeColorString? backgroundColor_themeColorString;
  final double? elevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? indicatorColor_themeColorString;
  @MappableValue(ShapeBorderModel())
  final ShapeBorderModel? indicatorShape_shapeBorder;
  @MappableValue(SizeModel())
  final SizeModel? indicatorSize_size;
  final TextStyleString? labelTextStyle_textStyleString;

  const NavigationDrawerModel({
    this.tileHeight_double,
    this.backgroundColor_themeColorString,
    this.elevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.indicatorColor_themeColorString,
    this.indicatorShape_shapeBorder = const ShapeBorderModel(),
    this.indicatorSize_size = const SizeModel(),
    this.labelTextStyle_textStyleString,
  });

  static const fromMap = NavigationDrawerModelMapper.fromMap;
  static const fromJson = NavigationDrawerModelMapper.fromJson;

  NavigationDrawerThemeData asNavigationDrawerThemeData({
    String? styleTypeName,
  }) {
    return NavigationDrawerThemeData(
      tileHeight: tileHeight_double,
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(
        styleTypeName: styleTypeName,
      ),
      indicatorSize: indicatorSize_size?.asSize(styleTypeName: styleTypeName),
      labelTextStyle: WidgetStateProperty.all(
        labelTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
    );
  }

  // static const empty = NavigationDrawerModel(id: "");

  // static const navigationDrawerOne = NavigationDrawerModel(
  // id: "navigationDrawerOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const navigationDrawerTwo = NavigationDrawerModel(
  // id: "navigationDrawerTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const navigationDrawerThree = NavigationDrawerModel(
  // id: "navigationDrawerThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<NavigationDrawerModel> fakeData = [
  // navigationDrawerOne,
  // navigationDrawerTwo,
  // navigationDrawerThree,
  // ];
}

// part "navigation_drawer_model.freezed.dart";
// part "navigation_drawer_model.g.dart";

// @freezed
// class NavigationDrawerModel with _$NavigationDrawerModel {
//   const factory NavigationDrawerModel({
//     double? tileHeight_double,
//     ThemeColorString? backgroundColor_themeColorString,
//     double? elevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ThemeColorString? indicatorColor_themeColorString,
//     // @OutlinedBorderConverter()
//     @MappableValue(ShapeBorderModel()) ShapeBorderModel? indicatorShape_shapeBorder,
//     @MappableValue(SizeModel()) SizeModel? indicatorSize_size,
//     TextStyleString? labelTextStyle_textStyleString,
//   }) = _NavigationDrawerModel;

//   const NavigationDrawerModel._();

//   factory NavigationDrawerModel.fromJson(Map<String, dynamic> json) =>
//       _$NavigationDrawerModelFromJson(json);

//   // static NavigationDrawerModel defaultNavigationDrawerModel() {
//   //   return const NavigationDrawerModel(
//   //     tileHeight: 48.0,
//   //     backgroundColor: "surface",
//   //     elevation: 16.0,
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     indicatorColor: "primary",
//   //     indicatorShape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(0.0),
//   //         topRight: Radius.circular(0.0),
//   //         bottomLeft: Radius.circular(0.0),
//   //         bottomRight: Radius.circular(0.0),
//   //       ),
//   //     ),
//   //     indicatorSize: Size(4.0, 4.0),
//   //     labelTextStyle: "body-medium",
//   //   );
//   // }

//   NavigationDrawerThemeData asNavigationDrawerThemeData(
//       {String? styleTypeName,}) {
//     return NavigationDrawerThemeData(
//       tileHeight: tileHeight_double,
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       indicatorColor:
//           indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
//       indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(
//           styleTypeName: styleTypeName,),
//       indicatorSize: indicatorSize_size?.asSize(styleTypeName: styleTypeName),
//       labelTextStyle: MaterialStateProperty.all(labelTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,),
//     );
//   }
// }
