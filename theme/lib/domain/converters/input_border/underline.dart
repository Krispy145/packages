import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_radius/border_radius.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:utilities/logger/logger.dart';

class UnderlineInputBorderConverter implements JsonConverter<UnderlineInputBorder?, Map<String, dynamic>?> {
  const UnderlineInputBorderConverter();

  /// This example shows how to use the [UnderlineInputBorderConverter]:
  UnderlineInputBorder? example() {
    final json = const UnderlineInputBorderConverter().toJson(const UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 1),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ));
    final underlineInputBorder = const UnderlineInputBorderConverter().fromJson(json);
    AppLogger.print("UNDERLINE-INPUT-BORDER fromJson -> $underlineInputBorder", [PackageFeatures.converters]);
    AppLogger.print("UNDERLINE-INPUT-BORDER toJson -> $json", [PackageFeatures.converters]);
    return underlineInputBorder;
  }

  @override
  UnderlineInputBorder? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return UnderlineInputBorder(
      borderSide: const BorderSideConverter().fromJson(json['borderSide']) ?? BorderSide.none,
      borderRadius: const BorderRadiusConverter().fromJson(json['borderRadius']) ?? BorderRadius.zero,
    );
  }

  @override
  Map<String, dynamic>? toJson(UnderlineInputBorder? instance) {
    if (instance == null) {
      return null;
    }
    return {
      'borderSide': const BorderSideConverter().toJson(instance.borderSide),
      'borderRadius': const BorderRadiusConverter().toJson(instance.borderRadius),
    };
  }
}
