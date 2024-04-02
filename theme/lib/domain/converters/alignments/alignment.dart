import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utilities/logger/logger.dart';

enum AlignmentType {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

class AlignmentConverter implements JsonConverter<Alignment?, String?> {
  const AlignmentConverter();

  /// This example shows how to use the [AlignmentConverter]:
  Alignment? example(AlignmentType type) {
    final json = const AlignmentConverter().toJson(_typeToAlignment(type));
    final Map<String, dynamic> response = jsonDecode(json!);
    final alignment =
        const AlignmentConverter().fromJson(response['alignment']);
    AppLogger.print(
        "ALIGNMENT fromJson -> $alignment", [PackageFeatures.converters]);
    final convertedJson = const AlignmentConverter().toJson(Alignment.center);
    AppLogger.print(
        "ALIGNMENT toJson -> $convertedJson", [PackageFeatures.converters]);
    return alignment;
  }

  Alignment _typeToAlignment(AlignmentType type) {
    switch (type) {
      case AlignmentType.topLeft:
        return Alignment.topLeft;
      case AlignmentType.topCenter:
        return Alignment.topCenter;
      case AlignmentType.topRight:
        return Alignment.topRight;
      case AlignmentType.centerLeft:
        return Alignment.centerLeft;
      case AlignmentType.center:
        return Alignment.center;
      case AlignmentType.centerRight:
        return Alignment.centerRight;
      case AlignmentType.bottomLeft:
        return Alignment.bottomLeft;
      case AlignmentType.bottomCenter:
        return Alignment.bottomCenter;
      case AlignmentType.bottomRight:
        return Alignment.bottomRight;
    }
  }

  @override
  Alignment? fromJson(String? type) {
    if (type == null) {
      return null;
    }
    switch (type) {
      case 'topLeft':
        return Alignment.topLeft;
      case 'topCenter':
        return Alignment.topCenter;
      case 'topRight':
        return Alignment.topRight;
      case 'centerLeft':
        return Alignment.centerLeft;
      case 'center':
        return Alignment.center;
      case 'centerRight':
        return Alignment.centerRight;
      case 'bottomLeft':
        return Alignment.bottomLeft;
      case 'bottomCenter':
        return Alignment.bottomCenter;
      case 'bottomRight':
        return Alignment.bottomRight;
      default:
        return null;
    }
  }

  @override
  String? toJson(Alignment? instance) {
    if (instance == null) {
      return null;
    }
    switch (instance) {
      case Alignment.topLeft:
        return 'topLeft';
      case Alignment.topCenter:
        return 'topCenter';
      case Alignment.topRight:
        return 'topRight';
      case Alignment.centerLeft:
        return 'centerLeft';
      case Alignment.center:
        return 'center';
      case Alignment.centerRight:
        return 'centerRight';
      case Alignment.bottomLeft:
        return 'bottomLeft';
      case Alignment.bottomCenter:
        return 'bottomCenter';
      case Alignment.bottomRight:
        return 'bottomRight';
    }
    return null;
  }
}
