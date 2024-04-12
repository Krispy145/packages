import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/data/models/general/size_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'navigation_drawer_model.freezed.dart';
part 'navigation_drawer_model.g.dart';

@freezed
class NavigationDrawerModel with _$NavigationDrawerModel {
  const factory NavigationDrawerModel({
    double? tileHeight_double,
    ThemeColorString? backgroundColor_themeColorString,
    double? elevation_double,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    ThemeColorString? indicatorColor_themeColorString,
    // @OutlinedBorderConverter()
    @Default(ShapeBorderModel()) ShapeBorderModel? indicatorShape_shapeBorder,
    @Default(SizeModel()) SizeModel? indicatorSize_size,
    TextStyleString? labelTextStyle_textStyleString,
  }) = _NavigationDrawerModel;

  const NavigationDrawerModel._();

  factory NavigationDrawerModel.fromJson(Map<String, dynamic> json) => _$NavigationDrawerModelFromJson(json);

  // static NavigationDrawerModel defaultNavigationDrawerModel() {
  //   return const NavigationDrawerModel(
  //     tileHeight: 48.0,
  //     backgroundColor: "surface",
  //     elevation: 16.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     indicatorColor: "primary",
  //     indicatorShape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     indicatorSize: Size(4.0, 4.0),
  //     labelTextStyle: "body-medium",
  //   );
  // }

  NavigationDrawerThemeData asNavigationDrawerThemeData({String? styleTypeName}) {
    return NavigationDrawerThemeData(
      tileHeight: tileHeight_double,
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      indicatorSize: indicatorSize_size?.asSize(styleTypeName: styleTypeName),
      labelTextStyle: MaterialStateProperty.all(labelTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
    );
  }
}
