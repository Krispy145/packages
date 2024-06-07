import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:xml/xml.dart";

part "color_schemes_model.mapper.dart";

@MappableClass()
class ColorSchemesModel with ColorSchemesModelMappable {
  final ColorModel light;
  final ColorModel dark;

  const ColorSchemesModel({
    required this.light,
    required this.dark,
  });

  /// [fromXml] is a factory method that allows you to create a [ColorSchemesModel] from an XML file.
  static Future<ColorSchemesModel> fromXml({required String assetPath}) async {
    final light = await ColorModel.fromXml(
      brightness: Brightness.light,
      assetPath: assetPath,
    );
    final dark = await ColorModel.fromXml(
      brightness: Brightness.dark,
      assetPath: assetPath,
    );
    return ColorSchemesModel(
      light: light,
      dark: dark,
    );
  }

  /// [toXml] converts the [ColorSchemesModel] to an XML file.
  XmlDocument toXml() {
    final xmlBuilder = XmlBuilder()..processing("xml", 'version="1.0"');
    xmlBuilder.element(
      "resources",
      nest: () {
        xmlBuilder.element(
          "color-scheme",
          nest: () {
            xmlBuilder
              ..element("light", nest: light.toXml())
              ..element("dark", nest: dark.toXml());
          },
        );
      },
    );

    return xmlBuilder.buildDocument();
  }

  static ColorSchemesModel defaultSchemes() {
    return ColorSchemesModel(
      light: ColorModel.defaultModel(brightness: Brightness.light),
      dark: ColorModel.defaultModel(brightness: Brightness.dark),
    );
  }

  static const fromMap = ColorSchemesModelMapper.fromMap;
  static const fromJson = ColorSchemesModelMapper.fromJson;

  // static const empty = ColorSchemesModel(id: "");

  // static const colorSchemesOne = ColorSchemesModel(
  // id: "colorSchemesOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const colorSchemesTwo = ColorSchemesModel(
  // id: "colorSchemesTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const colorSchemesThree = ColorSchemesModel(
  // id: "colorSchemesThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ColorSchemesModel> fakeData = [
  // colorSchemesOne,
  // colorSchemesTwo,
  // colorSchemesThree,
  // ];
}

/// [BrightnessExtension] is an extension on [Brightness] that allows you to convert the [Brightness]
extension BrightnessExtension on Brightness {
  /// [toXml] converts the [Brightness] to a string that can be used in an XML file.
  String toXml() {
    switch (this) {
      case Brightness.light:
        return "md_theme_light";
      case Brightness.dark:
        return "md_theme_dark";
    }
  }
}

// part "color_schemes.freezed.dart";
// part "color_schemes.g.dart";

// /// [ColorSchemes] is a wrapper for [`ColorSchemeModel`] that allows you to use [Brightness] to
// /// calculate the [`ColorSchemeModel`] values.
// @freezed
// class ColorSchemes with _$ColorSchemes {
//   /// [ColorSchemes] constructor
//   const factory ColorSchemes({
//     required ColorModel light,
//     required ColorModel dark,
//   }) = _themeColorStringSchemes;
//   const ColorSchemes._();

//   /// [fromXml] is a factory method that allows you to create a [ColorSchemes] from an XML file.
//   static Future<ColorSchemes> fromXml({required String assetPath}) async {
//     final light = await ColorModel.fromXml(
//       brightness: Brightness.light,
//       assetPath: assetPath,
//     );
//     final dark = await ColorModel.fromXml(
//       brightness: Brightness.dark,
//       assetPath: assetPath,
//     );
//     return ColorSchemes(
//       light: light,
//       dark: dark,
//     );
//   }

//   /// [toXml] converts the [ColorSchemes] to an XML file.
//   XmlDocument toXml() {
//     final xmlBuilder = XmlBuilder()..processing("xml", 'version="1.0"');
//     xmlBuilder.element(
//       "resources",
//       nest: () {
//         xmlBuilder.element(
//           "color-scheme",
//           nest: () {
//             xmlBuilder
//               ..element("light", nest: light.toXml())
//               ..element("dark", nest: dark.toXml());
//           },
//         );
//       },
//     );

//     return xmlBuilder.buildDocument();
//   }

//   static ColorSchemes defaultSchemes() {
//     return ColorSchemes(
//       light: ColorModel.defaultModel(brightness: Brightness.light),
//       dark: ColorModel.defaultModel(brightness: Brightness.dark),
//     );
//   }

//   /// [ColorSchemes.fromJson] is a factory method that allows you to create a [ColorSchemes] from JSON.
//   factory ColorSchemes.fromJson(Map<String, dynamic> json) =>
//       _$ColorSchemesFromJson(json);
// }
