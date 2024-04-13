// ignore_for_file: non_constant_identifier_names

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/app/app.dart';

part 'text_style_model.freezed.dart';
part 'text_style_model.g.dart';

/// [TextStyleModel] is a data class that holds the values for a [TextStyle].
@freezed
class TextStyleModel with _$TextStyleModel {
  /// [TextStyleModel] constructor
  const factory TextStyleModel({
    final String? fontFamilyName_font,
    @Default(FontStyle.normal) final FontStyle? fontFamilyStyle_enum_fontStyle,
    final double? fontWeight_double,
    final double? fontSize_double,
    final double? lineHeight_double,
    final double? letterSpacing_double,
  }) = _TextStyleModel;
  const TextStyleModel._();

  /// [TextStyleModel.fromJson] is a factory method that allows you to create a [TextStyleModel] from a JSON file.
  factory TextStyleModel.fromJson(Map<String, dynamic> json) => _$TextStyleModelFromJson(json);

  /// [asTextStyle] converts the [TextStyleModel] to a [TextStyle].
  TextStyle get asTextStyle {
    if (fontFamilyName_font != null) {
      return AppTheme.fontsStore.getFont(
        fontFamilyName_font!,
        fontWeight: FontWeight.values.firstWhereOrNull((element) => element.value == fontWeight_double?.toInt()),
        fontStyle: fontFamilyStyle_enum_fontStyle,
        fontSize: fontSize_double,
        height: lineHeight_double,
        letterSpacing: letterSpacing_double,
      );
    }
    return TextStyle(
      fontFamily: fontFamilyName_font,
      fontWeight: FontWeight.values.firstWhereOrNull((element) => element.value == fontWeight_double?.toInt()),
      fontStyle: fontFamilyStyle_enum_fontStyle,
      fontSize: fontSize_double,
      height: lineHeight_double,
      letterSpacing: letterSpacing_double,
    );
  }

  /// [defaultStyles] returns a [TextStyleModel] with default values.
  // static TextStyleModel defaultStyles() {
  //   return const TextStyleModel(
  //     fontFamilyName_string: 'Roboto',
  //     fontFamilyStyle_enum_fontStyle: FontStyle.italic,
  //     fontWeight_double: 400,
  //     fontSize_double: 14,
  //     lineHeight_double: 1.5,
  //     letterSpacing_double: 0.15,
  //   );
  // }
}
