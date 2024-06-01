// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "gradient_model.mapper.dart";

enum GradientType { linear, radial, sweep }

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GradientModel with GradientModelMappable {
  final GradientType? type_enum_gradientType;
  final List<ThemeColorString>? colors_list_themeColorString;

  const GradientModel({
    this.type_enum_gradientType,
    this.colors_list_themeColorString,
  });

  static const fromMap = GradientModelMapper.fromMap;
  static const fromJson = GradientModelMapper.fromJson;

  Gradient asGradient({String? styleTypeName}) {
    final colorsList = (colors_list_themeColorString ?? []).map((e) => e.toColor()).whereType<Color>().toList();
    switch (type_enum_gradientType) {
      case GradientType.linear:
        return LinearGradient(
          colors: colorsList,
        );
      case GradientType.radial:
        return RadialGradient(
          colors: colorsList,
        );
      case GradientType.sweep:
        return SweepGradient(
          colors: colorsList,
        );
      default:
        return LinearGradient(
          colors: colorsList,
        );
    }
  }

  // static const empty = GradientModel(id: "");

  // static const gradientOne = GradientModel(
  // id: "gradientOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const gradientTwo = GradientModel(
  // id: "gradientTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const gradientThree = GradientModel(
  // id: "gradientThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<GradientModel> fakeData = [
  // gradientOne,
  // gradientTwo,
  // gradientThree,
  // ];
}

// part "gradient_model.freezed.dart";
// part "gradient_model.g.dart";

// enum GradientType { linear, radial, sweep }

// @freezed
// class GradientModel with _$GradientModel {
//   const factory GradientModel({
//     final GradientType? type_enum_gradientType,
//     final List<ThemeColorString>? colors_list_themeColorString,
//   }) = _GradientModel;

//   const GradientModel._();

//   factory GradientModel.fromJson(Map<String, dynamic> json) =>
//       _$GradientModelFromJson(json);

//   Gradient asGradient({String? styleTypeName}) {
//     final colorsList = (colors_list_themeColorString ?? [])
//         .map((e) => e.toColor())
//         .whereType<Color>()
//         .toList();
//     switch (type_enum_gradientType) {
//       case GradientType.linear:
//         return LinearGradient(
//           colors: colorsList,
//         );
//       case GradientType.radial:
//         return RadialGradient(
//           colors: colorsList,
//         );
//       case GradientType.sweep:
//         return SweepGradient(
//           colors: colorsList,
//         );
//       default:
//         return LinearGradient(
//           colors: colorsList,
//         );
//     }
//   }
// }
