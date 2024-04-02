import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_style_model.freezed.dart';
part 'text_style_model.g.dart';

/// [TextStyleModel] is a data class that holds the values for a [TextStyle].
@freezed
class TextStyleModel with _$TextStyleModel {
  /// [TextStyleModel] constructor
  const factory TextStyleModel({
    final String? fontFamilyName,
    final String? fontFamilyStyle,
    final double? fontWeight,
    final double? fontSize,
    final double? lineHeight,
    final double? letterSpacing,
  }) = _TextStyleModel;
  const TextStyleModel._();

  /// [TextStyleModel.fromJson] is a factory method that allows you to create a [TextStyleModel] from a JSON file.
  factory TextStyleModel.fromJson(Map<String, dynamic> json) => _$TextStyleModelFromJson(json);

  /// [asTextStyle] converts the [TextStyleModel] to a [TextStyle].
  TextStyle get asTextStyle {
    return TextStyle(
        fontFamily: fontFamilyName,
        fontWeight: FontWeight.values.firstWhere((element) => element.value == fontWeight?.toInt()),
        fontStyle: fontFamilyStyle == 'italic' ? FontStyle.italic : FontStyle.normal,
        fontSize: fontSize,
        height: lineHeight,
        letterSpacing: letterSpacing);
  }

  // /// [defaultStyles] returns a [TextStyleModel] with default values.
  // static TextStyleModel defaultStyles() {
  //   return const TextStyleModel(
  //     fontFamilyName: 'Roboto',
  //     fontFamilyStyle: 'italic',
  //     fontWeight: 400.0,
  //     fontSize: 14,
  //     lineHeight: 1.5,
  //     letterSpacing: 0.15,
  //   );
  // }
}
