// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/box_border_model.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';

part 'shape_border_model.freezed.dart';
part 'shape_border_model.g.dart';

enum ShapeBorderType {
  inputBorder,
  outlinedBorder,
  boxBorder,
}

@freezed
class ShapeBorderModel with _$ShapeBorderModel {
  const factory ShapeBorderModel({
    ShapeBorderType? type_enum_shapeBorderType,
    BoxBorderModel? boxBorder_boxBorder,
    @Default(InputBorderModel()) InputBorderModel? inputBorder_inputBorder,
    @Default(OutlinedBorderModel()) OutlinedBorderModel outlinedBorder_outlinedBorder,
  }) = _ShapeBorderModel;

  const ShapeBorderModel._();

  factory ShapeBorderModel.fromJson(Map<String, dynamic> json) => _$ShapeBorderModelFromJson(json);

  ShapeBorder? asShapeBorder({String? styleTypeName}) {
    switch (type_enum_shapeBorderType) {
      case ShapeBorderType.inputBorder:
        return inputBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName);
      case ShapeBorderType.outlinedBorder:
        return outlinedBorder_outlinedBorder.asOutlinedBorder(styleTypeName: styleTypeName);
      case ShapeBorderType.boxBorder:
        return boxBorder_boxBorder?.asBoxBorder(styleTypeName: styleTypeName);
      case null:
        return null;
    }
  }
}
