import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/radius/circular.dart';
import 'package:theme/domain/converters/radius/ellipse.dart';
import 'package:utilities/logger/logger.dart';

enum RadiusType {
  circular,
  elliptical,
}

class RadiusConverter implements JsonConverter<Radius?, Map<String, dynamic>?> {
  const RadiusConverter();

  /// This example shows how to use the [RadiusConverter]:
  Radius? example(RadiusType type) {
    final json = const RadiusConverter().toJson(type == RadiusType.circular ? const Radius.circular(10) : const Radius.elliptical(10, 20));

    final radius = const RadiusConverter().fromJson(json?['radius']);
    AppLogger.print("RADIUS fromJson -> $radius", [PackageFeatures.converters]);
    final convertedJson = const RadiusConverter().toJson(radius);
    AppLogger.print("RADIUS toJson -> $convertedJson", [PackageFeatures.converters]);
    return radius;
  }

  @override
  Radius? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    if (json is double) {
      return const CircularRadiusConverter().fromJson({'radius': json});
    }
    switch (json['type'] as String) {
      case 'circular':
        return const CircularRadiusConverter().fromJson(json['value']);
      case 'elliptical':
        return const EllipseRadiusConverter().fromJson(json['value']);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(Radius? instance) {
    if (instance == null) {
      return null;
    }
    if (instance.x == instance.y) {
      return {
        'type': 'circular',
        'value': const CircularRadiusConverter().toJson(instance),
      };
    } else {
      return {
        'type': 'elliptical',
        'value': const EllipseRadiusConverter().toJson(instance),
      };
    }
  }
}
