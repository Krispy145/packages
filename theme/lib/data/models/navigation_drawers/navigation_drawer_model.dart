import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/domain/converters/sizes/size.dart';
import 'package:theme/extensions/string.dart';

part 'navigation_drawer_model.freezed.dart';
part 'navigation_drawer_model.g.dart';

@freezed
class NavigationDrawerModel with _$NavigationDrawerModel {
  const factory NavigationDrawerModel({
    double? tileHeight,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    @OutlinedBorderConverter() OutlinedBorder? indicatorShape,
    @SizeConverter() Size? indicatorSize,
    String? labelTextStyle,
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
      tileHeight: tileHeight,
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      indicatorColor: indicatorColor?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape,
      indicatorSize: indicatorSize,
      labelTextStyle: MaterialStateProperty.all(labelTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
    );
  }
}
