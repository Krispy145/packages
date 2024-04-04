// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'border_radius_model.freezed.dart';
part 'border_radius_model.g.dart';

enum BorderRadiusType {
  all,
  circular,
  only,
}

@freezed
class BorderRadiusModel with _$BorderRadiusModel {
  const factory BorderRadiusModel({
    BorderRadiusType? type_enum_borderRadiusType,
    double? topLeft_double,
    double? topRight_double,
    double? bottomLeft_double,
    double? bottomRight_double,
    double? all_double,
  }) = _BorderRadiusModel;

  const BorderRadiusModel._();

  factory BorderRadiusModel.fromJson(Map<String, dynamic> json) => _$BorderRadiusModelFromJson(json);

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
