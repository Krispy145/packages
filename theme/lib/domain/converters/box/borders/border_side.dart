import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:utilities/logger/logger.dart';

class BoxBorderSideConverter implements JsonConverter<BoxBorder?, Map<String, dynamic>?> {
  const BoxBorderSideConverter();

  /// This example shows how to use the [BoxBorderSideConverter]:
  BoxBorder? example() {
    final json = const BoxBorderSideConverter().toJson(const Border.fromBorderSide(
      BorderSide(color: Colors.transparent, width: 1.0),
    ));
    final border = const BoxBorderSideConverter().fromJson(json);
    AppLogger.print("BOX-BORDER fromJson -> $border", [PackageFeatures.converters]);
    AppLogger.print("BOX-BORDER toJson -> $json", [PackageFeatures.converters]);
    return border;
  }

  @override
  BoxBorder? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return Border.fromBorderSide(
      const BorderSideConverter().fromJson(json['side']) ?? BorderSide.none,
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxBorder? instance) {
    if (instance == null) {
      return null;
    }
    return {
      'side': const BorderSideConverter().toJson(instance.bottom),
    };
  }
}
