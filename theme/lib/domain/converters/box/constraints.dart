import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utilities/logger/logger.dart';

class BoxConstraintsConverter
    implements JsonConverter<BoxConstraints?, Map<String, dynamic>?> {
  const BoxConstraintsConverter();

  /// This example shows how to use the [BoxConstraintsConverter]:
  BoxConstraints? example() {
    final json = const BoxConstraintsConverter().toJson(const BoxConstraints(
      minWidth: 10,
      maxWidth: 100,
      minHeight: 10,
      maxHeight: 100,
    ));
    final boxConstraints = const BoxConstraintsConverter().fromJson(json);
    AppLogger.print("BOX-CONSTRAINTS fromJson -> $boxConstraints",
        [PackageFeatures.converters]);
    AppLogger.print(
        "BOX-CONSTRAINTS toJson -> $json", [PackageFeatures.converters]);
    return boxConstraints;
  }

  @override
  BoxConstraints? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return BoxConstraints(
      minWidth: json['minWidth'] as double? ?? 0,
      maxWidth: json['maxWidth'] as double? ?? double.infinity,
      minHeight: json['minHeight'] as double? ?? 0,
      maxHeight: json['maxHeight'] as double? ?? double.infinity,
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxConstraints? instance) {
    if (instance == null) {
      return null;
    }
    return {
      'minWidth': instance.minWidth,
      'maxWidth': instance.maxWidth,
      'minHeight': instance.minHeight,
      'maxHeight': instance.maxHeight,
    };
  }
}
