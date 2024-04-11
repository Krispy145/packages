import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/models/font_family_and_variant.dart';
import 'package:fonts/data/models/font_variant_descriptor.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

import 'domain/repositories/fonts.repository.dart';

part 'store.g.dart';

typedef TextStyleBuilder = TextStyle Function({
  TextStyle? textStyle,
  Color? color,
  Color? backgroundColor,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
  double? letterSpacing,
  double? wordSpacing,
  TextBaseline? textBaseline,
  double? height,
  Locale? locale,
  Paint? foreground,
  Paint? background,
  List<ui.Shadow>? shadows,
  List<ui.FontFeature>? fontFeatures,
  TextDecoration? decoration,
  Color? decorationColor,
  TextDecorationStyle? decorationStyle,
  double? decorationThickness,
});

typedef TextThemeBuilder = TextTheme Function([TextTheme?]);

/// [FontsStore] is a class that uses [FontsBaseStore] to manage state of the fonts feature.
class FontsStore = FontsBaseStore with _$FontsStore;

/// [FontsBaseStore] is a class that manages the state of the fonts feature.
abstract class FontsBaseStore extends LoadStateStore with Store {
  FontsBaseStore({this.allowRuntimeFetching = true});

  /// Whether or not the DynamicFonts library can make network requests to
  /// retrieve font files.
  final bool allowRuntimeFetching;

  /// [repository] is an instance of [FontsRepository].
  final FontsRepository repository = FontsRepository();

  /// Set of fonts that are loading or loaded.
  ///
  /// Used to determine whether to load a font or not.
  final Set<String> _loadedFonts = {};

  /// Set of [Future]s corresponding to fonts that are loading.
  ///
  /// When a font is loading, a future is added to this set. When it is loaded in
  /// the [FontLoader], that future is removed from this set.
  final Set<Future<void>> pendingFontFutures = {};

  void clearCache() => _loadedFonts.clear();

  /// Loads a font into the [FontLoader] with [fontFamilyName] for the
  /// matching [expectedFileHash].
  ///
  /// If a font with the [fontName] has already been loaded into memory, then
  /// this method does nothing as there is no need to load it a second time.
  ///
  /// Otherwise, this method will first check to see if the font is available
  /// as an asset, then on the device file system. If it isn't, it is fetched via
  /// the [fontUrl] and stored on device. In all cases, the returned future
  /// completes once the font is loaded into the [FontLoader].

  /// Loads a font with [FontLoader], given its name and byte-representation.

  Future<void> addFontLoaderFromByteData(
    String familyWithVariantString,
    Future<ByteData?>? byteData, [
    FontLoader? fontLoader,
  ]) async {
    if (byteData == null) return;
    final fontData = await byteData;
    if (fontData == null) return;

    final loadNow = fontLoader == null;
    fontLoader ??= FontLoader(familyWithVariantString);
    fontLoader.addFont(Future.value(fontData));
    if (loadNow) await fontLoader.load();
  }

  Future<void> loadFontIfNecessary(DOFontVariantAndUrl fontVariantAndUrl, [FontLoader? fontLoader]) async {
    final familyWithVariantString = fontVariantAndUrl.familyWithVariant.toString();
    // final fontName = fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix();
    // If this font has already already loaded or is loading, then there is no
    // need to attempt to load it again, unless the attempted load results in an
    // error.
    if (_loadedFonts.contains(familyWithVariantString)) {
      return;
    } else {
      _loadedFonts.add(familyWithVariantString);
    }

    try {
      final loadingFont = repository.loadFont(fontVariantAndUrl, allowRuntimeFetching);
      return addFontLoaderFromByteData(familyWithVariantString, loadingFont, fontLoader);
    } catch (e) {
      // TODO:
    }
  }

  void eagerlyLoadFamily({
    required String fontFamily,
    required Map<DOFontVariantDescriptor, String> fonts,
  }) {
    final loader = FontLoader(fontFamily);
    final futures = <Future>[];
    for (var variant in fonts.keys) {
      final familyWithVariant = DOFontFamilyAndVariant(
        familyName: fontFamily,
        fontVariantDescriptor: variant,
      );
      final descriptor = DOFontVariantAndUrl(
        familyWithVariant: familyWithVariant,
        url: fonts[variant]!,
      );
      final loadingFuture = loadFontIfNecessary(descriptor, loader);
      pendingFontFutures.add(loadingFuture);
      futures.add(loadingFuture);
      loadingFuture.then((_) => pendingFontFutures.remove(loadingFuture));
    }
    Future.wait<void>(futures).then((_) => loader.load());
  }

  Future<List<void>> pendingFonts([List<dynamic>? _]) => Future.wait(pendingFontFutures);

  final Map<String, TextStyleBuilder> _styleMap = {};

  /// Get a map of all available fonts.
  ///
  /// Returns a map where the key is the name of the font family and the value
  /// is the corresponding [DynamicFonts] method.
  Map<String, TextStyleBuilder> asMap() => Map.unmodifiable(_styleMap);

  final Map<String, TextThemeBuilder> _themeMap = {};

  /// Get a map of all available fonts and their associated text themes.
  ///
  /// Returns a map where the key is the name of the font family and the value
  /// is the corresponding [DynamicFonts] `TextTheme` method.
  Map<String, TextThemeBuilder> _asMapOfTextThemes() => Map.unmodifiable(_themeMap);

  void register(String familyName, Map<DOFontVariantDescriptor, String> variantMap, {bool eager = false}) {
    final style = styleBuilder(familyName, variantMap, eager);
    _styleMap[familyName] = style;
    _themeMap[familyName] = themeBuilder(style);
  }

  /// Retrieve a font by family name.
  ///
  /// Applies the given font family to the given [textStyle] and returns the
  /// resulting [TextStyle].
  ///
  /// Note: [fontFamily] is case-sensitive.
  ///
  /// Parameter [fontFamily] must not be `null`. Throws if no font by name
  /// [fontFamily] exists.
  TextStyle getFont(
    String fontFamily, {
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    final fonts = asMap();
    if (!fonts.containsKey(fontFamily)) {
      throw Exception("No font family by name '$fontFamily' was found.");
    }
    return fonts[fontFamily]!(
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  /// Retrieve a text theme by its font family name.
  ///
  /// Applies the given font family to the given [textTheme] and returns the
  /// resulting [textTheme].
  ///
  /// Note: [fontFamily] is case-sensitive.
  ///
  /// Parameter [fontFamily] must not be `null`. Throws if no font by name
  /// [fontFamily] exists.
  TextTheme getTextTheme(String fontFamily, [TextTheme? textTheme]) {
    final fonts = _asMapOfTextThemes();
    if (!fonts.containsKey(fontFamily)) {
      throw Exception("No font family by name '$fontFamily' was found.");
    }
    return fonts[fontFamily]!(textTheme);
  }

  TextStyleBuilder styleBuilder(
    String fontFamily,
    Map<DOFontVariantDescriptor, String> variantMap,
    bool eager,
  ) =>
      ({
        textStyle,
        color,
        backgroundColor,
        fontSize,
        fontWeight,
        fontStyle,
        letterSpacing,
        wordSpacing,
        textBaseline,
        height,
        locale,
        foreground,
        background,
        shadows,
        fontFeatures,
        decoration,
        decorationColor,
        decorationStyle,
        decorationThickness,
      }) {
        assert(variantMap.isNotEmpty, 'variantMap must not be empty.');
        return doTextStyleBuilder(
          textStyle: textStyle,
          fontFamily: fontFamily,
          color: color,
          backgroundColor: backgroundColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
          textBaseline: textBaseline,
          height: height,
          locale: locale,
          foreground: foreground,
          background: background,
          shadows: shadows,
          fontFeatures: fontFeatures,
          decoration: decoration,
          decorationColor: decorationColor,
          decorationStyle: decorationStyle,
          decorationThickness: decorationThickness,
          fonts: variantMap,
          eager: eager,
        );
      };

  TextThemeBuilder themeBuilder(TextStyleBuilder styleBuilder) => ([textTheme]) {
        textTheme ??= ThemeData.light().textTheme;
        return TextTheme(
          displayLarge: styleBuilder(textStyle: textTheme.displayLarge),
          displayMedium: styleBuilder(textStyle: textTheme.displayMedium),
          displaySmall: styleBuilder(textStyle: textTheme.displaySmall),
          headlineMedium: styleBuilder(textStyle: textTheme.headlineMedium),
          headlineSmall: styleBuilder(textStyle: textTheme.headlineSmall),
          titleLarge: styleBuilder(textStyle: textTheme.titleLarge),
          titleMedium: styleBuilder(textStyle: textTheme.titleMedium),
          titleSmall: styleBuilder(textStyle: textTheme.titleSmall),
          bodyLarge: styleBuilder(textStyle: textTheme.bodyLarge),
          bodyMedium: styleBuilder(textStyle: textTheme.bodyMedium),
          bodySmall: styleBuilder(textStyle: textTheme.bodySmall),
          labelLarge: styleBuilder(textStyle: textTheme.labelLarge),
          labelSmall: styleBuilder(textStyle: textTheme.labelSmall),
        );
      };

  /// Creates a [TextStyle] that either uses the [fontFamily] for the requested
  /// GoogleFont, or falls back to the pre-bundled [fontFamily].
  ///
  /// This function has a side effect of loading the font into the [FontLoader],
  /// either by network or from the device file system.
  TextStyle doTextStyleBuilder({
    required String fontFamily,
    TextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    required Map<DOFontVariantDescriptor, String> fonts,
    bool? eager,
  }) {
    textStyle ??= const TextStyle();
    textStyle = textStyle.copyWith(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );

    if (eager == true) {
      eagerlyLoadFamily(fontFamily: fontFamily, fonts: fonts);
      return textStyle.copyWith(fontFamily: fontFamily);
    }

    final variant = DOFontVariantDescriptor(
      fontWeight: textStyle.fontWeight ?? FontWeight.w400,
      fontStyle: textStyle.fontStyle ?? FontStyle.normal,
    );
    final matchedVariant = variant.findClosestMatch(fonts.keys);
    final familyWithVariant = DOFontFamilyAndVariant(
      familyName: fontFamily,
      fontVariantDescriptor: matchedVariant,
    );

    final descriptor = DOFontVariantAndUrl(
      familyWithVariant: familyWithVariant,
      url: fonts[matchedVariant]!,
    );

    final loadingFuture = loadFontIfNecessary(descriptor);
    pendingFontFutures.add(loadingFuture);
    loadingFuture.then((_) => pendingFontFutures.remove(loadingFuture));

    return textStyle.copyWith(
      fontFamily: familyWithVariant.toString(),
      fontFamilyFallback: [fontFamily],
    );
  }

// // This logic is taken from the following section of the minikin library, which
// // is ultimately how flutter handles matching fonts.
// // * https://github.com/flutter/engine/blob/master/third_party/txt/src/minikin/FontFamily.cpp#L128
//   int _computeMatch(DOFontVariantDescriptor a, DOFontVariantDescriptor b) {
//     if (a == b) {
//       return 0;
//     }
//     int score = (a.fontWeight.index - b.fontWeight.index).abs();
//     if (a.fontStyle != b.fontStyle) {
//       score += 2;
//     }
//     return score;
//   }

  // /// Returns [DOFontVariantDescriptor] from [variantsToCompare] that most closely
  // /// matches [sourceVariant] according to the [_computeMatch] scoring function.
  // ///
  // /// This logic is derived from the following section of the minikin library,
  // /// which is ultimately how flutter handles matching fonts.
  // /// https://github.com/flutter/engine/blob/master/third_party/txt/src/minikin/FontFamily.cpp#L149
  // DOFontVariantDescriptor _closestMatch(
  //   DOFontVariantDescriptor sourceVariant,
  //   Iterable<DOFontVariantDescriptor> variantsToCompare,
  // ) {
  //   int? bestScore;
  //   late DOFontVariantDescriptor bestMatch;
  //   for (final variantToCompare in variantsToCompare) {
  //     final score = _computeMatch(sourceVariant, variantToCompare);
  //     if (bestScore == null || score < bestScore) {
  //       bestScore = score;
  //       bestMatch = variantToCompare;
  //     }
  //   }
  //   return bestMatch;
  // }
}
