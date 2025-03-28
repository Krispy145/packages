// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "drawer_model.mapper.dart";

@MappableClass()
class DrawerModel with DrawerModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? scrimColor_themeColorString;
  final double? elevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? endShape_outlinedBorder;
  final double? width_double;

  const DrawerModel({
    this.backgroundColor_themeColorString,
    this.scrimColor_themeColorString,
    this.elevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.shape_outlinedBorder = const OutlinedBorderModel(),
    this.endShape_outlinedBorder = const OutlinedBorderModel(),
    this.width_double,
  });

  static const fromMap = DrawerModelMapper.fromMap;
  static const fromJson = DrawerModelMapper.fromJson;

  DrawerThemeData asDrawerThemeData({String? styleTypeName}) {
    return DrawerThemeData(
      backgroundColor:
          backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      scrimColor:
          scrimColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      shadowColor:
          shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor:
          surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      shape:
          shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      endShape: endShape_outlinedBorder?.asOutlinedBorder(
        styleTypeName: styleTypeName,
      ),
      width: width_double,
    );
  }

  // static const empty = DrawerModel(id: "");

  // static const drawerOne = DrawerModel(
  // id: "drawerOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const drawerTwo = DrawerModel(
  // id: "drawerTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const drawerThree = DrawerModel(
  // id: "drawerThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<DrawerModel> fakeData = [
  // drawerOne,
  // drawerTwo,
  // drawerThree,
  // ];
}

// part "drawer_model.freezed.dart";
// part "drawer_model.g.dart";

// @freezed
// class DrawerModel with _$DrawerModel {
//   const factory DrawerModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? scrimColor_themeColorString,
//     double? elevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     // @OutlinedBorderConverter()
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     // @OutlinedBorderConverter()
//     @MappableValue(OutlinedBorderModel())
//     OutlinedBorderModel? endShape_outlinedBorder,
//     double? width_double,
//   }) = _DrawerModel;

//   const DrawerModel._();

//   factory DrawerModel.fromJson(Map<String, dynamic> json) =>
//       _$DrawerModelFromJson(json);

//   DrawerThemeData asDrawerThemeData({String? styleTypeName}) {
//     return DrawerThemeData(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       scrimColor:
//           scrimColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       shape:
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       endShape: endShape_outlinedBorder?.asOutlinedBorder(
//           styleTypeName: styleTypeName,),
//       width: width_double,
//     );
//   }
// }
