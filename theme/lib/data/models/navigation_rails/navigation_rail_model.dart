// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "navigation_rail_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class NavigationRailModel with NavigationRailModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final double? elevation_double;
  final TextStyleString? unselectedLabelTextStyle_textStyleString;
  final TextStyleString? selectedLabelTextStyle_textStyleString;
  final double? groupAlignment_double;
  // @NavigationRailLabelConverter(;
  final NavigationRailLabelType? labelType_enum_navigationRailLabelType;
  final bool? useIndicator_bool;
  final ThemeColorString? indicatorColor_themeColorString;
  final ShapeBorderModel? indicatorShape_shapeBorder;
  final double? minWidth_double;
  final double? minExtendedWidth_double;

  const NavigationRailModel({
    this.backgroundColor_themeColorString,
    this.elevation_double,
    this.unselectedLabelTextStyle_textStyleString,
    this.selectedLabelTextStyle_textStyleString,
    this.groupAlignment_double,
    this.labelType_enum_navigationRailLabelType,
    this.useIndicator_bool,
    this.indicatorColor_themeColorString,
    this.indicatorShape_shapeBorder,
    this.minWidth_double,
    this.minExtendedWidth_double,
  });

  static const fromMap = NavigationRailModelMapper.fromMap;
  static const fromJson = NavigationRailModelMapper.fromJson;

  NavigationRailThemeData asNavigationRailThemeData({String? styleTypeName}) {
    return NavigationRailThemeData(
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      unselectedLabelTextStyle: unselectedLabelTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      selectedLabelTextStyle: selectedLabelTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      groupAlignment: groupAlignment_double,
      labelType: labelType_enum_navigationRailLabelType,
      useIndicator: useIndicator_bool,
      indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(
        styleTypeName: styleTypeName,
      ),
      minWidth: minWidth_double,
      minExtendedWidth: minExtendedWidth_double,
    );
  }

  // static const empty = NavigationRailModel(id: "");

  // static const navigationRailOne = NavigationRailModel(
  // id: "navigationRailOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const navigationRailTwo = NavigationRailModel(
  // id: "navigationRailTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const navigationRailThree = NavigationRailModel(
  // id: "navigationRailThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<NavigationRailModel> fakeData = [
  // navigationRailOne,
  // navigationRailTwo,
  // navigationRailThree,
  // ];
}

// part "navigation_rail_model.freezed.dart";
// part "navigation_rail_model.g.dart";

// @freezed
// class NavigationRailModel with _$NavigationRailModel {
//   const factory NavigationRailModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     double? elevation_double,
//     TextStyleString? unselectedLabelTextStyle_textStyleString,
//     TextStyleString? selectedLabelTextStyle_textStyleString,
//     double? groupAlignment_double,
//     // @NavigationRailLabelConverter()
//     NavigationRailLabelType? labelType_enum_navigationRailLabelType,
//     bool? useIndicator_bool,
//     ThemeColorString? indicatorColor_themeColorString,
//     ShapeBorderModel? indicatorShape_shapeBorder,
//     double? minWidth_double,
//     double? minExtendedWidth_double,
//   }) = _NavigationRailModel;

//   const NavigationRailModel._();

//   factory NavigationRailModel.fromJson(Map<String, dynamic> json) =>
//       _$NavigationRailModelFromJson(json);

//   // static NavigationRailModel defaultNavigationRailModel() {
//   //   return const NavigationRailModel(
//   //     backgroundColor: "surface",
//   //     elevation: 0.0,
//   //     unselectedLabelTextStyle: "body-medium",
//   //     selectedLabelTextStyle: "body-medium",
//   //     groupAlignment: 0.0,
//   //     labelType: NavigationRailLabelType.selected,
//   //     useIndicator: true,
//   //     indicatorColor: "onSurface",
//   //     indicatorShape: null,
//   //     minWidth: 72.0,
//   //     minExtendedWidth: 256.0,
//   //   );
//   // }

//   NavigationRailThemeData asNavigationRailThemeData({String? styleTypeName}) {
//     return NavigationRailThemeData(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       unselectedLabelTextStyle: unselectedLabelTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       selectedLabelTextStyle: selectedLabelTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       groupAlignment: groupAlignment_double,
//       labelType: labelType_enum_navigationRailLabelType,
//       useIndicator: useIndicator_bool,
//       indicatorColor:
//           indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
//       indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(
//           styleTypeName: styleTypeName,),
//       minWidth: minWidth_double,
//       minExtendedWidth: minExtendedWidth_double,
//     );
//   }
// }
