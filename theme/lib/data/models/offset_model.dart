// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offset_model.freezed.dart';
part 'offset_model.g.dart';

@freezed
class OffsetModel with _$OffsetModel {
  const factory OffsetModel({
    // @Default(OffsetTypes.all) OffsetTypes? type_enum_OffsetTypes,
    @Default(0) double? dx_double,
    @Default(0) double? dy_double,
  }) = _OffsetModel;

  const OffsetModel._();

  factory OffsetModel.fromJson(Map<String, dynamic> json) => _$OffsetModelFromJson(json);

  Offset? asOffset({String? styleTypeName}) {
    return Offset(
      dx_double ?? 0,
      dy_double ?? 0,
    );
  }
}
