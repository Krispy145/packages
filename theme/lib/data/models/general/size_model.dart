// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "size_model.freezed.dart";
part "size_model.g.dart";

@freezed
class SizeModel with _$SizeModel {
  const factory SizeModel({
    double? width_double,
    double? height_double,
  }) = _SizeModel;

  const SizeModel._();

  factory SizeModel.fromJson(Map<String, dynamic> json) =>
      _$SizeModelFromJson(json);

  Size? asSize({String? styleTypeName}) {
    return Size(width_double ?? 0, height_double ?? 0);
  }
}
