// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

part "border_radius_model.mapper.dart";

@MappableEnum(defaultValue: BorderRadiusType.all)
enum BorderRadiusType {
  all,
  circular,
  only,
}

@MappableClass()
class BorderRadiusModel with BorderRadiusModelMappable {
  @MappableValue(BorderRadiusType.circular)
  final BorderRadiusType? type_enum_borderRadiusType;
  final double? topLeft_double;
  final double? topRight_double;
  final double? bottomLeft_double;
  final double? bottomRight_double;
  final double? all_double;

  const BorderRadiusModel({
    this.type_enum_borderRadiusType,
    this.topLeft_double,
    this.topRight_double,
    this.bottomLeft_double,
    this.bottomRight_double,
    this.all_double,
  });

  static const fromMap = BorderRadiusModelMapper.fromMap;
  static const fromJson = BorderRadiusModelMapper.fromJson;

  // static const empty = BorderRadiusModel(id: "");

  // static const borderRadiusOne = BorderRadiusModel(
  // id: "borderRadiusOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const borderRadiusTwo = BorderRadiusModel(
  // id: "borderRadiusTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const borderRadiusThree = BorderRadiusModel(
  // id: "borderRadiusThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BorderRadiusModel> fakeData = [
  // borderRadiusOne,
  // borderRadiusTwo,
  // borderRadiusThree,
  // ];

  BorderRadius? asBorderRadius({String? styleTypeName}) {
    switch (type_enum_borderRadiusType) {
      case BorderRadiusType.all:
        return BorderRadius.all(all_double != null ? Radius.circular(all_double!) : Radius.zero);
      case BorderRadiusType.only:
        return BorderRadius.only(
          topLeft: topLeft_double != null ? Radius.circular(topLeft_double!) : Radius.zero,
          topRight: topRight_double != null ? Radius.circular(topRight_double!) : Radius.zero,
          bottomLeft: bottomLeft_double != null ? Radius.circular(bottomLeft_double!) : Radius.zero,
          bottomRight: bottomRight_double != null ? Radius.circular(bottomRight_double!) : Radius.zero,
        );
      case BorderRadiusType.circular:
        return BorderRadius.circular(all_double != null ? all_double! : 0);
      case null:
        return null;
    }
  }
}

// import "package:flutter/material.dart";
// 

// part "border_radius_model.freezed.dart";
// part "border_radius_model.g.dart";

// enum BorderRadiusType {
//   // all,
//   circular,
//   only,
// }

// @freezed
// class BorderRadiusModel with _$BorderRadiusModel {
//   const factory BorderRadiusModel({
//     @MappableValue(BorderRadiusType.circular)
//     BorderRadiusType? type_enum_borderRadiusType,
//     double? topLeft_double,
//     double? topRight_double,
//     double? bottomLeft_double,
//     double? bottomRight_double,
//     double? all_double,
//   }) = _BorderRadiusModel;

//   const BorderRadiusModel._();

//   factory BorderRadiusModel.fromJson(Map<String, dynamic> json) =>
//       _$BorderRadiusModelFromJson(json);

//   BorderRadius? asBorderRadius({String? styleTypeName}) {
//     switch (type_enum_borderRadiusType) {
//       // case BorderRadiusType.all:
//       //   return BorderRadius.all(all_double != null ? Radius.circular(all_double!) : Radius.zero);
//       case BorderRadiusType.only:
//         return BorderRadius.only(
//           topLeft: topLeft_double != null
//               ? Radius.circular(topLeft_double!)
//               : Radius.zero,
//           topRight: topRight_double != null
//               ? Radius.circular(topRight_double!)
//               : Radius.zero,
//           bottomLeft: bottomLeft_double != null
//               ? Radius.circular(bottomLeft_double!)
//               : Radius.zero,
//           bottomRight: bottomRight_double != null
//               ? Radius.circular(bottomRight_double!)
//               : Radius.zero,
//         );
//       case BorderRadiusType.circular:
//         return BorderRadius.circular(all_double != null ? all_double! : 0);
//       case null:
//         return null;
//     }
//   }
// }
