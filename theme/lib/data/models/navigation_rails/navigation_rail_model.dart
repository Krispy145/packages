// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'navigation_rail_model.freezed.dart';
part 'navigation_rail_model.g.dart';

@freezed
class NavigationRailModel with _$NavigationRailModel {
  const factory NavigationRailModel({
    ThemeColorString? backgroundColor_themeColorString,
    double? elevation_double,
    TextStyleString? unselectedLabelTextStyle_textStyleString,
    TextStyleString? selectedLabelTextStyle_textStyleString,
    double? groupAlignment_double,
    // @NavigationRailLabelConverter()
    NavigationRailLabelType? labelType_enum_navigationRailLabelType,
    bool? useIndicator_bool,
    ThemeColorString? indicatorColor_themeColorString,
    ShapeBorderModel? indicatorShape_shapeBorder,
    double? minWidth_double,
    double? minExtendedWidth_double,
  }) = _NavigationRailModel;

  const NavigationRailModel._();

  factory NavigationRailModel.fromJson(Map<String, dynamic> json) => _$NavigationRailModelFromJson(json);

  // static NavigationRailModel defaultNavigationRailModel() {
  //   return const NavigationRailModel(
  //     backgroundColor: "surface",
  //     elevation: 0.0,
  //     unselectedLabelTextStyle: "body-medium",
  //     selectedLabelTextStyle: "body-medium",
  //     groupAlignment: 0.0,
  //     labelType: NavigationRailLabelType.selected,
  //     useIndicator: true,
  //     indicatorColor: "onSurface",
  //     indicatorShape: null,
  //     minWidth: 72.0,
  //     minExtendedWidth: 256.0,
  //   );
  // }

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
      indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      minWidth: minWidth_double,
      minExtendedWidth: minExtendedWidth_double,
    );
  }
}
