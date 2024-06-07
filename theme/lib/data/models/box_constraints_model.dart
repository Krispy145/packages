// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

part "box_constraints_model.mapper.dart";

@MappableClass()
class BoxConstraintsModel with BoxConstraintsModelMappable {
  final double? minWidth_double;
  final double? maxWidth_double;
  final double? minHeight_double;
  final double? maxHeight_double;

  const BoxConstraintsModel({
    this.minWidth_double,
    this.maxWidth_double,
    this.minHeight_double,
    this.maxHeight_double,
  });

  static const fromMap = BoxConstraintsModelMapper.fromMap;
  static const fromJson = BoxConstraintsModelMapper.fromJson;

  BoxConstraints asBoxConstraints({String? styleTypeName}) {
    return BoxConstraints(
      minWidth: minWidth_double ?? 0,
      maxWidth: maxWidth_double ?? double.infinity,
      minHeight: minHeight_double ?? 0,
      maxHeight: maxHeight_double ?? double.infinity,
    );
  }

  // static const empty = BoxConstraintsModel(id: "");

  // static const boxConstraintsOne = BoxConstraintsModel(
  // id: "boxConstraintsOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const boxConstraintsTwo = BoxConstraintsModel(
  // id: "boxConstraintsTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const boxConstraintsThree = BoxConstraintsModel(
  // id: "boxConstraintsThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<BoxConstraintsModel> fakeData = [
  // boxConstraintsOne,
  // boxConstraintsTwo,
  // boxConstraintsThree,
  // ];
}

// part "box_constraints_model.freezed.dart";
// part "box_constraints_model.g.dart";

// @freezed
// class BoxConstraintsModel with _$BoxConstraintsModel {
//   const factory BoxConstraintsModel({
//     final double? minWidth_double,
//     final double? maxWidth_double,
//     final double? minHeight_double,
//     final double? maxHeight_double,
//   }) = _BoxConstraintsModel;

//   const BoxConstraintsModel._();

//   factory BoxConstraintsModel.fromJson(Map<String, dynamic> json) =>
//       _$BoxConstraintsModelFromJson(json);

//   BoxConstraints asBoxConstraints({String? styleTypeName}) {
//     return BoxConstraints(
//       minWidth: minWidth_double ?? 0,
//       maxWidth: maxWidth_double ?? double.infinity,
//       minHeight: minHeight_double ?? 0,
//       maxHeight: maxHeight_double ?? double.infinity,
//     );
//   }
// }
