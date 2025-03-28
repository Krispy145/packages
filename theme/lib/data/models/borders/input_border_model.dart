// ignore_for_file: non_constant_identifier_names

// part "input_border_model.freezed.dart";
// part "input_border_model.g.dart";

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/borders/border_side_model.dart";

part "input_border_model.mapper.dart";

@MappableEnum()
enum InputBorderType {
  none,
  outlined,
  underlined;
}

@MappableClass()
class InputBorderModel with InputBorderModelMappable {
  const InputBorderModel({
    this.type_enum_inputBorderType = InputBorderType.none,
    this.borderRadius_borderRadius = const BorderRadiusModel(),
    this.borderSide_borderSide = const BorderSideModel(),
    this.gapPadding_double,
  });

  @MappableValue(InputBorderType.none)
  final InputBorderType? type_enum_inputBorderType;
  @MappableValue(BorderRadiusModel())
  final BorderRadiusModel? borderRadius_borderRadius;
  @MappableValue(BorderSideModel())
  final BorderSideModel? borderSide_borderSide;
  final double? gapPadding_double;

  InputBorder? asInputBorder({String? styleTypeName}) {
    final borderRadius = borderRadius_borderRadius?.asBorderRadius(
          styleTypeName: styleTypeName,
        ) ??
        BorderRadius.zero;
    final borderSide =
        borderSide_borderSide?.asBorderSide(styleTypeName: styleTypeName) ??
            BorderSide.none;
    switch (type_enum_inputBorderType) {
      case InputBorderType.none:
        return InputBorder.none;
      case InputBorderType.outlined:
        return OutlineInputBorder(
          borderSide: borderSide,
          borderRadius: borderRadius,
          gapPadding: gapPadding_double ?? 4,
        );
      case InputBorderType.underlined:
        return UnderlineInputBorder(
          borderSide: borderSide,
          borderRadius: borderRadius,
        );
      case null:
        return null;
    }
  }

  static const fromMap = InputBorderModelMapper.fromMap;
  static const fromJson = InputBorderModelMapper.fromJson;

  // static const empty = Model(id: "");

  // static const One = Model(
  // id: "OneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const Two = Model(
  // id: "TwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const Three = Model(
  // id: "ThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<Model> fakeData = [
  // One,
  // Two,
  // Three,
  // ];
}

// @freezed
// class InputBorderModel with _$InputBorderModel {
//   const factory InputBorderModel({
//     @MappableValue(InputBorderType.none) InputBorderType? type_enum_inputBorderType,
//     @MappableValue(BorderRadiusModel()) BorderRadiusModel? borderRadius_borderRadius,
//     @MappableValue(BorderSideModel()) BorderSideModel? borderSide_borderSide,
//     double? gapPadding_double,
//   }) = _InputBorderModel;

//   const InputBorderModel._();

//   factory InputBorderModel.fromJson(Map<String, dynamic> json) =>
//       _$InputBorderModelFromJson(json);

//   InputBorder? asInputBorder({String? styleTypeName}) {
//     final borderRadius = borderRadius_borderRadius?.asBorderRadius(
//             styleTypeName: styleTypeName,) ??
//         BorderRadius.zero;
//     final borderSide =
//         borderSide_borderSide?.asBorderSide(styleTypeName: styleTypeName) ??
//             BorderSide.none;
//     switch (type_enum_inputBorderType) {
//       case InputBorderType.none:
//         return InputBorder.none;
//       case InputBorderType.outlined:
//         return OutlineInputBorder(
//           borderSide: borderSide,
//           borderRadius: borderRadius,
//           gapPadding: gapPadding_double ?? 4,
//         );
//       case InputBorderType.underlined:
//         return UnderlineInputBorder(
//           borderSide: borderSide,
//           borderRadius: borderRadius,
//         );
//       case null:
//         return null;
//     }
//   }
// }
