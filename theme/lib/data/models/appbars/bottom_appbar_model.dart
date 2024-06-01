import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "bottom_appbar_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class BottomAppbarModel with BottomAppbarModelMappable {
  final ThemeColorString? color_themeColorString;
  final double? elevation_double;
  final double? height_double;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;

  const BottomAppbarModel({
    required this.color_themeColorString,
    required this.elevation_double,
    required this.height_double,
    required this.surfaceTintColor_themeColorString,
    required this.shadowColor_themeColorString,
    required this.padding_edgeInsets,
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
