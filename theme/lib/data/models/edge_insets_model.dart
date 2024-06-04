// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";

part "edge_insets_model.mapper.dart";

enum EdgeInsetsTypes { all, symmetric, only, zero }

@MappableClass()
class EdgeInsetsModel with EdgeInsetsModelMappable {
  final double? top_double;
  final double? left_double;
  final double? bottom_double;
  final double? right_double;

  const EdgeInsetsModel({
    this.top_double,
    this.left_double,
    this.bottom_double,
    this.right_double,
  });

  static const fromMap = EdgeInsetsModelMapper.fromMap;
  static const fromJson = EdgeInsetsModelMapper.fromJson;

  EdgeInsets? asEdgeInsets({String? styleTypeName}) {
    return EdgeInsets.only(
      top: top_double ?? 0,
      left: left_double ?? 0,
      bottom: bottom_double ?? 0,
      right: right_double ?? 0,
    );
  }

  // static const empty = EdgeInsetsModel(id: "");

  // static const edgeInsetsOne = EdgeInsetsModel(
  // id: "edgeInsetsOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const edgeInsetsTwo = EdgeInsetsModel(
  // id: "edgeInsetsTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const edgeInsetsThree = EdgeInsetsModel(
  // id: "edgeInsetsThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<EdgeInsetsModel> fakeData = [
  // edgeInsetsOne,
  // edgeInsetsTwo,
  // edgeInsetsThree,
  // ];
}

// part "edge_insets_model.freezed.dart";
// part "edge_insets_model.g.dart";

// @freezed
// class EdgeInsetsModel with _$EdgeInsetsModel {
//   const factory EdgeInsetsModel({
//     // @MappableValue(EdgeInsetsTypes.all) EdgeInsetsTypes? type_enum_edgeInsetsTypes,
//     double? top_double,
//     double? left_double,
//     double? bottom_double,
//     double? right_double,
//   }) = _EdgeInsetsModel;

//   const EdgeInsetsModel._();

//   factory EdgeInsetsModel.fromJson(Map<String, dynamic> json) =>
//       _$EdgeInsetsModelFromJson(json);

//   EdgeInsets? asEdgeInsets({String? styleTypeName}) {
//     return EdgeInsets.only(
//       top: top_double ?? 0,
//       left: left_double ?? 0,
//       bottom: bottom_double ?? 0,
//       right: right_double ?? 0,
//     );
//   }
// }
