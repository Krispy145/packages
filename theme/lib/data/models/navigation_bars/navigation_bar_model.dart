import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/navigation/destination_label.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'navigation_bar_model.freezed.dart';
part 'navigation_bar_model.g.dart';

@freezed
class NavigationBarModel with _$NavigationBarModel {
  const factory NavigationBarModel({
    double? height,
    String? backgroundColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? indicatorColor,
    @OutlinedBorderConverter() OutlinedBorder? indicatorShape,
    String? labelTextStyle,
    @NavigationDestinationLabelConverter() NavigationDestinationLabelBehavior? labelBehavior,
  }) = _NavigationBarModel;

  const NavigationBarModel._();

  factory NavigationBarModel.fromJson(Map<String, dynamic> json) => _$NavigationBarModelFromJson(json);

  // static NavigationBarModel defaultNavigationBarModel() {
  //   return const NavigationBarModel(
  //     height: 56.0,
  //     backgroundColor: "surface",
  //     elevation: 8.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     indicatorColor: "primary",
  //     indicatorShape: null,
  //     labelTextStyle: "body-medium",
  //     labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  //   );
  // }

  NavigationBarThemeData asNavigationBarThemeData({String? styleTypeName}) {
    return NavigationBarThemeData(
      height: height,
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      indicatorColor: indicatorColor?.toColor(styleType: styleTypeName),
      indicatorShape: indicatorShape,
      labelTextStyle: MaterialStateProperty.all(labelTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      labelBehavior: labelBehavior,
    );
  }
}
