import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "bottom_appbar_model.mapper.dart";

@MappableClass()
class BottomAppbarModel with BottomAppbarModelMappable {
  final ThemeColorString? color_themeColorString;
  final double? elevation_double;
  final double? height_double;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;

  const BottomAppbarModel({
    this.color_themeColorString,
    this.elevation_double,
    this.height_double,
    this.surfaceTintColor_themeColorString,
    this.shadowColor_themeColorString,
    this.padding_edgeInsets,
  });

  static const fromMap = BottomAppbarModelMapper.fromMap;
  static const fromJson = BottomAppbarModelMapper.fromJson;

  BottomAppBarTheme asBottomAppBarTheme({String? styleTypeName}) {
    return BottomAppBarTheme(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      height: height_double,
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
    );
  }

  // static const empty = BottomAppbarModel(id: "");

  // static const bottomAppbarOne = BottomAppbarModel(
  // id: "bottomAppbarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const bottomAppbarTwo = BottomAppbarModel(
  // id: "bottomAppbarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const bottomAppbarThree = BottomAppbarModel(
  // id: "bottomAppbarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BottomAppbarModel> fakeData = [
  // bottomAppbarOne,
  // bottomAppbarTwo,
  // bottomAppbarThree,
  // ];
}

// ignore_for_file: non_constant_identifier_names

// import "package:flutter/material.dart";
// 
// import "package:theme/data/models/edge_insets_model.dart";
// import "package:theme/extensions/theme_color_string.dart";

// part "bottom_appbar_model.freezed.dart";
// part "bottom_appbar_model.g.dart";

// @freezed
// class BottomAppbarModel with _$BottomAppbarModel {
//   const factory BottomAppbarModel({
//     ThemeColorString? color_themeColorString,
//     double? elevation_double,
//     double? height_double,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     ThemeColorString? shadowColor_themeColorString,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//   }) = _BottomAppbarModel;

//   const BottomAppbarModel._();

//   factory BottomAppbarModel.fromJson(Map<String, dynamic> json) =>
//       _$BottomAppbarModelFromJson(json);

//   // static BottomAppbarModel defaultBottomAppbarModel() {
//   //   return const BottomAppbarModel(
//   //     color: "surface",
//   //     elevation: 8.0,
//   //     height: 56.0,
//   //     surfaceTintColor: "surface",
//   //     shadowColor: "outline",
//   //     padding: EdgeInsets.only(
//   //       left: 8.0,
//   //       top: 8.0,
//   //       right: 8.0,
//   //       bottom: 8.0,
//   //     ),
//   //   );
//   // }

//   BottomAppBarTheme asBottomAppBarTheme({String? styleTypeName}) {
//     return BottomAppBarTheme(
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       height: height_double,
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//     );
//   }
// }
