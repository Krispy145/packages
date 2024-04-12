import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/colors/color_model.dart';
import 'package:xml/xml.dart';

part 'color_schemes.freezed.dart';
part 'color_schemes.g.dart';

/// [BrightnessExtension] is an extension on [Brightness] that allows you to convert the [Brightness]
extension BrightnessExtension on Brightness {
  /// [toXml] converts the [Brightness] to a string that can be used in an XML file.
  String toXml() {
    switch (this) {
      case Brightness.light:
        return 'md_theme_light';
      case Brightness.dark:
        return 'md_theme_dark';
    }
  }
}

/// [ColorSchemes] is a wrapper for [ColorSchemeModel] that allows you to use [Brightness] to
/// calculate the [ColorSchemeModel] values.
@freezed
class ColorSchemes with _$ColorSchemes {
  /// [ColorSchemes] constructor
  const factory ColorSchemes({
    required ColorModel light,
    required ColorModel dark,
  }) = _themeColorStringSchemes;
  const ColorSchemes._();

  /// [fromXml] is a factory method that allows you to create a [ColorSchemes] from an XML file.
  static Future<ColorSchemes> fromXml({required String assetPath}) async {
    final light = await ColorModel.fromXml(
      brightness: Brightness.light,
      assetPath: assetPath,
    );
    final dark = await ColorModel.fromXml(
      brightness: Brightness.dark,
      assetPath: assetPath,
    );
    return ColorSchemes(
      light: light,
      dark: dark,
    );
  }

  /// [toXml] converts the [ColorSchemes] to an XML file.
  XmlDocument toXml() {
    final xmlBuilder = XmlBuilder()..processing('xml', 'version="1.0"');
    xmlBuilder.element(
      'resources',
      nest: () {
        xmlBuilder.element(
          'color-scheme',
          nest: () {
            xmlBuilder
              ..element('light', nest: light.toXml())
              ..element('dark', nest: dark.toXml());
          },
        );
      },
    );

    return xmlBuilder.buildDocument();
  }

  // static ColorSchemes defaultSchemes() {
  //   return ColorSchemes(
  //     light: ColorModel.defaultModel(brightness: Brightness.light),
  //     dark: ColorModel.defaultModel(brightness: Brightness.dark),
  //   );
  // }

  /// [ColorSchemes.fromJson] is a factory method that allows you to create a [ColorSchemes] from JSON.
  factory ColorSchemes.fromJson(Map<String, dynamic> json) => _$ColorSchemesFromJson(json);
}
