// ignore_for_file: non_constant_identifier_names

import "package:collection/collection.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/app/app.dart";
import "package:theme/extensions/theme_color_string.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

part "text_style_model.mapper.dart";

class LYFontStyleMapper extends SimpleMapper<FontStyle> {
  const LYFontStyleMapper();
  @override
  FontStyle decode(Object value) {
    switch (value) {
      case "normal":
        return FontStyle.normal;
      case "italic":
        return FontStyle.italic;
      default:
        return FontStyle.normal;
    }
  }

  @override
  Object? encode(FontStyle self) {
    switch (self) {
      case FontStyle.normal:
        return "normal";
      case FontStyle.italic:
        return "italic";
    }
  }
}

@MappableClass(includeCustomMappers: [LYFontStyleMapper()])
class TextStyleModel with TextStyleModelMappable {
  final String? fontFamilyName_font;
  final ThemeColorString? color_themeColorString;
  final FontStyle? fontFamilyStyle_enum_fontStyle;
  final double? fontWeight_double;
  final double? fontSize_double;
  final double? lineHeight_double;
  final double? letterSpacing_double;

  const TextStyleModel({
    this.fontFamilyName_font,
    this.color_themeColorString,
    this.fontFamilyStyle_enum_fontStyle = FontStyle.normal,
    this.fontWeight_double,
    this.fontSize_double,
    this.lineHeight_double,
    this.letterSpacing_double,
  });

  static const fromMap = TextStyleModelMapper.fromMap;
  static const fromJson = TextStyleModelMapper.fromJson;

  /// [asTextStyle] converts the [TextStyleModel] to a [TextStyle].
  TextStyle get asTextStyle {
    if (fontFamilyName_font != null) {
      try {
        return AppTheme.fontsStore.getFont(
          fontFamilyName_font!,
          fontWeight: FontWeight.values.firstWhereOrNull(
            (element) => element.value == fontWeight_double?.toInt(),
          ),
          fontStyle: fontFamilyStyle_enum_fontStyle,
          fontSize: fontSize_double,
          height: lineHeight_double,
          letterSpacing: letterSpacing_double,
          color: color_themeColorString?.toColor(),
        );
      } catch (e) {
        AppLogger.print("Get font failed: $e", [ThemeLoggers.theme], type: LoggerType.error);
      }
    }
    return TextStyle(
      fontFamily: fontFamilyName_font,
      fontWeight: FontWeight.values.firstWhereOrNull(
        (element) => element.value == fontWeight_double?.toInt(),
      ),
      fontStyle: fontFamilyStyle_enum_fontStyle,
      fontSize: fontSize_double,
      height: lineHeight_double,
      letterSpacing: letterSpacing_double,
      color: color_themeColorString?.toColor(),
    );
  }

  // static const empty = TextStyleModel(id: "");

  // static const textStyleOne = TextStyleModel(
  // id: "textStyleOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const textStyleTwo = TextStyleModel(
  // id: "textStyleTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const textStyleThree = TextStyleModel(
  // id: "textStyleThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<TextStyleModel> fakeData = [
  // textStyleOne,
  // textStyleTwo,
  // textStyleThree,
  // ];
}

// part "text_style_model.freezed.dart";
// part "text_style_model.g.dart";

// /// [TextStyleModel] is a data class that holds the values for a [TextStyle].
// @freezed
// class TextStyleModel with _$TextStyleModel {
//   /// [TextStyleModel] constructor
//   const factory TextStyleModel({
//     final String? fontFamilyName_font,
//     final ThemeColorString? color_themeColorString,
//     @MappableValue(FontStyle.normal) final FontStyle? fontFamilyStyle_enum_fontStyle,
//     final double? fontWeight_double,
//     final double? fontSize_double,
//     final double? lineHeight_double,
//     final double? letterSpacing_double,
//   }) = _TextStyleModel;
//   const TextStyleModel._();

//   /// [TextStyleModel.fromJson] is a factory method that allows you to create a [TextStyleModel] from a JSON file.
//   factory TextStyleModel.fromJson(Map<String, dynamic> json) => _$TextStyleModelFromJson(json);

//   /// [asTextStyle] converts the [TextStyleModel] to a [TextStyle].
//   TextStyle get asTextStyle {
//     if (fontFamilyName_font != null) {
//       try {
//         return AppTheme.fontsStore.getFont(
//           fontFamilyName_font!,
//           fontWeight: FontWeight.values.firstWhereOrNull(
//             (element) => element.value == fontWeight_double?.toInt(),
//           ),
//           fontStyle: fontFamilyStyle_enum_fontStyle,
//           fontSize: fontSize_double,
//           height: lineHeight_double,
//           letterSpacing: letterSpacing_double,
//           color: color_themeColorString?.toColor(),
//         );
//       } catch (e) {
//         AppLogger.print("Get font failed: $e", [ThemeLoggers.theme], type: LoggerType.error);
//       }
//     }
//     return TextStyle(
//       fontFamily: fontFamilyName_font,
//       fontWeight: FontWeight.values.firstWhereOrNull(
//         (element) => element.value == fontWeight_double?.toInt(),
//       ),
//       fontStyle: fontFamilyStyle_enum_fontStyle,
//       fontSize: fontSize_double,
//       height: lineHeight_double,
//       letterSpacing: letterSpacing_double,
//       color: color_themeColorString?.toColor(),
//     );
//   }

//   /// [defaultStyles] returns a [TextStyleModel] with default values.
//   // static TextStyleModel defaultStyles() {
//   //   return const TextStyleModel(
//   //     fontFamilyName_string: 'Roboto',
//   //     fontFamilyStyle_enum_fontStyle: FontStyle.italic,
//   //     fontWeight_double: 400,
//   //     fontSize_double: 14,
//   //     lineHeight_double: 1.5,
//   //     letterSpacing_double: 0.15,
//   //   );
//   // }
// }
