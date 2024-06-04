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
    this.indicator_boxDecoration,
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

  TabBarTheme asTabBarTheme({String? styleTypeName}) {
    return TabBarTheme(
      indicator: indicator_boxDecoration?.asBoxDecoration(
        styleTypeName: styleTypeName,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
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
    );
  }

  // static const empty = TabBarModel(id: "");

  // static const tabBarOne = TabBarModel(
  // id: "tabBarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const tabBarTwo = TabBarModel(
  // id: "tabBarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const tabBarThree = TabBarModel(
  // id: "tabBarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<TabBarModel> fakeData = [
  // tabBarOne,
  // tabBarTwo,
  // tabBarThree,
  // ];
}

// part "tab_bar_model.freezed.dart";
// part "tab_bar_model.g.dart";

// @freezed
// class TabBarModel with _$TabBarModel {
//   const factory TabBarModel({
//     // TODO: Set up DecorationModel that can also be other types of decoration
//     BoxDecorationModel? indicator_boxDecoration,
//     ThemeColorString? indicatorColor_themeColorString,
//     ThemeColorString? dividerColor_themeColorString,
//     TabBarIndicatorSize? indicatorSize_enum_tabBarIndicatorSize,
//     double? dividerHeight_double,
//     ThemeColorString? labelColor_themeColorString,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? labelPadding_edgeInsets,
//     TextStyleString? labelStyle_textStyleString,
//     ThemeColorString? unselectedLabelColor_themeColorString,
//     TextStyleString? unselectedLabelStyle_textStyleString,
//     ThemeColorString? overlayColor_themeColorString,
//     TabAlignment? tabAlignment_enum_tabAlignment,
//   }) = _TabBarModel;

//   const TabBarModel._();

//   factory TabBarModel.fromJson(Map<String, dynamic> json) => _$TabBarModelFromJson(json);

//   // static TabBarModel defaultTabBarModel() {
//   //   return TabBarModel(
//   //     indicator: {
//   //       BoxBorderType.all: BoxDecorationModel.defaultBoxDecorationModel().asBoxDecoration(),
//   //     },
//   //     indicatorColor: "primary",
//   //     dividerColor: "surface",
//   //     dividerHeight: 0.0,
//   //     labelColor: "primary",
//   //     labelPadding: const EdgeInsets.only(
//   //       left: 8.0,
//   //       right: 8.0,
//   //       bottom: 8.0,
//   //       top: 8.0,
//   //     ),
//   //     labelStyle: "body-small",
//   //     unselectedLabelColor: "surface",
//   //     unselectedLabelStyle: "body-small",
//   //     overlayColor: "surface",
//   //     tabAlignment: TabAlignment.center,
//   //   );
//   // }

//   TabBarTheme asTabBarTheme({String? styleTypeName}) {
//     return TabBarTheme(
//       indicator: indicator_boxDecoration?.asBoxDecoration(
//         styleTypeName: styleTypeName,
//       ),
//       indicatorSize: TabBarIndicatorSize.tab,
//       indicatorColor: indicatorColor_themeColorString?.toColor(styleType: styleTypeName),
//       labelColor: labelColor_themeColorString?.toColor(styleType: styleTypeName),
//       labelPadding: labelPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
//       unselectedLabelColor: unselectedLabelColor_themeColorString?.toColor(
//         styleType: styleTypeName,
//       ),
//       unselectedLabelStyle: unselectedLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
//       overlayColor: MaterialStateProperty.all(
//         overlayColor_themeColorString?.toColor(styleType: styleTypeName),
//       ),
//       tabAlignment: tabAlignment_enum_tabAlignment,
//     );
//   }
// }
