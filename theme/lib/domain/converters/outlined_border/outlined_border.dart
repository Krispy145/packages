import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/outlined_border/continuous_rectangle.dart';
import 'package:theme/domain/converters/outlined_border/rounded_rectangle.dart';
import 'package:utilities/logger/logger.dart';

class OutlinedBorderConverter implements JsonConverter<OutlinedBorder?, Map<String, dynamic>?> {
  const OutlinedBorderConverter();

  /// This example shows how to use the [OutlinedBorderConverter]:
  OutlinedBorder? example() {
    final json = const OutlinedBorderConverter().toJson(const StadiumBorder());
    final border = const OutlinedBorderConverter().fromJson(json);
    AppLogger.print("OUTLINED-BORDER fromJson -> $border", [PackageFeatures.converters]);
    AppLogger.print("OUTLINED-BORDER toJson -> $json", [PackageFeatures.converters]);
    return border;
  }

  @override
  OutlinedBorder? fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    switch (json['type'] as String) {
      case 'stadium':
        // return const StadiumBorderConverter().fromJson(json['value']);
        json['value']['borderRadius'] = 50.0;
        return const RoundedRectangleBorderConverter().fromJson(json['value']);
      case 'beveled':
      // return const BeveledRectangleBorderConverter().fromJson(json['value']);
      case 'linear':
      // return const LinearBorderConverter().fromJson(json['value']);
      case 'circle':
      // return const CircleBorderConverter().fromJson(json['value']);
      case 'star':
        // return const StarBorderConverter().fromJson(json['value']);
        return null;
      case 'continuous':
        return const ContinuousRectangleBorderConverter().fromJson(json['value']);
      case 'rounded':
        return const RoundedRectangleBorderConverter().fromJson(json['value']);
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(OutlinedBorder? instance) {
    if (instance == null) {
      return null;
    }
    if (instance is StadiumBorder) {
      // final value = const StadiumBorderConverter().toJson(instance);
      final stadiumToRounded = RoundedRectangleBorder(side: instance.side, borderRadius: const BorderRadius.all(Radius.circular(50.0)));
      final value = const RoundedRectangleBorderConverter().toJson(stadiumToRounded);
      if (value == null) {
        return null;
      }
      return {
        'type': 'stadium',
        'value': value,
      };
    } else if (instance is BeveledRectangleBorder) {
      // final value = const BeveledRectangleBorderConverter().toJson(instance);
      // if (value == null) {
      //   return null;
      // }
      // return {
      //   'type': 'beveled',
      //   'value': const BeveledRectangleBorderConverter().toJson(instance),
      // };
      return null;
    } else if (instance is LinearBorder) {
      // final value = const LinearBorderConverter().toJson(instance);
      // if (value == null) {
      //   return null;
      // }
      // return {
      //   'type': 'linear',
      //   'value': const LinearBorderConverter().toJson(instance),
      // };
      return null;
    } else if (instance is CircleBorder) {
      // final value = const CircleBorderConverter().toJson(instance);
      // if (value == null) {
      //   return null;
      // }
      // return {
      //   'type': 'circle',
      //   'value': const CircleBorderConverter().toJson(instance),
      // };
      return null;
    } else if (instance is StarBorder) {
      // final value = const StarBorderConverter().toJson(instance);
      // if (value == null) {
      //   return null;
      // }
      // return {
      //   'type': 'star',
      //   'value': const StarBorderConverter().toJson(instance),
      // };
      return null;
    } else if (instance is ContinuousRectangleBorder) {
      final value = const ContinuousRectangleBorderConverter().toJson(instance);
      if (value == null) {
        return null;
      }
      return {
        'type': 'continuous',
        'value': value,
      };
    } else if (instance is RoundedRectangleBorder) {
      final value = const RoundedRectangleBorderConverter().toJson(instance);
      if (value == null) {
        return null;
      }
      return {
        'type': 'rounded',
        'value': value,
      };
    } else {
      return null;
    }
  }
}
