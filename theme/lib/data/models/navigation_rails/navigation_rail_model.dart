import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/navigation/rail_label_type.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'navigation_rail_model.freezed.dart';
part 'navigation_rail_model.g.dart';

@freezed
class NavigationRailModel with _$NavigationRailModel {
  const factory NavigationRailModel({
    String? backgroundColor,
    double? elevation,
    String? unselectedLabelTextStyle,
    String? selectedLabelTextStyle,
    double? groupAlignment,
    @NavigationRailLabelConverter() NavigationRailLabelType? labelType,
    bool? useIndicator,
    String? indicatorColor,
    @OutlinedBorderConverter() OutlinedBorder? indicatorShape,
    double? minWidth,
    double? minExtendedWidth,
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
        backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
        elevation: elevation,
        unselectedLabelTextStyle: unselectedLabelTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
        selectedLabelTextStyle: selectedLabelTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
        groupAlignment: groupAlignment,
        labelType: labelType,
        useIndicator: useIndicator,
        indicatorColor: indicatorColor?.toColor(styleType: styleTypeName),
        indicatorShape: indicatorShape,
        minWidth: minWidth,
        minExtendedWidth: minExtendedWidth);
  }
}
