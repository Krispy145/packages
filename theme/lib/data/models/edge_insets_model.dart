// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "edge_insets_model.freezed.dart";
part "edge_insets_model.g.dart";

enum EdgeInsetsTypes { all, symmetric, only, zero }

@freezed
class EdgeInsetsModel with _$EdgeInsetsModel {
  const factory EdgeInsetsModel({
    // @Default(EdgeInsetsTypes.all) EdgeInsetsTypes? type_enum_edgeInsetsTypes,
    double? top_double,
    double? left_double,
    double? bottom_double,
    double? right_double,
  }) = _EdgeInsetsModel;

  const EdgeInsetsModel._();

  factory EdgeInsetsModel.fromJson(Map<String, dynamic> json) =>
      _$EdgeInsetsModelFromJson(json);

  EdgeInsets? asEdgeInsets({String? styleTypeName}) {
    return EdgeInsets.only(
      top: top_double ?? 0,
      left: left_double ?? 0,
      bottom: bottom_double ?? 0,
      right: right_double ?? 0,
    );
  }
}
