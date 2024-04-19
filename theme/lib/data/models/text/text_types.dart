import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';

part 'text_types.freezed.dart';
part 'text_types.g.dart';

/// [TextTypes] is a wrapper for [TextStyleModel] that allows you to use [TextStyleModel] to
/// calculate the [TextStyle] values.

enum TextType {
  display,
  headline,
  title,
  body,
  label,
}

@freezed
abstract class TextTypes with _$TextTypes {
  /// [TextTypes] constructor
  const factory TextTypes({
    TextStyleSizes? display,
    TextStyleSizes? headline,
    TextStyleSizes? title,
    TextStyleSizes? body,
    TextStyleSizes? label,
  }) = _textStyleStrings;
  const TextTypes._();

  /// [theme] converts the [TextTypes] to a [TextTheme].
  TextTheme get theme {
    return TextTheme(
      displayLarge: display?.large?.asTextStyle,
      displayMedium: display?.medium?.asTextStyle,
      displaySmall: display?.small?.asTextStyle,
      headlineLarge: headline?.large?.asTextStyle,
      headlineMedium: headline?.medium?.asTextStyle,
      headlineSmall: headline?.small?.asTextStyle,
      titleLarge: title?.large?.asTextStyle,
      titleMedium: title?.medium?.asTextStyle,
      titleSmall: title?.small?.asTextStyle,
      bodyLarge: body?.large?.asTextStyle,
      bodyMedium: body?.medium?.asTextStyle,
      bodySmall: body?.small?.asTextStyle,
      labelLarge: label?.large?.asTextStyle,
      labelMedium: label?.medium?.asTextStyle,
      labelSmall: label?.small?.asTextStyle,
    );
  }

  /// [defaultTextTypes] returns a [TextTypes] with default values.
  // static TextTypes defaultTextTypes() {
  //   return TextTypes(
  //     display: TextStyleSizes.defaultStyleSizes(),
  //     headline: TextStyleSizes.defaultStyleSizes(),
  //     title: TextStyleSizes.defaultStyleSizes(),
  //     body: TextStyleSizes.defaultStyleSizes(),
  //     label: TextStyleSizes.defaultStyleSizes(),
  //   );
  // }

  /// [TextStyles.fromJson] is a factory method that allows you to create a [TextTypes] from a JSON file.
  factory TextTypes.fromJson(Map<String, dynamic> json) => _$TextTypesFromJson(json);
}
