// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';

part 'input_border_model.freezed.dart';
part 'input_border_model.g.dart';

enum InputBorderType {
  none,
  outlined,
  underlined,
}

@freezed
class InputBorderModel with _$InputBorderModel {
  const factory InputBorderModel({
    InputBorderType? type_enum_inputBorderType,
    @Default(BorderRadiusModel()) BorderRadiusModel? borderRadius_borderRadius,
    @Default(BorderSideModel()) BorderSideModel? borderSide_borderSide,
    double? gapPadding_double,
  }) = _InputBorderModel;

  const InputBorderModel._();

  factory InputBorderModel.fromJson(Map<String, dynamic> json) => _$InputBorderModelFromJson(json);

  InputBorder? asInputBorder({String? styleTypeName}) {
    final borderRadius = borderRadius_borderRadius?.asBorderRadius(styleTypeName: styleTypeName) ?? BorderRadius.zero;
    final borderSide = borderSide_borderSide?.asBorderSide(styleTypeName: styleTypeName) ?? BorderSide.none;
    switch (type_enum_inputBorderType) {
      case InputBorderType.none:
        return InputBorder.none;
      case InputBorderType.outlined:
        return OutlineInputBorder(
          borderSide: borderSide,
          borderRadius: borderRadius,
          gapPadding: gapPadding_double ?? 4,
        );
      case InputBorderType.underlined:
        return UnderlineInputBorder(
          borderSide: borderSide,
          borderRadius: borderRadius,
        );
      case null:
        return null;
    }
  }
}
