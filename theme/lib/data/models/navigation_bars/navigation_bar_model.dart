// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "navigation_bar_model.mapper.dart";

@MappableClass()
class NavigationBarModel with NavigationBarModelMappable {
  final double? height_double;
  final ThemeColorString? backgroundColor_themeColorString;
  final double? elevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? indicatorColor_themeColorString;
  // @OutlinedBorderConverter()
  final ShapeBorderModel? indicatorShape_shapeBorder;
  final TextStyleString? labelTextStyle_textStyleString;
  // @NavigationDestinationLabelConverter()
  final NavigationDestinationLabelBehavior? labelBehavior_enum_navigationDestinationLabelBehavior;

  const NavigationBarModel({
    this.height_double,
    this.backgroundColor_themeColorString,
    this.elevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.indicatorColor_themeColorString,
    this.indicatorShape_shapeBorder,
    this.labelTextStyle_textStyleString,
    this.labelBehavior_enum_navigationDestinationLabelBehavior,
  });

  static const fromMap = NavigationBarModelMapper.fromMap;
  static const fromJson = NavigationBarModelMapper.fromJson;

  NavigationBarThemeData asNavigationBarThemeData({String? styleTypeName}) {
    return NavigationBarThemeData(
      height: height_double,
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(
        styleTypeName: styleTypeName,
      ),
      labelTextStyle: WidgetStateProperty.all(
        labelTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      labelBehavior: labelBehavior_enum_navigationDestinationLabelBehavior,
    );
  }

  // static const empty = NavigationBarModel(id: "");

  // static const navigationBarOne = NavigationBarModel(
  // id: "navigationBarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const navigationBarTwo = NavigationBarModel(
  // id: "navigationBarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const navigationBarThree = NavigationBarModel(
  // id: "navigationBarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<NavigationBarModel> fakeData = [
  // navigationBarOne,
  // navigationBarTwo,
  // navigationBarThree,
  // ];
}

// part "navigation_bar_model.freezed.dart";
// part "navigation_bar_model.g.dart";

// @freezed
// class NavigationBarModel with _$NavigationBarModel {
//   factory NavigationBarModel({
//     double? height_double,
//     ThemeColorString? backgroundColor_themeColorString,
//     double? elevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ThemeColorString? indicatorColor_themeColorString,
//     // @OutlinedBorderConverter()
//     ShapeBorderModel? indicatorShape_shapeBorder,
//     TextStyleString? labelTextStyle_textStyleString,
//     // @NavigationDestinationLabelConverter()
//     NavigationDestinationLabelBehavior?
//         labelBehavior_enum_navigationDestinationLabelBehavior,
//   }) = _NavigationBarModel;

//   const NavigationBarModel._();

//   factory NavigationBarModel.fromJson(Map<String, dynamic> json) =>
//       _$NavigationBarModelFromJson(json);

//   // static NavigationBarModel defaultNavigationBarModel() {
//   //   return const NavigationBarModel(
//   //     height: 56.0,
//   //     backgroundColor: "surface",
//   //     elevation: 8.0,
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     indicatorColor: "primary",
//   //     indicatorShape: null,
//   //     labelTextStyle: "body-medium",
//   //     labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
//   //   );
//   // }

//   NavigationBarThemeData asNavigationBarThemeData({String? styleTypeName}) {
//     return NavigationBarThemeData(
//       height: height_double,
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
//       labelTextStyle: MaterialStateProperty.all(labelTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,),
//       labelBehavior: labelBehavior_enum_navigationDestinationLabelBehavior,
//     );
//   }
// }
