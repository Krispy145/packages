// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/box_decorations/box_decoration_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "tab_bar_model.mapper.dart";

@MappableClass()
class TabBarModel with TabBarModelMappable {
  @MappableValue(BoxDecorationModel())
  final BoxDecorationModel? indicator_boxDecoration;
  final ThemeColorString? indicatorColor_themeColorString;
  final ThemeColorString? dividerColor_themeColorString;
  final TabBarIndicatorSize? indicatorSize_enum_tabBarIndicatorSize;
  final double? dividerHeight_double;
  final ThemeColorString? labelColor_themeColorString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? labelPadding_edgeInsets;
  final TextStyleString? labelStyle_textStyleString;
  final ThemeColorString? unselectedLabelColor_themeColorString;
  final TextStyleString? unselectedLabelStyle_textStyleString;
  final ThemeColorString? overlayColor_themeColorString;
  final TabAlignment? tabAlignment_enum_tabAlignment;

  const TabBarModel({
    this.indicator_boxDecoration = const BoxDecorationModel(),
    this.indicatorColor_themeColorString,
    this.dividerColor_themeColorString,
    this.indicatorSize_enum_tabBarIndicatorSize,
    this.dividerHeight_double,
    this.labelColor_themeColorString,
    this.labelPadding_edgeInsets = const EdgeInsetsModel(),
    this.labelStyle_textStyleString,
    this.unselectedLabelColor_themeColorString,
    this.unselectedLabelStyle_textStyleString,
    this.overlayColor_themeColorString,
    this.tabAlignment_enum_tabAlignment,
  });

  static const fromMap = TabBarModelMapper.fromMap;
  static const fromJson = TabBarModelMapper.fromJson;

  TabBarThemeData asTabBarThemeData({String? styleTypeName}) {
    return TabBarThemeData(
      indicator: indicator_boxDecoration?.asBoxDecoration(
        styleTypeName: styleTypeName,
      ),
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
      labelColor: labelColor_themeColorString?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      unselectedLabelColor: unselectedLabelColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      unselectedLabelStyle: unselectedLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      tabAlignment: tabAlignment_enum_tabAlignment,
      splashFactory: NoSplash.splashFactory,
      dividerColor: dividerColor_themeColorString?.toColor(styleType: styleTypeName),
      dividerHeight: dividerHeight_double,
    );
  }
}
