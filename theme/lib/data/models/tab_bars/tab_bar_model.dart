import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/tab.dart';
import 'package:theme/domain/converters/box/borders/border.dart';
import 'package:theme/domain/converters/box_decoration/box_decoration.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/string.dart';

part 'tab_bar_model.freezed.dart';
part 'tab_bar_model.g.dart';

@freezed
class TabBarModel with _$TabBarModel {
  const factory TabBarModel({
    @BoxDecorationConverter() Map<BoxBorderType, BoxDecoration?>? indicator,
    String? indicatorColor,
    String? dividerColor,
    double? dividerHeight,
    String? labelColor,
    @EdgeInsetsConverter() EdgeInsets? labelPadding,
    String? labelStyle,
    String? unselectedLabelColor,
    String? unselectedLabelStyle,
    String? overlayColor,
    @TabAlignmentConverter() TabAlignment? tabAlignment,
  }) = _TabBarModel;

  const TabBarModel._();

  factory TabBarModel.fromJson(Map<String, dynamic> json) => _$TabBarModelFromJson(json);

  // static TabBarModel defaultTabBarModel() {
  //   return TabBarModel(
  //     indicator: {
  //       BoxBorderType.all: BoxDecorationModel.defaultBoxDecorationModel().asBoxDecoration(),
  //     },
  //     indicatorColor: "primary",
  //     dividerColor: "surface",
  //     dividerHeight: 0.0,
  //     labelColor: "primary",
  //     labelPadding: const EdgeInsets.only(
  //       left: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //       top: 8.0,
  //     ),
  //     labelStyle: "body-small",
  //     unselectedLabelColor: "surface",
  //     unselectedLabelStyle: "body-small",
  //     overlayColor: "surface",
  //     tabAlignment: TabAlignment.center,
  //   );
  // }

  TabBarTheme asTabBarTheme({String? styleTypeName}) {
    return TabBarTheme(
      indicator: indicator?.values.first,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorColor: indicatorColor?.toColor(styleType: styleTypeName),
      labelColor: labelColor?.toColor(styleType: styleTypeName),
      labelPadding: labelPadding,
      labelStyle: labelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      unselectedLabelColor: unselectedLabelColor?.toColor(styleType: styleTypeName),
      unselectedLabelStyle: unselectedLabelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      overlayColor: MaterialStateProperty.all(overlayColor?.toColor(styleType: styleTypeName)),
      tabAlignment: tabAlignment,
    );
  }
}
