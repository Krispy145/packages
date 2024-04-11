import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

class TabAlignmentConverter implements JsonConverter<TabAlignment?, String?> {
  const TabAlignmentConverter();

  /// This example shows how to use the [TabAlignmentConverter]:
  TabAlignment? example(TabAlignment type) {
    final json = const TabAlignmentConverter().toJson(type);
    final response = jsonDecode(json!) as Map<String, String>;
    final alignment = const TabAlignmentConverter().fromJson(response['alignment']);
    AppLogger.print(
      "LIST-TILE-ALIGNMENT fromJson -> $alignment",
      [ThemePackageLoggers.converters],
    );
    final convertedJson = const TabAlignmentConverter().toJson(TabAlignment.center);
    AppLogger.print(
      "LIST-TILE-ALIGNMENT toJson -> $convertedJson",
      [ThemePackageLoggers.converters],
    );
    return alignment;
  }

  @override
  TabAlignment? fromJson(String? type) {
    if (type == null) {
      return null;
    }
    switch (type) {
      case 'center':
        return TabAlignment.center;
      case 'fill':
        return TabAlignment.fill;
      case 'start':
        return TabAlignment.start;
      case 'startOffset':
        return TabAlignment.startOffset;
      default:
        return TabAlignment.center;
    }
  }

  @override
  String? toJson(TabAlignment? instance) {
    if (instance == null) {
      return null;
    }
    switch (instance) {
      case TabAlignment.center:
        return TabAlignment.center.name;
      case TabAlignment.fill:
        return TabAlignment.fill.name;
      case TabAlignment.start:
        return TabAlignment.start.name;
      case TabAlignment.startOffset:
        return TabAlignment.startOffset.name;
    }
  }
}
