// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/borders/box_border_model.dart";
import "package:theme/data/models/box_decorations/box_shadow_model.dart";
import "package:theme/data/models/gradient_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "box_decoration_model.mapper.dart";

@MappableClass()
class BoxDecorationModel with BoxDecorationModelMappable {
  const BoxDecorationModel({
    this.color_themeColorString,
    this.border_boxBorder,
    this.borderRadius_borderRadius,
    this.boxShadows_list_boxShadow = const [],
    this.gradient_gradient = const GradientModel(),
    this.backgroundBlendMode_enum_blendMode,
    this.shape_enum_boxShape = BoxShape.rectangle,
  });

  final ThemeColorString? color_themeColorString;
  final BoxBorderModel? border_boxBorder;
  final BorderRadiusModel? borderRadius_borderRadius;
  @MappableValue(<BoxShadowModel>[])
  final List<BoxShadowModel>? boxShadows_list_boxShadow;
  @MappableValue(GradientModel())
  final GradientModel? gradient_gradient;
  final BlendMode? backgroundBlendMode_enum_blendMode;
  @MappableValue(BoxShape.rectangle)
  final BoxShape? shape_enum_boxShape;

  BoxDecoration asBoxDecoration({String? styleTypeName}) {
    return BoxDecoration(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      border: border_boxBorder?.asBoxBorder(styleTypeName: styleTypeName),
      borderRadius: borderRadius_borderRadius?.asBorderRadius(
        styleTypeName: styleTypeName,
      ),
      boxShadow: boxShadows_list_boxShadow?.map((e) => e.asBoxShadow(styleTypeName: styleTypeName)).toList() ?? [],
      gradient: gradient_gradient?.asGradient(styleTypeName: styleTypeName),
      backgroundBlendMode: backgroundBlendMode_enum_blendMode,
      shape: shape_enum_boxShape ?? BoxShape.rectangle,
    );
  }

  static const fromMap = BoxDecorationModelMapper.fromMap;
  static const fromJson = BoxDecorationModelMapper.fromJson;

  // static const empty = BoxDecorationModel(id: "");

  // static const boxDecorationOne = BoxDecorationModel(
  // id: "boxDecorationOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const boxDecorationTwo = BoxDecorationModel(
  // id: "boxDecorationTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const boxDecorationThree = BoxDecorationModel(
  // id: "boxDecorationThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BoxDecorationModel> fakeData = [
  // boxDecorationOne,
  // boxDecorationTwo,
  // boxDecorationThree,
  // ];
}

// part "box_decoration_model.freezed.dart";
// part "box_decoration_model.g.dart";

// @freezed
// class BoxDecorationModel with _$BoxDecorationModel {
//   const factory BoxDecorationModel({
//     ThemeColorString? color_themeColorString,
//     BoxBorderModel? border_boxBorder,
//     BorderRadiusModel? borderRadius_borderRadius,
//     @MappableValue([]) List<BoxShadowModel>? boxShadows_list_boxShadow,
//     @MappableValue(GradientModel()) GradientModel? gradient_gradient,
//     BlendMode? backgroundBlendMode_enum_blendMode,
//     @MappableValue(BoxShape.rectangle) BoxShape? shape_enum_boxShape,
//   }) = _BoxDecorationModel;

//   const BoxDecorationModel._();

//   factory BoxDecorationModel.fromJson(Map<String, dynamic> json) => _$BoxDecorationModelFromJson(json);

//   BoxDecoration asBoxDecoration({String? styleTypeName}) {
//     return BoxDecoration(
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       border: border_boxBorder?.asBoxBorder(styleTypeName: styleTypeName),
//       borderRadius: borderRadius_borderRadius?.asBorderRadius(
//         styleTypeName: styleTypeName,
//       ),
//       boxShadow: boxShadows_list_boxShadow?.map((e) => e.asBoxShadow(styleTypeName: styleTypeName)).toList() ?? [],
//       gradient: gradient_gradient?.asGradient(styleTypeName: styleTypeName),
//       backgroundBlendMode: backgroundBlendMode_enum_blendMode,
//       shape: shape_enum_boxShape ?? BoxShape.rectangle,
//     );
//   }
// }
