import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';

part 'box_border_model.freezed.dart';
part 'box_border_model.g.dart';

@freezed
class BoxBorderModel with _$BoxBorderModel {
  const factory BoxBorderModel({
    final BorderSideModel? top,
    final BorderSideModel? bottom,
    final BorderSideModel? left,
    final BorderSideModel? right,
  }) = _BoxBorderModel;

  const BoxBorderModel._();

  factory BoxBorderModel.fromJson(Map<String, dynamic> json) => _$BoxBorderModelFromJson(json);

  BoxBorder asBoxBorder({String? styleTypeName}) {
    return Border(
      top: top?.asBorderSide() ?? BorderSide.none,
      bottom: bottom?.asBorderSide() ?? BorderSide.none,
      left: left?.asBorderSide() ?? BorderSide.none,
      right: right?.asBorderSide() ?? BorderSide.none,
    );
  }
}
