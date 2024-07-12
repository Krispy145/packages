import "dart:math";

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:palette_generator/palette_generator.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/colors/color_schemes_model.dart";
import "package:theme/domain/converters/colors/color.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";
import "package:xml/xml.dart";

part "color_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase, includeCustomMappers: [ColorMapper()])
class ColorModel with ColorModelMappable {
  // Primary

  final Color? primary;

  final Color? onPrimary;

  final Color? primaryContainer;

  final Color? onPrimaryContainer;

  // Secondary

  final Color? secondary;

  final Color? onSecondary;

  final Color? secondaryContainer;

  final Color? onSecondaryContainer;

  // Tertiary

  final Color? tertiary;

  final Color? onTertiary;

  final Color? tertiaryContainer;

  final Color? onTertiaryContainer;

  // Error

  @MappableValue(Colors.red)
  final Color error;

  @MappableValue(Colors.white)
  final Color onError;

  final Color? errorContainer;

  final Color? onErrorContainer;

  // Confirmation

  @MappableValue(Colors.green)
  final Color confirmation;

  @MappableValue(Colors.white)
  final Color onConfirmation;

  @MappableValue(Color(0xFFC4FFC7))
  final Color confirmationContainer;

  @MappableValue(Color(0xFF004203))
  final Color onConfirmationContainer;

  // Information

  @MappableValue(Colors.blue)
  final Color information;

  @MappableValue(Colors.white)
  final Color onInformation;

  @MappableValue(Color(0xFFBCE1FF))
  final Color informationContainer;

  @MappableValue(Color(0xFF012542))
  final Color onInformationContainer;

  // Warning

  @MappableValue(Colors.orange)
  final Color warning;

  @MappableValue(Colors.white)
  final Color onWarning;

  @MappableValue(Color(0xFFFFE0B3))
  final Color warningContainer;

  @MappableValue(Color(0xFF4C2E01))
  final Color onWarningContainer;

  // Surface

  final Color? surface;

  final Color? onSurface;

  final Color? surfaceVariant;

  final Color? onSurfaceVariant;

  final Color? inverseSurface;

  final Color? onInverseSurface;

  // Background

  final Color? background;

  final Color? onBackground;

  //

  @MappableValue(Colors.grey)
  final Color disabled;

  final Color? outline;

  final Color? inversePrimary;

  final Color? shadow;

  final Color? surfaceTint;

  final Color? outlineVariant;

  final Color? scrim;
  final List<Color>? palette;

  const ColorModel({
    this.primary,
    this.onPrimary,
    this.primaryContainer,
    this.onPrimaryContainer,
    this.secondary,
    this.onSecondary,
    this.secondaryContainer,
    this.onSecondaryContainer,
    this.tertiary,
    this.onTertiary,
    this.tertiaryContainer,
    this.onTertiaryContainer,
    this.disabled = Colors.grey,
    this.error = Colors.red,
    this.onError = Colors.white,
    this.errorContainer,
    this.onErrorContainer,
    this.confirmation = Colors.green,
    this.onConfirmation = Colors.white,
    this.confirmationContainer = const Color(0xFFC4FFC7),
    this.onConfirmationContainer = const Color(0xFF004203),
    this.information = Colors.blue,
    this.onInformation = Colors.white,
    this.informationContainer = const Color(0xFFBCE1FF),
    this.onInformationContainer = const Color(0xFF012542),
    this.warning = Colors.orange,
    this.onWarning = Colors.white,
    this.warningContainer = const Color(0xFFFFE0B3),
    this.onWarningContainer = const Color(0xFF4C2E01),
    this.outline,
    this.background,
    this.onBackground,
    this.surface,
    this.onSurface,
    this.surfaceVariant,
    this.onSurfaceVariant,
    this.inverseSurface,
    this.onInverseSurface,
    this.inversePrimary,
    this.shadow,
    this.surfaceTint,
    this.outlineVariant,
    this.scrim,
    this.palette,
  });

  static const Color defaultError = Colors.red;
  static const Color defaultOnError = Colors.white;
  static const Color defaultDisabled = Colors.grey;
  static const Color defaultConfirmation = Colors.green;
  static const Color defaultOnConfirmation = Colors.white;
  static const Color defaultConfirmationContainer = Color(0xFFC4FFC7);
  static const Color defaultOnConfirmationContainer = Color(0xFF004203);
  static const Color defaultInformation = Colors.blue;
  static const Color defaultOnInformation = Colors.white;
  static const Color defaultInformationContainer = Color(0xFFBCE1FF);
  static const Color defaultOnInformationContainer = Color(0xFF012542);
  static const Color defaultWarning = Colors.orange;
  static const Color defaultOnWarning = Colors.white;
  static const Color defaultWarningContainer = Color(0xFFFFE0B3);
  static const Color defaultOnWarningContainer = Color(0xFF4C2E01);

  static const fromMap = ColorModelMapper.fromMap;
  static const fromJson = ColorModelMapper.fromJson;

  /// ] is a method that returns a [ColorScheme] based on the values of the [ColorModel].
  ColorScheme get scheme {
    final seedColor = ColorScheme.fromSeed(seedColor: primary!);
    return ColorScheme(
      brightness: Brightness.light,
      primary: primary!,
      primaryContainer: primaryContainer ?? seedColor.primary,
      secondary: secondary ?? seedColor.secondary,
      secondaryContainer: secondaryContainer ?? seedColor.secondaryContainer,
      surface: surface ?? seedColor.surface,
      error: error,
      onPrimary: onPrimary ?? seedColor.onPrimary,
      onSecondary: onSecondary ?? seedColor.onSecondary,
      onSurface: onSurface ?? seedColor.onSurface,
      onError: onError,
      surfaceContainerHighest: surfaceVariant ?? seedColor.surfaceContainerHighest,
      onErrorContainer: onErrorContainer ?? seedColor.onErrorContainer,
      onInverseSurface: onInverseSurface ?? seedColor.onInverseSurface,
      onPrimaryContainer: onPrimaryContainer ?? seedColor.onPrimaryContainer,
      onSecondaryContainer: onSecondaryContainer ?? seedColor.onSecondaryContainer,
      onSurfaceVariant: onSurfaceVariant ?? seedColor.onSurfaceVariant,
      onTertiary: onTertiary ?? seedColor.onTertiary,
      onTertiaryContainer: onTertiaryContainer ?? seedColor.onTertiaryContainer,
      outline: outline ?? seedColor.outline,
      outlineVariant: outlineVariant ?? seedColor.outlineVariant,
      scrim: scrim ?? seedColor.scrim,
      shadow: shadow ?? seedColor.shadow,
      surfaceTint: surfaceTint ?? seedColor.surfaceTint,
      tertiary: tertiary ?? seedColor.tertiary,
      tertiaryContainer: tertiaryContainer ?? seedColor.tertiaryContainer,
      inversePrimary: inversePrimary ?? seedColor.inversePrimary,
      inverseSurface: inverseSurface ?? seedColor.inverseSurface,
    );
  }

  /// [fromXml] is a factory method that allows you to create a [ColorModel] from an XML file.
  static Future<ColorModel> fromXml({
    required Brightness brightness,
    required String assetPath,
  }) async {
    final xmlString = await rootBundle.loadString(assetPath);
    final document = XmlDocument.parse(xmlString);

    final themeKey = brightness.toXml();

    final themeColors = <String, dynamic>{};
    final elements = document.findAllElements("color");

    for (final element in elements) {
      final name = element.getAttribute("name");

      final hexColor = element.innerText;

      final camelCaseName = name?.replaceFirst("${themeKey}_", "").snakeCaseToCamelCase();
      if (camelCaseName != null && camelCaseName.isNotEmpty) {
        themeColors[camelCaseName] = hexColor;
      }
    }

    themeColors["brightness"] = brightness;
    final model = ColorModel.fromMap(themeColors);
    return model;
  }

  /// [toXml] converts the [ColorModel] to an XML file.
  XmlDocument toXml() {
    final themeColors = toMap();

    final themeKey = Brightness.light.toXml();

    final xmlBuilder = XmlBuilder()..processing("xml", 'version="1.0"');
    xmlBuilder.element(
      "resources",
      nest: () {
        themeColors.forEach((key, color) {
          final snakeCaseName = key.camelCaseToSnakeCase();
          final name = "${themeKey}_$snakeCaseName";
          if (color is Color) {
            final hexColor = const ColorMapper().encode(color)?.toString().toLowerCase();
            xmlBuilder.element(
              "color",
              nest: hexColor,
              attributes: {
                "name": name,
              },
            );
          } else {
            throw Exception("ColorModel.toXml: color is not a Color");
          }
        });
      },
    );

    return xmlBuilder.buildDocument();
  }

  static Future<ColorModel> fromImage({required ImageProvider provider}) async {
    final brightness = AppTheme.isDark ? Brightness.dark : Brightness.light;
    final paletteGenerator = await PaletteGenerator.fromImageProvider(provider, maximumColorCount: 50);

    // Function to ensure high contrast
    Color ensureHighContrast(Color backgroundColor, Color fallbackColor) {
      return backgroundColor.computeLuminance() > 0.5 ? backgroundColor : fallbackColor;
    }

    final paletteColors = paletteGenerator.paletteColors.map((e) => Pair(e.color, e.population)).toList();

    final distinctColors = <Pair<Color, int>>[];
    for (final color in paletteColors) {
      if (distinctColors.every((c) => isSignificantlyDifferent(c.first, color.first))) {
        distinctColors.add(color);
      }
    }

    final seededPrimary = ColorScheme.fromSeed(seedColor: distinctColors[0].first, brightness: brightness);
    final seededSecondary = ColorScheme.fromSeed(seedColor: distinctColors[1].first, brightness: brightness);
    final seededTertiary = ColorScheme.fromSeed(seedColor: distinctColors[2].first, brightness: brightness);

    final brightnessMuted = brightness == Brightness.dark ? paletteGenerator.darkMutedColor?.color : paletteGenerator.lightMutedColor?.color;

    final primary = distinctColors[0].first;
    final secondary = distinctColors[1].first;
    final tertiary = distinctColors[2].first;
    final background = brightnessMuted ?? seededPrimary.surface;
    final surface = background.withBlue(background.blue - 8).withGreen(background.green - 8).withRed(background.red - 8);
    final error = paletteGenerator.dominantColor?.color ?? seededPrimary.error;

    return ColorModel(
      //Primary Colors
      primary: brightness == Brightness.dark ? ensureHighContrast(primary, seededSecondary.primary) : primary,
      primaryContainer: brightness == Brightness.dark ? secondary : primary,
      onPrimary: brightness == Brightness.dark ? primary : ensureHighContrast(primary, seededSecondary.primary),
      onPrimaryContainer: brightness == Brightness.dark ? primary : secondary,
      inversePrimary: seededSecondary.inversePrimary,

      //Secondary Colors
      secondary: brightness == Brightness.dark ? ensureHighContrast(secondary, seededPrimary.primary) : secondary,
      secondaryContainer: seededSecondary.primaryContainer,
      onSecondary: brightness == Brightness.dark ? secondary : ensureHighContrast(secondary, seededPrimary.primary),
      onSecondaryContainer: seededSecondary.primaryContainer,

      //Tertiary Colors
      tertiary: tertiary,
      tertiaryContainer: seededTertiary.primaryContainer,
      onTertiary: ensureHighContrast(tertiary, primary),
      onTertiaryContainer: seededTertiary.primaryContainer,

      //Error Colors
      error: error,
      onError: ensureHighContrast(error, seededPrimary.onError),
      errorContainer: seededPrimary.errorContainer,
      onErrorContainer: seededPrimary.onErrorContainer,

      //Background Colors
      background: background,
      surface: surface,
      onBackground: seededPrimary.onSurface,
      onSurface: seededPrimary.onSurface,
      onInverseSurface: seededPrimary.onInverseSurface,
      onSurfaceVariant: seededPrimary.onSurfaceVariant,
      inverseSurface: seededPrimary.inverseSurface,

      //Scrim Colors
      outline: seededPrimary.outline,
      outlineVariant: seededPrimary.outlineVariant,
      scrim: seededPrimary.scrim,
      shadow: seededPrimary.shadow,
      surfaceTint: secondary,

      //Information Colors
      information: secondary,
      onInformation: seededSecondary.onPrimary,
      informationContainer: seededSecondary.primaryContainer,
      onInformationContainer: seededSecondary.onPrimaryContainer,

      //Palette Colors
      palette: paletteGenerator.colors.map((e) => e).toList(),
    );
  }

  static ColorModel fromSeed({required Color seedColor}) {
    final seedColorScheme = ColorScheme.fromSeed(seedColor: seedColor);
    return ColorModel(
      primary: seedColorScheme.primary,
      primaryContainer: seedColorScheme.primaryContainer,
      secondary: seedColorScheme.secondary,
      secondaryContainer: seedColorScheme.secondaryContainer,
      background: seedColorScheme.surface,
      surface: seedColorScheme.surface,
      error: seedColorScheme.error,
      onPrimary: seedColorScheme.onPrimary,
      onSecondary: seedColorScheme.onSecondary,
      onBackground: seedColorScheme.onSurface,
      onSurface: seedColorScheme.onSurface,
      onError: seedColorScheme.onError,
      onErrorContainer: seedColorScheme.onErrorContainer,
      onInverseSurface: seedColorScheme.onInverseSurface,
      onPrimaryContainer: seedColorScheme.onPrimaryContainer,
      onSecondaryContainer: seedColorScheme.onSecondaryContainer,
      onSurfaceVariant: seedColorScheme.onSurfaceVariant,
      onTertiary: seedColorScheme.onTertiary,
      onTertiaryContainer: seedColorScheme.onTertiaryContainer,
      outline: seedColorScheme.outline,
      outlineVariant: seedColorScheme.outlineVariant,
      scrim: seedColorScheme.scrim,
      shadow: seedColorScheme.shadow,
      surfaceTint: seedColorScheme.surfaceTint,
      tertiary: seedColorScheme.tertiary,
      tertiaryContainer: seedColorScheme.tertiaryContainer,
      inversePrimary: seedColorScheme.inversePrimary,
      inverseSurface: seedColorScheme.inverseSurface,
    );
  }

  static ColorModel defaultModel({required Brightness brightness}) {
    final seedColorScheme = ColorScheme.fromSeed(seedColor: Colors.teal, brightness: brightness);
    return ColorModel(
      primary: seedColorScheme.primary,
      primaryContainer: seedColorScheme.primaryContainer,
      secondary: seedColorScheme.secondary,
      secondaryContainer: seedColorScheme.secondaryContainer,
      background: seedColorScheme.surface,
      surface: seedColorScheme.surface,
      error: seedColorScheme.error,
      onPrimary: seedColorScheme.onPrimary,
      onSecondary: seedColorScheme.onSecondary,
      onBackground: seedColorScheme.onSurface,
      onSurface: seedColorScheme.onSurface,
      onError: seedColorScheme.onError,
      onErrorContainer: seedColorScheme.onErrorContainer,
      onInverseSurface: seedColorScheme.onInverseSurface,
      onPrimaryContainer: seedColorScheme.onPrimaryContainer,
      onSecondaryContainer: seedColorScheme.onSecondaryContainer,
      onSurfaceVariant: seedColorScheme.onSurfaceVariant,
      onTertiary: seedColorScheme.onTertiary,
      onTertiaryContainer: seedColorScheme.onTertiaryContainer,
      outline: seedColorScheme.outline,
      outlineVariant: seedColorScheme.outlineVariant,
      scrim: seedColorScheme.scrim,
      shadow: seedColorScheme.shadow,
      surfaceTint: seedColorScheme.surfaceTint,
      tertiary: seedColorScheme.tertiary,
      tertiaryContainer: seedColorScheme.tertiaryContainer,
      inversePrimary: seedColorScheme.inversePrimary,
      inverseSurface: seedColorScheme.inverseSurface,
    );
  }

  // /// [ColorModel.fromMap] is a factory method that allows you to create a [ColorModel] from JSON.
  // // factory ColorModel.fromMap(Map<String, dynamic> json) => _$ColorModelFromJson(json);

  // factory ColorModel.fromMap(Map<String, dynamic> json) {
  //   final primary = const ColorMapper().fromMap(json["primary"]);
  //   final seedColor = ColorScheme.fromSeed(seedColor: primary ?? Colors.green);
  //   return ColorModel(
  //     primary: primary,
  //     onPrimary: const ColorMapper().fromMap(json["onPrimary"]) ?? seedColor.onPrimary,
  //     primaryContainer: const ColorMapper().fromMap(json["primaryContainer"]) ?? seedColor.primaryContainer,
  //     onPrimaryContainer: const ColorMapper().fromMap(json["onPrimaryContainer"]) ?? seedColor.onPrimaryContainer,
  //     secondary: const ColorMapper().fromMap(json["secondary"]) ?? seedColor.secondary,
  //     onSecondary: const ColorMapper().fromMap(json["onSecondary"]) ?? seedColor.onSecondary,
  //     secondaryContainer: const ColorMapper().fromMap(json["secondaryContainer"]) ?? seedColor.secondaryContainer,
  //     onSecondaryContainer: const ColorMapper().fromMap(json["onSecondaryContainer"]) ?? seedColor.onSecondaryContainer,
  //     tertiary: const ColorMapper().fromMap(json["tertiary"]) ?? seedColor.tertiary,
  //     onTertiary: const ColorMapper().fromMap(json["onTertiary"]) ?? seedColor.onTertiary,
  //     tertiaryContainer: const ColorMapper().fromMap(json["tertiaryContainer"]) ?? seedColor.tertiaryContainer,
  //     onTertiaryContainer: const ColorMapper().fromMap(json["onTertiaryContainer"]) ?? seedColor.onTertiaryContainer,
  //     disabled: const ColorMapper().fromMap(json["disabled"]) ?? defaultDisabled,
  //     error: const ColorMapper().fromMap(json["error"]) ?? seedColor.error,
  //     onError: const ColorMapper().fromMap(json["onError"]) ?? seedColor.onError,
  //     errorContainer: const ColorMapper().fromMap(json["errorContainer"]) ?? seedColor.errorContainer,
  //     onErrorContainer: const ColorMapper().fromMap(json["onErrorContainer"]) ?? seedColor.onErrorContainer,
  //     confirmation: const ColorMapper().fromMap(json["confirmation"]) ?? defaultConfirmation,
  //     onConfirmation: const ColorMapper().fromMap(json["onConfirmation"]) ?? defaultOnConfirmation,
  //     confirmationContainer: const ColorMapper().fromMap(json["confirmationContainer"]) ?? defaultConfirmationContainer,
  //     onConfirmationContainer: const ColorMapper().fromMap(json["onConfirmationContainer"]) ?? defaultOnConfirmationContainer,
  //     information: const ColorMapper().fromMap(json["information"]) ?? defaultInformation,
  //     onInformation: const ColorMapper().fromMap(json["onInformation"]) ?? defaultOnInformation,
  //     informationContainer: const ColorMapper().fromMap(json["informationContainer"]) ?? defaultInformationContainer,
  //     onInformationContainer: const ColorMapper().fromMap(json["onInformationContainer"]) ?? defaultOnInformationContainer,
  //     warning: const ColorMapper().fromMap(json["warning"]) ?? defaultWarning,
  //     onWarning: const ColorMapper().fromMap(json["onWarning"]) ?? defaultOnWarning,
  //     warningContainer: const ColorMapper().fromMap(json["warningContainer"]) ?? defaultWarningContainer,
  //     onWarningContainer: const ColorMapper().fromMap(json["onWarningContainer"]) ?? defaultOnWarningContainer,
  //     outline: const ColorMapper().fromMap(json["outline"]) ?? seedColor.outline,
  //     background: const ColorMapper().fromMap(json["background"]) ?? seedColor.background,
  //     onBackground: const ColorMapper().fromMap(json["onBackground"]) ?? seedColor.onBackground,
  //     surface: const ColorMapper().fromMap(json["surface"]) ?? seedColor.surface,
  //     onSurface: const ColorMapper().fromMap(json["onSurface"]) ?? seedColor.onSurface,
  //     surfaceVariant: const ColorMapper().fromMap(json["surfaceVariant"]) ?? seedColor.surfaceVariant,
  //     onSurfaceVariant: const ColorMapper().fromMap(json["onSurfaceVariant"]) ?? seedColor.onSurfaceVariant,
  //     inverseSurface: const ColorMapper().fromMap(json["inverseSurface"]) ?? seedColor.inverseSurface,
  //     onInverseSurface: const ColorMapper().fromMap(json["onInverseSurface"]) ?? seedColor.onInverseSurface,
  //     inversePrimary: const ColorMapper().fromMap(json["inversePrimary"]) ?? seedColor.inversePrimary,
  //     shadow: const ColorMapper().fromMap(json["shadow"]) ?? seedColor.shadow,
  //     surfaceTint: const ColorMapper().fromMap(json["surfaceTint"]) ?? seedColor.surfaceTint,
  //     outlineVariant: const ColorMapper().fromMap(json["outlineVariant"]) ?? seedColor.outlineVariant,
  //     scrim: const ColorMapper().fromMap(json["scrim"]) ?? seedColor.scrim,
  //   );
  // }

  // /// [toJson] is a method that converts the [ColorModel] to JSON.
  // Map<String, dynamic> toJson() => {
  //       "primary": const ColorMapper().toJson(primary),
  //       "onPrimary": const ColorMapper().toJson(onPrimary),
  //       "primaryContainer": const ColorMapper().toJson(primaryContainer),
  //       "onPrimaryContainer": const ColorMapper().toJson(onPrimaryContainer),
  //       "secondary": const ColorMapper().toJson(secondary),
  //       "onSecondary": const ColorMapper().toJson(onSecondary),
  //       "secondaryContainer": const ColorMapper().toJson(secondaryContainer),
  //       "onSecondaryContainer": const ColorMapper().toJson(onSecondaryContainer),
  //       "tertiary": const ColorMapper().toJson(tertiary),
  //       "onTertiary": const ColorMapper().toJson(onTertiary),
  //       "tertiaryContainer": const ColorMapper().toJson(tertiaryContainer),
  //       "onTertiaryContainer": const ColorMapper().toJson(onTertiaryContainer),
  //       "error": const ColorMapper().toJson(error),
  //       "onError": const ColorMapper().toJson(onError),
  //       "disabled": const ColorMapper().toJson(disabled),
  //       "errorContainer": const ColorMapper().toJson(errorContainer),
  //       "onErrorContainer": const ColorMapper().toJson(onErrorContainer),
  //       "confirmation": const ColorMapper().toJson(confirmation),
  //       "onConfirmation": const ColorMapper().toJson(onConfirmation),
  //       "confirmationContainer": const ColorMapper().toJson(confirmationContainer),
  //       "onConfirmationContainer": const ColorMapper().toJson(onConfirmationContainer),
  //       "information": const ColorMapper().toJson(information),
  //       "onInformation": const ColorMapper().toJson(onInformation),
  //       "informationContainer": const ColorMapper().toJson(informationContainer),
  //       "onInformationContainer": const ColorMapper().toJson(onInformationContainer),
  //       "warning": const ColorMapper().toJson(warning),
  //       "onWarning": const ColorMapper().toJson(onWarning),
  //       "warningContainer": const ColorMapper().toJson(warningContainer),
  //       "onWarningContainer": const ColorMapper().toJson(onWarningContainer),
  //       "outline": const ColorMapper().toJson(outline),
  //       "background": const ColorMapper().toJson(background),
  //       "onBackground": const ColorMapper().toJson(onBackground),
  //       "surface": const ColorMapper().toJson(surface),
  //       "onSurface": const ColorMapper().toJson(onSurface),
  //       "surfaceVariant": const ColorMapper().toJson(surfaceVariant),
  //       "onSurfaceVariant": const ColorMapper().toJson(onSurfaceVariant),
  //       "inverseSurface": const ColorMapper().toJson(inverseSurface),
  //       "onInverseSurface": const ColorMapper().toJson(onInverseSurface),
  //       "inversePrimary": const ColorMapper().toJson(inversePrimary),
  //       "shadow": const ColorMapper().toJson(shadow),
  //       "surfaceTint": const ColorMapper().toJson(surfaceTint),
  //       "outlineVariant": const ColorMapper().toJson(outlineVariant),
  //       "scrim": const ColorMapper().toJson(scrim),
  //     };
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

// part "color_model.freezed.dart";
// // part 'color_model.g.dart';

// /// [ColorModel] is a data class that holds the values for a [Color].
// @freezed
// class ColorModel with _$ColorModel {
//   /// [ColorModel] constructor
//   const factory ColorModel({
//     // required Brightness brightness,
//     @ColorMapper() Color? primary,
//     @ColorMapper() Color? onPrimary,
//     @ColorMapper() Color? primaryContainer,
//     @ColorMapper() Color? onPrimaryContainer,
//     @ColorMapper() Color? secondary,
//     @ColorMapper() Color? onSecondary,
//     @ColorMapper() Color? secondaryContainer,
//     @ColorMapper() Color? onSecondaryContainer,
//     @ColorMapper() Color? tertiary,
//     @ColorMapper() Color? onTertiary,
//     @ColorMapper() Color? tertiaryContainer,
//     @ColorMapper() Color? onTertiaryContainer,
//     @ColorMapper() @MappableValue(Colors.grey) Color disabled,
//     @ColorMapper() @MappableValue(Colors.red) Color error,
//     @ColorMapper() @MappableValue(Colors.white) Color onError,
//     @ColorMapper() Color? errorContainer,
//     @ColorMapper() Color? onErrorContainer,
//     @ColorMapper() @MappableValue(Colors.green) Color confirmation,
//     @ColorMapper() @MappableValue(Colors.white) Color onConfirmation,
//     @ColorMapper() @MappableValue(Color(0xFFC4FFC7)) Color confirmationContainer,
//     @ColorMapper() @MappableValue(Color(0xFF004203)) Color onConfirmationContainer,
//     @ColorMapper() @MappableValue(Colors.blue) Color information,
//     @ColorMapper() @MappableValue(Colors.white) Color onInformation,
//     @ColorMapper() @MappableValue(Color(0xFFBCE1FF)) Color informationContainer,
//     @ColorMapper() @MappableValue(Color(0xFF012542)) Color onInformationContainer,
//     @ColorMapper() @MappableValue(Colors.orange) Color warning,
//     @ColorMapper() @MappableValue(Colors.white) Color onWarning,
//     @ColorMapper() @MappableValue(Color(0xFFFFE0B3)) Color warningContainer,
//     @ColorMapper() @MappableValue(Color(0xFF4C2E01)) Color onWarningContainer,
//     @ColorMapper() Color? outline,
//     @ColorMapper() Color? background,
//     @ColorMapper() Color? onBackground,
//     @ColorMapper() Color? surface,
//     @ColorMapper() Color? onSurface,
//     @ColorMapper() Color? surfaceVariant,
//     @ColorMapper() Color? onSurfaceVariant,
//     @ColorMapper() Color? inverseSurface,
//     @ColorMapper() Color? onInverseSurface,
//     @ColorMapper() Color? inversePrimary,
//     @ColorMapper() Color? shadow,
//     @ColorMapper() Color? surfaceTint,
//     @ColorMapper() Color? outlineVariant,
//     @ColorMapper() Color? scrim,
//   }) = _themeColorStringModel;
//   const ColorModel._();
//   static const Color defaultError = Colors.red;
//   static const Color defaultOnError = Colors.white;
//   static const Color defaultDisabled = Colors.grey;
//   static const Color defaultConfirmation = Colors.green;
//   static const Color defaultOnConfirmation = Colors.white;
//   static const Color defaultConfirmationContainer = Color(0xFFC4FFC7);
//   static const Color defaultOnConfirmationContainer = Color(0xFF004203);
//   static const Color defaultInformation = Colors.blue;
//   static const Color defaultOnInformation = Colors.white;
//   static const Color defaultInformationContainer = Color(0xFFBCE1FF);
//   static const Color defaultOnInformationContainer = Color(0xFF012542);
//   static const Color defaultWarning = Colors.orange;
//   static const Color defaultOnWarning = Colors.white;
//   static const Color defaultWarningContainer = Color(0xFFFFE0B3);
//   static const Color defaultOnWarningContainer = Color(0xFF4C2E01);

//   // /// ] is a method that returns a [ColorScheme] based on the values of the [ColorModel].
//   // ColorScheme get scheme {
//   //   final seedColor = ColorScheme.fromSeed(seedColor: primary!);
//   //   return ColorScheme(
//   //     brightness: Brightness.light,
//   //     primary: primary!,
//   //     primaryContainer: primaryContainer ?? seedColor.primary,
//   //     secondary: secondary ?? seedColor.secondary,
//   //     secondaryContainer: secondaryContainer ?? seedColor.secondaryContainer,
//   //     background: background ?? seedColor.background,
//   //     surface: surface ?? seedColor.surface,
//   //     error: error,
//   //     onPrimary: onPrimary ?? seedColor.onPrimary,
//   //     onSecondary: onSecondary ?? seedColor.onSecondary,
//   //     onBackground: onBackground ?? seedColor.onBackground,
//   //     onSurface: onSurface ?? seedColor.onSurface,
//   //     onError: onError,
//   //     surfaceVariant: surfaceVariant ?? seedColor.surfaceVariant,
//   //     onErrorContainer: onErrorContainer ?? seedColor.onErrorContainer,
//   //     onInverseSurface: onInverseSurface ?? seedColor.onInverseSurface,
//   //     onPrimaryContainer: onPrimaryContainer ?? seedColor.onPrimaryContainer,
//   //     onSecondaryContainer:
//   //         onSecondaryContainer ?? seedColor.onSecondaryContainer,
//   //     onSurfaceVariant: onSurfaceVariant ?? seedColor.onSurfaceVariant,
//   //     onTertiary: onTertiary ?? seedColor.onTertiary,
//   //     onTertiaryContainer: onTertiaryContainer ?? seedColor.onTertiaryContainer,
//   //     outline: outline ?? seedColor.outline,
//   //     outlineVariant: outlineVariant ?? seedColor.outlineVariant,
//   //     scrim: scrim ?? seedColor.scrim,
//   //     shadow: shadow ?? seedColor.shadow,
//   //     surfaceTint: surfaceTint ?? seedColor.surfaceTint,
//   //     tertiary: tertiary ?? seedColor.tertiary,
//   //     tertiaryContainer: tertiaryContainer ?? seedColor.tertiaryContainer,
//   //     inversePrimary: inversePrimary ?? seedColor.inversePrimary,
//   //     inverseSurface: inverseSurface ?? seedColor.inverseSurface,
//   //   );
//   // }

//   // /// [fromXml] is a factory method that allows you to create a [ColorModel] from an XML file.
//   // static Future<ColorModel> fromXml({
//   //   required Brightness brightness,
//   //   required String assetPath,
//   // }) async {
//   //   final xmlString = await rootBundle.loadString(assetPath);
//   //   final document = XmlDocument.parse(xmlString);

//   //   final themeKey = brightness.toXml();

//   //   final themeColors = <String, dynamic>{};
//   //   final elements = document.findAllElements("color");

//   //   for (final element in elements) {
//   //     final name = element.getAttribute("name");

//   //     final hexColor = element.innerText;

//   //     final camelCaseName =
//   //         name?.replaceFirst("${themeKey}_", "").snakeCaseToCamelCase();
//   //     if (camelCaseName != null && camelCaseName.isNotEmpty) {
//   //       themeColors[camelCaseName] = hexColor;
//   //     }
//   //   }

//   //   themeColors["brightness"] = brightness;
//   //   final model = ColorModel.fromMap(themeColors);
//   //   return model;
//   // }

//   // /// [toXml] converts the [ColorModel] to an XML file.
//   // XmlDocument toXml() {
//   //   final themeColors = toJson();

//   //   final themeKey = Brightness.light.toXml();

//   //   final xmlBuilder = XmlBuilder()..processing("xml", 'version="1.0"');
//   //   xmlBuilder.element(
//   //     "resources",
//   //     nest: () {
//   //       themeColors.forEach((key, color) {
//   //         final snakeCaseName = key.camelCaseToSnakeCase();
//   //         final name = "${themeKey}_$snakeCaseName";
//   //         final hexColor =
//   //             const ColorMapper().toJson(color as Color?)?.toLowerCase();
//   //         xmlBuilder.element(
//   //           "color",
//   //           nest: hexColor,
//   //           attributes: {
//   //             "name": name,
//   //           },
//   //         );
//   //       });
//   //     },
//   //   );

//   //   return xmlBuilder.buildDocument();
//   // }

//   // static ColorModel defaultModel({required Brightness brightness}) {
//   //   final seedColorScheme =
//   //       ColorScheme.fromSeed(seedColor: Colors.teal, brightness: brightness);
//   //   return ColorModel(
//   //     primary: seedColorScheme.primary,
//   //     primaryContainer: seedColorScheme.primaryContainer,
//   //     secondary: seedColorScheme.secondary,
//   //     secondaryContainer: seedColorScheme.secondaryContainer,
//   //     background: seedColorScheme.background,
//   //     surface: seedColorScheme.surface,
//   //     error: seedColorScheme.error,
//   //     onPrimary: seedColorScheme.onPrimary,
//   //     onSecondary: seedColorScheme.onSecondary,
//   //     onBackground: seedColorScheme.onBackground,
//   //     onSurface: seedColorScheme.onSurface,
//   //     onError: seedColorScheme.onError,
//   //     onErrorContainer: seedColorScheme.onErrorContainer,
//   //     onInverseSurface: seedColorScheme.onInverseSurface,
//   //     onPrimaryContainer: seedColorScheme.onPrimaryContainer,
//   //     onSecondaryContainer: seedColorScheme.onSecondaryContainer,
//   //     onSurfaceVariant: seedColorScheme.onSurfaceVariant,
//   //     onTertiary: seedColorScheme.onTertiary,
//   //     onTertiaryContainer: seedColorScheme.onTertiaryContainer,
//   //     outline: seedColorScheme.outline,
//   //     outlineVariant: seedColorScheme.outlineVariant,
//   //     scrim: seedColorScheme.scrim,
//   //     shadow: seedColorScheme.shadow,
//   //     surfaceTint: seedColorScheme.surfaceTint,
//   //     tertiary: seedColorScheme.tertiary,
//   //     tertiaryContainer: seedColorScheme.tertiaryContainer,
//   //     inversePrimary: seedColorScheme.inversePrimary,
//   //     inverseSurface: seedColorScheme.inverseSurface,
//   //   );
//   // }

//   // /// [ColorModel.fromMap] is a factory method that allows you to create a [ColorModel] from JSON.
//   // // factory ColorModel.fromMap(Map<String, dynamic> json) => _$ColorModelFromJson(json);

//   // factory ColorModel.fromMap(Map<String, dynamic> json) {
//   //   final primary = const ColorMapper().fromMap(json["primary"]);
//   //   final seedColor = ColorScheme.fromSeed(seedColor: primary ?? Colors.green);
//   //   return ColorModel(
//   //     primary: primary,
//   //     onPrimary: const ColorMapper().fromMap(json["onPrimary"]) ??
//   //         seedColor.onPrimary,
//   //     primaryContainer:
//   //         const ColorMapper().fromMap(json["primaryContainer"]) ??
//   //             seedColor.primaryContainer,
//   //     onPrimaryContainer:
//   //         const ColorMapper().fromMap(json["onPrimaryContainer"]) ??
//   //             seedColor.onPrimaryContainer,
//   //     secondary: const ColorMapper().fromMap(json["secondary"]) ??
//   //         seedColor.secondary,
//   //     onSecondary: const ColorMapper().fromMap(json["onSecondary"]) ??
//   //         seedColor.onSecondary,
//   //     secondaryContainer:
//   //         const ColorMapper().fromMap(json["secondaryContainer"]) ??
//   //             seedColor.secondaryContainer,
//   //     onSecondaryContainer:
//   //         const ColorMapper().fromMap(json["onSecondaryContainer"]) ??
//   //             seedColor.onSecondaryContainer,
//   //     tertiary: const ColorMapper().fromMap(json["tertiary"]) ??
//   //         seedColor.tertiary,
//   //     onTertiary: const ColorMapper().fromMap(json["onTertiary"]) ??
//   //         seedColor.onTertiary,
//   //     tertiaryContainer:
//   //         const ColorMapper().fromMap(json["tertiaryContainer"]) ??
//   //             seedColor.tertiaryContainer,
//   //     onTertiaryContainer:
//   //         const ColorMapper().fromMap(json["onTertiaryContainer"]) ??
//   //             seedColor.onTertiaryContainer,
//   //     disabled:
//   //         const ColorMapper().fromMap(json["disabled"]) ?? defaultDisabled,
//   //     error: const ColorMapper().fromMap(json["error"]) ?? seedColor.error,
//   //     onError:
//   //         const ColorMapper().fromMap(json["onError"]) ?? seedColor.onError,
//   //     errorContainer: const ColorMapper().fromMap(json["errorContainer"]) ??
//   //         seedColor.errorContainer,
//   //     onErrorContainer:
//   //         const ColorMapper().fromMap(json["onErrorContainer"]) ??
//   //             seedColor.onErrorContainer,
//   //     confirmation: const ColorMapper().fromMap(json["confirmation"]) ??
//   //         defaultConfirmation,
//   //     onConfirmation: const ColorMapper().fromMap(json["onConfirmation"]) ??
//   //         defaultOnConfirmation,
//   //     confirmationContainer:
//   //         const ColorMapper().fromMap(json["confirmationContainer"]) ??
//   //             defaultConfirmationContainer,
//   //     onConfirmationContainer:
//   //         const ColorMapper().fromMap(json["onConfirmationContainer"]) ??
//   //             defaultOnConfirmationContainer,
//   //     information: const ColorMapper().fromMap(json["information"]) ??
//   //         defaultInformation,
//   //     onInformation: const ColorMapper().fromMap(json["onInformation"]) ??
//   //         defaultOnInformation,
//   //     informationContainer:
//   //         const ColorMapper().fromMap(json["informationContainer"]) ??
//   //             defaultInformationContainer,
//   //     onInformationContainer:
//   //         const ColorMapper().fromMap(json["onInformationContainer"]) ??
//   //             defaultOnInformationContainer,
//   //     warning:
//   //         const ColorMapper().fromMap(json["warning"]) ?? defaultWarning,
//   //     onWarning: const ColorMapper().fromMap(json["onWarning"]) ??
//   //         defaultOnWarning,
//   //     warningContainer:
//   //         const ColorMapper().fromMap(json["warningContainer"]) ??
//   //             defaultWarningContainer,
//   //     onWarningContainer:
//   //         const ColorMapper().fromMap(json["onWarningContainer"]) ??
//   //             defaultOnWarningContainer,
//   //     outline:
//   //         const ColorMapper().fromMap(json["outline"]) ?? seedColor.outline,
//   //     background: const ColorMapper().fromMap(json["background"]) ??
//   //         seedColor.background,
//   //     onBackground: const ColorMapper().fromMap(json["onBackground"]) ??
//   //         seedColor.onBackground,
//   //     surface:
//   //         const ColorMapper().fromMap(json["surface"]) ?? seedColor.surface,
//   //     onSurface: const ColorMapper().fromMap(json["onSurface"]) ??
//   //         seedColor.onSurface,
//   //     surfaceVariant: const ColorMapper().fromMap(json["surfaceVariant"]) ??
//   //         seedColor.surfaceVariant,
//   //     onSurfaceVariant:
//   //         const ColorMapper().fromMap(json["onSurfaceVariant"]) ??
//   //             seedColor.onSurfaceVariant,
//   //     inverseSurface: const ColorMapper().fromMap(json["inverseSurface"]) ??
//   //         seedColor.inverseSurface,
//   //     onInverseSurface:
//   //         const ColorMapper().fromMap(json["onInverseSurface"]) ??
//   //             seedColor.onInverseSurface,
//   //     inversePrimary: const ColorMapper().fromMap(json["inversePrimary"]) ??
//   //         seedColor.inversePrimary,
//   //     shadow:
//   //         const ColorMapper().fromMap(json["shadow"]) ?? seedColor.shadow,
//   //     surfaceTint: const ColorMapper().fromMap(json["surfaceTint"]) ??
//   //         seedColor.surfaceTint,
//   //     outlineVariant: const ColorMapper().fromMap(json["outlineVariant"]) ??
//   //         seedColor.outlineVariant,
//   //     scrim: const ColorMapper().fromMap(json["scrim"]) ?? seedColor.scrim,
//   //   );
//   // }

//   // /// [toJson] is a method that converts the [ColorModel] to JSON.
//   // Map<String, dynamic> toJson() => {
//   //       "primary": const ColorMapper().toJson(primary),
//   //       "onPrimary": const ColorMapper().toJson(onPrimary),
//   //       "primaryContainer": const ColorMapper().toJson(primaryContainer),
//   //       "onPrimaryContainer": const ColorMapper().toJson(onPrimaryContainer),
//   //       "secondary": const ColorMapper().toJson(secondary),
//   //       "onSecondary": const ColorMapper().toJson(onSecondary),
//   //       "secondaryContainer": const ColorMapper().toJson(secondaryContainer),
//   //       "onSecondaryContainer":
//   //           const ColorMapper().toJson(onSecondaryContainer),
//   //       "tertiary": const ColorMapper().toJson(tertiary),
//   //       "onTertiary": const ColorMapper().toJson(onTertiary),
//   //       "tertiaryContainer": const ColorMapper().toJson(tertiaryContainer),
//   //       "onTertiaryContainer":
//   //           const ColorMapper().toJson(onTertiaryContainer),
//   //       "error": const ColorMapper().toJson(error),
//   //       "onError": const ColorMapper().toJson(onError),
//   //       "disabled": const ColorMapper().toJson(disabled),
//   //       "errorContainer": const ColorMapper().toJson(errorContainer),
//   //       "onErrorContainer": const ColorMapper().toJson(onErrorContainer),
//   //       "confirmation": const ColorMapper().toJson(confirmation),
//   //       "onConfirmation": const ColorMapper().toJson(onConfirmation),
//   //       "confirmationContainer":
//   //           const ColorMapper().toJson(confirmationContainer),
//   //       "onConfirmationContainer":
//   //           const ColorMapper().toJson(onConfirmationContainer),
//   //       "information": const ColorMapper().toJson(information),
//   //       "onInformation": const ColorMapper().toJson(onInformation),
//   //       "informationContainer":
//   //           const ColorMapper().toJson(informationContainer),
//   //       "onInformationContainer":
//   //           const ColorMapper().toJson(onInformationContainer),
//   //       "warning": const ColorMapper().toJson(warning),
//   //       "onWarning": const ColorMapper().toJson(onWarning),
//   //       "warningContainer": const ColorMapper().toJson(warningContainer),
//   //       "onWarningContainer": const ColorMapper().toJson(onWarningContainer),
//   //       "outline": const ColorMapper().toJson(outline),
//   //       "background": const ColorMapper().toJson(background),
//   //       "onBackground": const ColorMapper().toJson(onBackground),
//   //       "surface": const ColorMapper().toJson(surface),
//   //       "onSurface": const ColorMapper().toJson(onSurface),
//   //       "surfaceVariant": const ColorMapper().toJson(surfaceVariant),
//   //       "onSurfaceVariant": const ColorMapper().toJson(onSurfaceVariant),
//   //       "inverseSurface": const ColorMapper().toJson(inverseSurface),
//   //       "onInverseSurface": const ColorMapper().toJson(onInverseSurface),
//   //       "inversePrimary": const ColorMapper().toJson(inversePrimary),
//   //       "shadow": const ColorMapper().toJson(shadow),
//   //       "surfaceTint": const ColorMapper().toJson(surfaceTint),
//   //       "outlineVariant": const ColorMapper().toJson(outlineVariant),
//   //       "scrim": const ColorMapper().toJson(scrim),
//   //     };
// }

// Helper functions to convert RGB to XYZ
List<double> _rgbToXyz(Color color) {
  var r = color.red / 255.0;
  var g = color.green / 255.0;
  var b = color.blue / 255.0;

  r = (r > 0.04045) ? pow((r + 0.055) / 1.055, 2.4).toDouble() : r / 12.92;
  g = (g > 0.04045) ? pow((g + 0.055) / 1.055, 2.4).toDouble() : g / 12.92;
  b = (b > 0.04045) ? pow((b + 0.055) / 1.055, 2.4).toDouble() : b / 12.92;

  r *= 100;
  g *= 100;
  b *= 100;

  // Observer. = 2°, Illuminant = D65
  return [
    r * 0.4124 + g * 0.3576 + b * 0.1805,
    r * 0.2126 + g * 0.7152 + b * 0.0722,
    r * 0.0193 + g * 0.1192 + b * 0.9505,
  ];
}

// Helper functions to convert XYZ to LAB
List<double> _xyzToLab(List<double> xyz) {
  var x = xyz[0] / 95.047;
  var y = xyz[1] / 100.000;
  var z = xyz[2] / 108.883;

  x = (x > 0.008856) ? pow(x, 1 / 3).toDouble() : (7.787 * x) + (16 / 116);
  y = (y > 0.008856) ? pow(y, 1 / 3).toDouble() : (7.787 * y) + (16 / 116);
  z = (z > 0.008856) ? pow(z, 1 / 3).toDouble() : (7.787 * z) + (16 / 116);

  return [(116 * y) - 16, 500 * (x - y), 200 * (y - z)];
}

// Function to convert RGB to LAB
List<double> rgbToLab(Color color) {
  final xyz = _rgbToXyz(color);
  return _xyzToLab(xyz);
}

// Function to calculate the Euclidean distance between two LAB colors
double colorDifference(Color color1, Color color2) {
  final lab1 = rgbToLab(color1);
  final lab2 = rgbToLab(color2);

  final deltaL = lab1[0] - lab2[0];
  final deltaA = lab1[1] - lab2[1];
  final deltaB = lab1[2] - lab2[2];

  return sqrt(deltaL * deltaL + deltaA * deltaA + deltaB * deltaB);
}

// Function to check if the color difference is significant
bool isSignificantlyDifferent(Color color1, Color color2, {double threshold = 30.0}) {
  return colorDifference(color1, color2) > threshold;
}
