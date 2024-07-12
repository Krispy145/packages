// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "border_side_model.mapper.dart";

@MappableEnum()
enum BorderStyleType {
  none,
  solid;

  BorderStyle get borderStyle {
    switch (this) {
      case BorderStyleType.none:
        return BorderStyle.none;
      case BorderStyleType.solid:
        return BorderStyle.solid;
    }
  }
}

@MappableClass()
class BorderSideModel with BorderSideModelMappable {
  final ThemeColorString? color_themeColorString;
  final double? width_double;
  final BorderStyleType? style_enum_borderStyle;
  final double? strokeAlign_double;

  const BorderSideModel({
    this.color_themeColorString,
    this.width_double,
    this.style_enum_borderStyle,
    this.strokeAlign_double,
  });

  static const fromMap = BorderSideModelMapper.fromMap;
  static const fromJson = BorderSideModelMapper.fromJson;

  static const BorderSideModel empty = BorderSideModel(
    width_double: 0,
    style_enum_borderStyle: BorderStyleType.none,
    strokeAlign_double: 0,
  );

  BorderSide? asBorderSide({String? styleTypeName}) {
    if (![color_themeColorString, width_double, style_enum_borderStyle, strokeAlign_double].any((element) => element != null)) {
      return null;
    }
    return BorderSide(
      color: color_themeColorString?.toColor() ?? Colors.transparent,
      width: width_double ?? 0,
      style: style_enum_borderStyle?.borderStyle ?? BorderStyleType.solid.borderStyle,
      strokeAlign: strokeAlign_double ?? BorderSide.strokeAlignInside,
    );
  }
  // static const empty = BorderSideModel(id: "");

  // static const borderSideOne = BorderSideModel(
  // id: "borderSideOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const borderSideTwo = BorderSideModel(
  // id: "borderSideTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const borderSideThree = BorderSideModel(
  // id: "borderSideThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BorderSideModel> fakeData = [
  // borderSideOne,
  // borderSideTwo,
  // borderSideThree,
  // ];
}

// import "package:flutter/material.dart";
// import "package:freezed_annotation/freezed_annotation.dart";
// import "package:theme/extensions/theme_color_string.dart";

// part "border_side_model.freezed.dart";
// part "border_side_model.g.dart";

// @unfreezed
// class BorderSideModel with _$BorderSideModel {
//   const factory BorderSideModel({
//     final ThemeColorString? color_themeColorString,
//     final double? width_double,
//     final BorderStyle? style_enum_borderStyle,
//     final double? strokeAlign_double,
//   }) = _BorderSideModel;

//   const BorderSideModel._();

//   factory BorderSideModel.fromJson(Map<String, dynamic> json) =>
//       _$BorderSideModelFromJson(json);

//   BorderSide asBorderSide({String? styleTypeName}) {
//     return BorderSide(
//       color: color_themeColorString?.toColor() ?? const Color(0xFF000000),
//       width: width_double ?? 1.0,
//       style: style_enum_borderStyle ?? BorderStyle.solid,
//       strokeAlign: strokeAlign_double ?? BorderSide.strokeAlignInside,
//     );
//   }
// }
