// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "box_constraints_model.freezed.dart";
part "box_constraints_model.g.dart";

@freezed
class BoxConstraintsModel with _$BoxConstraintsModel {
  const factory BoxConstraintsModel({
    final double? minWidth_double,
    final double? maxWidth_double,
    final double? minHeight_double,
    final double? maxHeight_double,
  }) = _BoxConstraintsModel;

  const BoxConstraintsModel._();

  factory BoxConstraintsModel.fromJson(Map<String, dynamic> json) =>
      _$BoxConstraintsModelFromJson(json);

  BoxConstraints asBoxConstraints({String? styleTypeName}) {
    return BoxConstraints(
      minWidth: minWidth_double ?? 0,
      maxWidth: maxWidth_double ?? double.infinity,
      minHeight: minHeight_double ?? 0,
      maxHeight: maxHeight_double ?? double.infinity,
    );
  }
}
