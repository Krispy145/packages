import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/colors/color.dart';
import 'package:theme/domain/converters/offset/offset.dart';
import 'package:utilities/logger/logger.dart';

class BoxShadowConverter implements JsonConverter<BoxShadow?, Map<String, dynamic>?> {
  const BoxShadowConverter();

  /// This example shows how to use the [BoxShadowConverter]:
  BoxShadow? example() {
    final json = const BoxShadowConverter().toJson(const BoxShadow(
      color: Colors.transparent,
      blurRadius: 1.0,
      spreadRadius: 1.0,
      offset: Offset(1.0, 1.0),
    ));
    final boxShadow = const BoxShadowConverter().fromJson(json);
    AppLogger.print("BOX-SHADOW fromJson -> $boxShadow", [PackageFeatures.converters]);
    AppLogger.print("BOX-SHADOW toJson -> $json", [PackageFeatures.converters]);
    return boxShadow;
  }

  @override
  BoxShadow? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return BoxShadow(
      color: const ColorConverter().fromJson(json['color']) ?? const Color(0xFF000000),
      blurRadius: json['blurRadius'] as double? ?? 0.0,
      spreadRadius: json['spreadRadius'] as double? ?? 0.0,
      offset: const OffsetConverter().fromJson(json['offset']),
    );
  }

  @override
  Map<String, dynamic>? toJson(BoxShadow? instance) {
    if (instance == null) {
      return null;
    }
    return {
      'color': const ColorConverter().toJson(instance.color),
      'blurRadius': instance.blurRadius,
      'spreadRadius': instance.spreadRadius,
      'offset': const OffsetConverter().toJson(instance.offset),
    };
  }
}
