import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/colors/gradients/linear.dart';
import 'package:theme/domain/converters/colors/gradients/radial.dart';
import 'package:theme/domain/converters/colors/gradients/sweep.dart';
import 'package:utilities/logger/logger.dart';

/// This converter helps to convert [Gradient] to/from JSON.
class GradientConverter implements JsonConverter<Gradient?, Map<String, dynamic>?> {
  const GradientConverter();

  /// This example shows how to use the [GradientConverter]:
  Gradient? example() {
    final json = const GradientConverter().toJson(const LinearGradient(colors: [Colors.red, Colors.blue]));
    final gradient = const GradientConverter().fromJson(json);
    AppLogger.print("GRADIENT fromJson -> $gradient", [PackageFeatures.converters]);
    AppLogger.print("GRADIENT toJson -> $json", [PackageFeatures.converters]);
    return gradient;
  }

  @override
  Gradient? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    switch (json['type'] as String) {
      case 'linear':
        return const LinearGradientConverter().fromJson(json['value']);
      case 'radial':
        return const RadialGradientConverter().fromJson(json['value']);
      case 'sweep':
        return const SweepGradientConverter().fromJson(json['value']);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(Gradient? instance) {
    if (instance == null) {
      return null;
    }
    if (instance is LinearGradient) {
      return {
        'type': 'linear',
        'value': const LinearGradientConverter().toJson(instance),
      };
    } else if (instance is RadialGradient) {
      return {
        'type': 'radial',
        'value': const RadialGradientConverter().toJson(instance),
      };
    } else if (instance is SweepGradient) {
      return {
        'type': 'sweep',
        'value': const SweepGradientConverter().toJson(instance),
      };
    }
    return null;
  }
}
