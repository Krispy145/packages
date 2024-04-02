import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/extensions/string.dart';

part 'switch_model.freezed.dart';
part 'switch_model.g.dart';

@freezed
class SwitchModel with _$SwitchModel {
  const factory SwitchModel({
    String? thumbColor,
    String? trackColor,
    String? trackOutlineColor,
    double? trackOutlineWidth,
    String? overlayColor,
    double? splashRadius,
  }) = _SwitchModel;

  const SwitchModel._();

  factory SwitchModel.fromJson(Map<String, dynamic> json) => _$SwitchModelFromJson(json);

  // static SwitchModel defaultSwitchModel() {
  //   return const SwitchModel(
  //     thumbColor: "primary",
  //     trackColor: "primary",
  //     trackOutlineColor: "outline",
  //     trackOutlineWidth: 1.0,
  //     overlayColor: "surface",
  //     splashRadius: 24.0,
  //   );
  // }

  SwitchThemeData asSwitchThemeData({String? styleTypeName}) {
    return SwitchThemeData(
      thumbColor: MaterialStateProperty.all(thumbColor?.toColor(styleType: styleTypeName)),
      trackColor: MaterialStateProperty.all(trackColor?.toColor(styleType: styleTypeName)),
      trackOutlineColor: MaterialStateProperty.all(trackOutlineColor?.toColor(styleType: styleTypeName)),
      trackOutlineWidth: MaterialStateProperty.all(trackOutlineWidth),
      overlayColor: MaterialStateProperty.all(overlayColor?.toColor(styleType: styleTypeName)),
      splashRadius: splashRadius,
    );
  }
}
