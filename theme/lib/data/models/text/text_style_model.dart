// ignore_for_file: non_constant_identifier_names

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_style_model.freezed.dart';
part 'text_style_model.g.dart';

/// [TextStyleModel] is a data class that holds the values for a [TextStyle].
@freezed
class TextStyleModel with _$TextStyleModel {
  /// [TextStyleModel] constructor
  const factory TextStyleModel({
    final String? fontFamilyName_string,
    final FontStyle? fontFamilyStyle_enum_fontStyle,
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
    return TextStyle(
      fontFamily: fontFamilyName_string,
      fontWeight: FontWeight.values.firstWhereOrNull((element) => element.value == fontWeight_double?.toInt()),
      fontStyle: fontFamilyStyle_enum_fontStyle,
      fontSize: fontSize_double,
      height: lineHeight_double,
      letterSpacing: letterSpacing_double,
    );
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
