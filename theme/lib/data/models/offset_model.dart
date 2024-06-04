// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

part "offset_model.mapper.dart";

@MappableClass()
class OffsetModel with OffsetModelMappable {
  @MappableValue(0)
  final double? dx_double;
  @MappableValue(0)
  final double? dy_double;

  const OffsetModel({
    this.dx_double,
    this.dy_double,
  });

  static const fromMap = OffsetModelMapper.fromMap;
  static const fromJson = OffsetModelMapper.fromJson;

  Offset? asOffset({String? styleTypeName}) {
    return Offset(
      dx_double ?? 0,
      dy_double ?? 0,
    );
  }

  // static const empty = OffsetModel(id: "");

  // static const offsetOne = OffsetModel(
  // id: "offsetOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const offsetTwo = OffsetModel(
  // id: "offsetTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const offsetThree = OffsetModel(
  // id: "offsetThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<OffsetModel> fakeData = [
  // offsetOne,
  // offsetTwo,
  // offsetThree,
  // ];
}

// part "offset_model.freezed.dart";
// part "offset_model.g.dart";

// @freezed
// class OffsetModel with _$OffsetModel {
//   const factory OffsetModel({
//     // @MappableValue(OffsetTypes.all) OffsetTypes? type_enum_OffsetTypes,
//     @MappableValue(0) double? dx_double,
//     @MappableValue(0) double? dy_double,
//   }) = _OffsetModel;

//   const OffsetModel._();

//   factory OffsetModel.fromJson(Map<String, dynamic> json) =>
//       _$OffsetModelFromJson(json);

//   Offset? asOffset({String? styleTypeName}) {
//     return Offset(
//       dx_double ?? 0,
//       dy_double ?? 0,
//     );
//   }
// }
