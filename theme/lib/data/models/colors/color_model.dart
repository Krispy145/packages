import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/colors/color_schemes.dart';
import 'package:theme/domain/converters/colors/color.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:xml/xml.dart';

part 'color_model.freezed.dart';
// part 'color_model.g.dart';

/// [ColorModel] is a data class that holds the values for a [Color].
@freezed
class ColorModel with _$ColorModel {
  /// [ColorModel] constructor
  const factory ColorModel({
    // required Brightness brightness,
    @ColorConverter() Color? primary,
    @ColorConverter() Color? onPrimary,
    @ColorConverter() Color? primaryContainer,
    @ColorConverter() Color? onPrimaryContainer,
    @ColorConverter() Color? secondary,
    @ColorConverter() Color? onSecondary,
    @ColorConverter() Color? secondaryContainer,
    @ColorConverter() Color? onSecondaryContainer,
    @ColorConverter() Color? tertiary,
    @ColorConverter() Color? onTertiary,
    @ColorConverter() Color? tertiaryContainer,
    @ColorConverter() Color? onTertiaryContainer,
    @ColorConverter() @Default(Colors.grey) Color disabled,
    @ColorConverter() @Default(Colors.red) Color error,
    @ColorConverter() @Default(Colors.white) Color onError,
    @ColorConverter() Color? errorContainer,
    @ColorConverter() Color? onErrorContainer,
    @ColorConverter() @Default(Colors.green) Color confirmation,
    @ColorConverter() @Default(Colors.white) Color onConfirmation,
    @ColorConverter() @Default(Color(0xFFC4FFC7)) Color confirmationContainer,
    @ColorConverter() @Default(Color(0xFF004203)) Color onConfirmationContainer,
    @ColorConverter() @Default(Colors.blue) Color information,
    @ColorConverter() @Default(Colors.white) Color onInformation,
    @ColorConverter() @Default(Color(0xFFBCE1FF)) Color informationContainer,
    @ColorConverter() @Default(Color(0xFF012542)) Color onInformationContainer,
    @ColorConverter() @Default(Colors.orange) Color warning,
    @ColorConverter() @Default(Colors.white) Color onWarning,
    @ColorConverter() @Default(Color(0xFFFFE0B3)) Color warningContainer,
    @ColorConverter() @Default(Color(0xFF4C2E01)) Color onWarningContainer,
    @ColorConverter() Color? outline,
    @ColorConverter() Color? background,
    @ColorConverter() Color? onBackground,
    @ColorConverter() Color? surface,
    @ColorConverter() Color? onSurface,
    @ColorConverter() Color? surfaceVariant,
    @ColorConverter() Color? onSurfaceVariant,
    @ColorConverter() Color? inverseSurface,
    @ColorConverter() Color? onInverseSurface,
    @ColorConverter() Color? inversePrimary,
    @ColorConverter() Color? shadow,
    @ColorConverter() Color? surfaceTint,
    @ColorConverter() Color? outlineVariant,
    @ColorConverter() Color? scrim,
  }) = _ColorModel;
  const ColorModel._();
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

  /// ] is a method that returns a [ColorScheme] based on the values of the [ColorModel].
  ColorScheme get scheme {
    final seedColor = ColorScheme.fromSeed(seedColor: primary!);
    return ColorScheme(
      brightness: Brightness.light,
      primary: primary!,
      primaryContainer: primaryContainer ?? seedColor.primary,
      secondary: secondary ?? seedColor.secondary,
      secondaryContainer: secondaryContainer ?? seedColor.secondaryContainer,
      background: background ?? seedColor.background,
      surface: surface ?? seedColor.surface,
      error: error,
      onPrimary: onPrimary ?? seedColor.onPrimary,
      onSecondary: onSecondary ?? seedColor.onSecondary,
      onBackground: onBackground ?? seedColor.onBackground,
      onSurface: onSurface ?? seedColor.onSurface,
      onError: onError,
      surfaceVariant: surfaceVariant ?? seedColor.surfaceVariant,
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
    final elements = document.findAllElements('color');

    for (final element in elements) {
      final name = element.getAttribute('name');

      final hexColor = element.innerText;

      final camelCaseName = name?.replaceFirst('${themeKey}_', '').snakeCaseToCamelCase();
      if (camelCaseName != null && camelCaseName.isNotEmpty) {
        themeColors[camelCaseName] = hexColor;
      }
    }

    themeColors['brightness'] = brightness;
    final model = ColorModel.fromJson(themeColors);
    return model;
  }

  /// [toXml] converts the [ColorModel] to an XML file.
  XmlDocument toXml() {
    final themeColors = toJson();

    final themeKey = Brightness.light.toXml();

    final xmlBuilder = XmlBuilder()..processing('xml', 'version="1.0"');
    xmlBuilder.element(
      'resources',
      nest: () {
        themeColors.forEach((key, color) {
          final snakeCaseName = key.camelCaseToSnakeCase();
          final name = '${themeKey}_$snakeCaseName';
          final hexColor = const ColorConverter().toJson(color as Color?)?.toLowerCase();
          xmlBuilder.element(
            'color',
            nest: hexColor,
            attributes: {
              'name': name,
            },
          );
        });
      },
    );

    return xmlBuilder.buildDocument();
  }

  static ColorModel defaultModel({required Brightness brightness}) {
    final seedColorScheme = ColorScheme.fromSeed(seedColor: Colors.teal, brightness: brightness);
    return ColorModel(
      primary: seedColorScheme.primary,
      primaryContainer: seedColorScheme.primaryContainer,
      secondary: seedColorScheme.secondary,
      secondaryContainer: seedColorScheme.secondaryContainer,
      background: seedColorScheme.background,
      surface: seedColorScheme.surface,
      error: seedColorScheme.error,
      onPrimary: seedColorScheme.onPrimary,
      onSecondary: seedColorScheme.onSecondary,
      onBackground: seedColorScheme.onBackground,
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

  /// [ColorModel.fromJson] is a factory method that allows you to create a [ColorModel] from JSON.
  // factory ColorModel.fromJson(Map<String, dynamic> json) => _$ColorModelFromJson(json);

  factory ColorModel.fromJson(Map<String, dynamic> json) {
    final primary = const ColorConverter().fromJson(json['primary']);
    final seedColor = ColorScheme.fromSeed(seedColor: primary!);
    return ColorModel(
      primary: primary,
      onPrimary: const ColorConverter().fromJson(json['onPrimary']) ?? seedColor.onPrimary,
      primaryContainer: const ColorConverter().fromJson(json['primaryContainer']) ?? seedColor.primaryContainer,
      onPrimaryContainer: const ColorConverter().fromJson(json['onPrimaryContainer']) ?? seedColor.onPrimaryContainer,
      secondary: const ColorConverter().fromJson(json['secondary']) ?? seedColor.secondary,
      onSecondary: const ColorConverter().fromJson(json['onSecondary']) ?? seedColor.onSecondary,
      secondaryContainer: const ColorConverter().fromJson(json['secondaryContainer']) ?? seedColor.secondaryContainer,
      onSecondaryContainer: const ColorConverter().fromJson(json['onSecondaryContainer']) ?? seedColor.onSecondaryContainer,
      tertiary: const ColorConverter().fromJson(json['tertiary']) ?? seedColor.tertiary,
      onTertiary: const ColorConverter().fromJson(json['onTertiary']) ?? seedColor.onTertiary,
      tertiaryContainer: const ColorConverter().fromJson(json['tertiaryContainer']) ?? seedColor.tertiaryContainer,
      onTertiaryContainer: const ColorConverter().fromJson(json['onTertiaryContainer']) ?? seedColor.onTertiaryContainer,
      disabled: const ColorConverter().fromJson(json['disabled']) ?? defaultDisabled,
      error: const ColorConverter().fromJson(json['error']) ?? seedColor.error,
      onError: const ColorConverter().fromJson(json['onError']) ?? seedColor.onError,
      errorContainer: const ColorConverter().fromJson(json['errorContainer']) ?? seedColor.errorContainer,
      onErrorContainer: const ColorConverter().fromJson(json['onErrorContainer']) ?? seedColor.onErrorContainer,
      confirmation: const ColorConverter().fromJson(json['confirmation']) ?? defaultConfirmation,
      onConfirmation: const ColorConverter().fromJson(json['onConfirmation']) ?? defaultOnConfirmation,
      confirmationContainer: const ColorConverter().fromJson(json['confirmationContainer']) ?? defaultConfirmationContainer,
      onConfirmationContainer: const ColorConverter().fromJson(json['onConfirmationContainer']) ?? defaultOnConfirmationContainer,
      information: const ColorConverter().fromJson(json['information']) ?? defaultInformation,
      onInformation: const ColorConverter().fromJson(json['onInformation']) ?? defaultOnInformation,
      informationContainer: const ColorConverter().fromJson(json['informationContainer']) ?? defaultInformationContainer,
      onInformationContainer: const ColorConverter().fromJson(json['onInformationContainer']) ?? defaultOnInformationContainer,
      warning: const ColorConverter().fromJson(json['warning']) ?? defaultWarning,
      onWarning: const ColorConverter().fromJson(json['onWarning']) ?? defaultOnWarning,
      warningContainer: const ColorConverter().fromJson(json['warningContainer']) ?? defaultWarningContainer,
      onWarningContainer: const ColorConverter().fromJson(json['onWarningContainer']) ?? defaultOnWarningContainer,
      outline: const ColorConverter().fromJson(json['outline']) ?? seedColor.outline,
      background: const ColorConverter().fromJson(json['background']) ?? seedColor.background,
      onBackground: const ColorConverter().fromJson(json['onBackground']) ?? seedColor.onBackground,
      surface: const ColorConverter().fromJson(json['surface']) ?? seedColor.surface,
      onSurface: const ColorConverter().fromJson(json['onSurface']) ?? seedColor.onSurface,
      surfaceVariant: const ColorConverter().fromJson(json['surfaceVariant']) ?? seedColor.surfaceVariant,
      onSurfaceVariant: const ColorConverter().fromJson(json['onSurfaceVariant']) ?? seedColor.onSurfaceVariant,
      inverseSurface: const ColorConverter().fromJson(json['inverseSurface']) ?? seedColor.inverseSurface,
      onInverseSurface: const ColorConverter().fromJson(json['onInverseSurface']) ?? seedColor.onInverseSurface,
      inversePrimary: const ColorConverter().fromJson(json['inversePrimary']) ?? seedColor.inversePrimary,
      shadow: const ColorConverter().fromJson(json['shadow']) ?? seedColor.shadow,
      surfaceTint: const ColorConverter().fromJson(json['surfaceTint']) ?? seedColor.surfaceTint,
      outlineVariant: const ColorConverter().fromJson(json['outlineVariant']) ?? seedColor.outlineVariant,
      scrim: const ColorConverter().fromJson(json['scrim']) ?? seedColor.scrim,
    );
  }

  /// [toJson] is a method that converts the [ColorModel] to JSON.
  Map<String, dynamic> toJson() => {
        'primary': const ColorConverter().toJson(primary),
        'onPrimary': const ColorConverter().toJson(onPrimary),
        'primaryContainer': const ColorConverter().toJson(primaryContainer),
        'onPrimaryContainer': const ColorConverter().toJson(onPrimaryContainer),
        'secondary': const ColorConverter().toJson(secondary),
        'onSecondary': const ColorConverter().toJson(onSecondary),
        'secondaryContainer': const ColorConverter().toJson(secondaryContainer),
        'onSecondaryContainer': const ColorConverter().toJson(onSecondaryContainer),
        'tertiary': const ColorConverter().toJson(tertiary),
        'onTertiary': const ColorConverter().toJson(onTertiary),
        'tertiaryContainer': const ColorConverter().toJson(tertiaryContainer),
        'onTertiaryContainer': const ColorConverter().toJson(onTertiaryContainer),
        'error': const ColorConverter().toJson(error),
        'onError': const ColorConverter().toJson(onError),
        'disabled': const ColorConverter().toJson(disabled),
        'errorContainer': const ColorConverter().toJson(errorContainer),
        'onErrorContainer': const ColorConverter().toJson(onErrorContainer),
        'confirmation': const ColorConverter().toJson(confirmation),
        'onConfirmation': const ColorConverter().toJson(onConfirmation),
        'confirmationContainer': const ColorConverter().toJson(confirmationContainer),
        'onConfirmationContainer': const ColorConverter().toJson(onConfirmationContainer),
        'information': const ColorConverter().toJson(information),
        'onInformation': const ColorConverter().toJson(onInformation),
        'informationContainer': const ColorConverter().toJson(informationContainer),
        'onInformationContainer': const ColorConverter().toJson(onInformationContainer),
        'warning': const ColorConverter().toJson(warning),
        'onWarning': const ColorConverter().toJson(onWarning),
        'warningContainer': const ColorConverter().toJson(warningContainer),
        'onWarningContainer': const ColorConverter().toJson(onWarningContainer),
        'outline': const ColorConverter().toJson(outline),
        'background': const ColorConverter().toJson(background),
        'onBackground': const ColorConverter().toJson(onBackground),
        'surface': const ColorConverter().toJson(surface),
        'onSurface': const ColorConverter().toJson(onSurface),
        'surfaceVariant': const ColorConverter().toJson(surfaceVariant),
        'onSurfaceVariant': const ColorConverter().toJson(onSurfaceVariant),
        'inverseSurface': const ColorConverter().toJson(inverseSurface),
        'onInverseSurface': const ColorConverter().toJson(onInverseSurface),
        'inversePrimary': const ColorConverter().toJson(inversePrimary),
        'shadow': const ColorConverter().toJson(shadow),
        'surfaceTint': const ColorConverter().toJson(surfaceTint),
        'outlineVariant': const ColorConverter().toJson(outlineVariant),
        'scrim': const ColorConverter().toJson(scrim),
      };
}
