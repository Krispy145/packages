// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

part "size_model.mapper.dart";

@MappableClass()
class SizeModel with SizeModelMappable {
  final double? width_double;
  final double? height_double;

  const SizeModel({
    this.width_double,
    this.height_double,
  });

  static const fromMap = SizeModelMapper.fromMap;
  static const fromJson = SizeModelMapper.fromJson;

  Size? asSize({String? styleTypeName}) {
    return Size(width_double ?? 0, height_double ?? 0);
  }

  // static const empty = SizeModel(id: "");

  // static const sizeOne = SizeModel(
  // id: "sizeOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const sizeTwo = SizeModel(
  // id: "sizeTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const sizeThree = SizeModel(
  // id: "sizeThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SizeModel> fakeData = [
  // sizeOne,
  // sizeTwo,
  // sizeThree,
  // ];
}

// part "size_model.freezed.dart";
// part "size_model.g.dart";

// @freezed
// class SizeModel with _$SizeModel {
//   const factory SizeModel({
//     double? width_double,
//     double? height_double,
//   }) = _SizeModel;

//   const SizeModel._();

//   factory SizeModel.fromJson(Map<String, dynamic> json) =>
//       _$SizeModelFromJson(json);

//   Size? asSize({String? styleTypeName}) {
//     return Size(width_double ?? 0, height_double ?? 0);
//   }
// }
