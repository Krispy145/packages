import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:utilities/logger/logger.dart';

class BoxShapeConverter implements JsonConverter<BoxShape?, String?> {
  const BoxShapeConverter();

  /// This example shows how to use the [BoxShapeConverter]:
  BoxShape? example() {
    final json = const BoxShapeConverter().toJson(BoxShape.circle);
    final response = jsonDecode(json!) as Map<String, String>;
    final boxShape = const BoxShapeConverter().fromJson(response['shape']);
    AppLogger.print(
      "BOX-SHAPE fromJson -> $boxShape",
      [PackageFeatures.converters],
    );
    final convertedJson = const BoxShapeConverter().toJson(boxShape);
    AppLogger.print(
      "BOX-SHAPE toJson -> $convertedJson",
      [PackageFeatures.converters],
    );
    return boxShape;
  }

  @override
  BoxShape? fromJson(String? type) {
    if (type == null) {
      return null;
    }
    switch (type) {
      case 'circle':
        return BoxShape.circle;
      case 'rectangle':
        return BoxShape.rectangle;
      default:
        return null;
    }
  }

  @override
  String? toJson(BoxShape? instance) {
    if (instance == null) {
      return null;
    }
    switch (instance) {
      case BoxShape.circle:
        return 'circle';
      case BoxShape.rectangle:
        return 'rectangle';
      default:
        return null;
    }
  }
}
