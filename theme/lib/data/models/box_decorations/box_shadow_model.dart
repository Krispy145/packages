// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/offset_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "box_shadow_model.mapper.dart";

@MappableClass()
class BoxShadowModel with BoxShadowModelMappable {
  final ThemeColorString? color_themeColorString;
  @MappableValue(OffsetModel())
  final OffsetModel? offset_offset;
  final double? blurRadius_double;
  final double? spreadRadius_double;

  const BoxShadowModel({
    required this.color_themeColorString,
    required this.offset_offset,
    required this.blurRadius_double,
    required this.spreadRadius_double,
  });

  static const fromMap = BoxShadowModelMapper.fromMap;
  static const fromJson = BoxShadowModelMapper.fromJson;

  BoxShadow asBoxShadow({String? styleTypeName}) {
    return BoxShadow(
      color: color_themeColorString?.toColor() ?? const Color(0xFF000000),
      offset:
          offset_offset?.asOffset(styleTypeName: styleTypeName) ?? Offset.zero,
      blurRadius: blurRadius_double ?? 0.0,
      spreadRadius: spreadRadius_double ?? 0.0,
    );
  }

  // static const empty = BoxShadowModel(id: "");

  // static const boxShadowOne = BoxShadowModel(
  //   id: "boxShadowOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const boxShadowTwo = BoxShadowModel(
  //   id: "boxShadowTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const boxShadowThree = BoxShadowModel(
  //   id: "boxShadowThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<BoxShadowModel> fakeData = [
  //   boxShadowOne,
  //   boxShadowTwo,
  //   boxShadowThree,
  // ];
}

// import "package:flutter/material.dart";
//
// import "package:theme/data/models/offset_model.dart";
// import "package:theme/extensions/theme_color_string.dart";

// part "box_shadow_model.freezed.dart";
// part "box_shadow_model.g.dart";

// @freezed
// class BoxShadowModel with _$BoxShadowModel {
//   const factory BoxShadowModel({
//     ThemeColorString? color_themeColorString,
//     @MappableValue(OffsetModel()) OffsetModel? offset_offset,
//     double? blurRadius_double,
//     double? spreadRadius_double,
//   }) = _BoxShadowModel;

//   const BoxShadowModel._();

//   factory BoxShadowModel.fromJson(Map<String, dynamic> json) =>
//       _$BoxShadowModelFromJson(json);

//   BoxShadow asBoxShadow({String? styleTypeName}) {
//     return BoxShadow(
//       color: color_themeColorString?.toColor() ?? const Color(0xFF000000),
//       offset:
//           offset_offset?.asOffset(styleTypeName: styleTypeName) ?? Offset.zero,
//       blurRadius: blurRadius_double ?? 0.0,
//       spreadRadius: spreadRadius_double ?? 0.0,
//     );
//   }
// }
