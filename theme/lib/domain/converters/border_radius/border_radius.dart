import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_radius/all.dart';
import 'package:theme/domain/converters/border_radius/circular.dart';
import 'package:theme/domain/converters/border_radius/horizontal.dart';
import 'package:theme/domain/converters/border_radius/only.dart';
import 'package:theme/domain/converters/border_radius/vertical.dart';

enum BorderRadiusType {
  all,
  only,
  circular,
  vertical,
  horizontal,
}

class BorderRadiusConverter implements JsonConverter<BorderRadius?, Map<String, dynamic>?> {
  const BorderRadiusConverter();

  /// This example shows how to use the [BorderRadiusConverter]:
  BorderRadius? example(BorderRadiusType type) {
    final json = const BorderRadiusConverter().toJson(_borderRadiusFromType(type));
    final radius = const BorderRadiusConverter().fromJson(json);
    debugPrint("BORDER-RADIUS fromJson -> $radius");
    debugPrint("BORDER-RADIUS toJson -> $json");
    return radius;
  }

  BorderRadius? _borderRadiusFromType(BorderRadiusType type) {
    switch (type) {
      case BorderRadiusType.all:
        return const BorderRadius.all(Radius.circular(10));
      case BorderRadiusType.only:
        return const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));
      case BorderRadiusType.circular:
        return BorderRadius.circular(10);
      case BorderRadiusType.vertical:
        return const BorderRadius.vertical(top: Radius.circular(10), bottom: Radius.circular(10));
      case BorderRadiusType.horizontal:
        return const BorderRadius.horizontal(left: Radius.circular(10), right: Radius.circular(10));
    }
  }

  @override
  BorderRadius? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    switch (json['type'] as String) {
      case 'all':
        return const BorderRadiusAllConverter().fromJson(json['value']);
      case 'only':
        return const BorderRadiusOnlyConverter().fromJson(json['value']);
      case 'circular':
        return const BorderRadiusCircularConverter().fromJson(json['value']);
      case 'vertical':
        return const BorderRadiusVerticalConverter().fromJson(json['value']);
      case 'horizontal':
        return const BorderRadiusHorizontalConverter().fromJson(json['value']);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(BorderRadius? instance) {
    if (instance == null) {
      return null;
      // }
      // if (instance.topLeft == instance.bottomLeft && instance.topLeft == instance.bottomRight && instance.topLeft == instance.bottomRight) {
      //   final value = const BorderRadiusCircularConverter().toJson(instance);
      //   if (value != null) {
      //     return {
      //       'type': 'circular',
      //       'value': value,
      //     };
      //   }
      // } else if (instance.topLeft == instance.topRight && instance.topLeft == instance.bottomLeft && instance.topLeft == instance.bottomRight) {
      //   final value = const BorderRadiusAllConverter().toJson(instance);
      //   if (value != null) {
      //     return {
      //       'type': 'all',
      //       'value': value,
      //     };
      //   }
      // } else if (instance.topLeft == instance.topRight && instance.bottomLeft == instance.bottomRight) {
      //   final value = const BorderRadiusVerticalConverter().toJson(instance);
      //   if (value != null) {
      //     return {
      //       'type': 'vertical',
      //       'value': value,
      //     };
      //   }
      // } else if (instance.topLeft == instance.bottomLeft && instance.topRight == instance.bottomRight) {
      //   final value = const BorderRadiusHorizontalConverter().toJson(instance);
      //   if (value != null) {
      //     return {
      //       'type': 'horizontal',
      //       'value': value,
      //     };
      //   }
    } else {
      final value = const BorderRadiusOnlyConverter().toJson(instance);
      if (value != null) {
        return {
          'type': 'only',
          'value': value,
        };
      }
    }
    return null;
  }
}
