import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/text/text_style_model.dart';

part 'text_style_sizes.freezed.dart';
part 'text_style_sizes.g.dart';

enum TextSizes {
  large,
  medium,
  small,
}

/// [TextStyleSizes] is a wrapper for [TextStyleModel] that allows you to use [TextStyleModel] to
/// calculate the [TextStyle] values.
@freezed
abstract class TextStyleSizes with _$TextStyleSizes {
  /// [TextStyleSizes] constructor
  const factory TextStyleSizes({
    TextStyleModel? large,
    TextStyleModel? medium,
    TextStyleModel? small,
  }) = _TextStyleSizes;
  const TextStyleSizes._();

  /// [defaultStyleSizes] returns a [TextStyleSizes] with default values.
  static TextStyleSizes defaultStyleSizes() {
    return TextStyleSizes(
      large: TextStyleModel.defaultStyles(),
      medium: TextStyleModel.defaultStyles(),
      small: TextStyleModel.defaultStyles(),
    );
  }

  /// [TextStyleSizes.fromJson] is a factory method that allows you to create a [TextStyleSizes] from a JSON file.
  factory TextStyleSizes.fromJson(Map<String, dynamic> json) => _$TextStyleSizesFromJson(json);
}
