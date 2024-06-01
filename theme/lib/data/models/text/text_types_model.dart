import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/text/text_style_model.dart";
import "package:theme/data/models/text/text_style_sizes_model.dart";

part "text_types_model.mapper.dart";

enum TextType {
  display,
  headline,
  title,
  body,
  label,
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TextTypesModel with TextTypesModelMappable {
  final TextStyleSizesModel? display;
  final TextStyleSizesModel? headline;
  final TextStyleSizesModel? title;
  final TextStyleSizesModel? body;
  final TextStyleSizesModel? label;

  const TextTypesModel({
    this.display,
    this.headline,
    this.title,
    this.body,
    this.label,
  });

  static const fromMap = TextTypesModelMapper.fromMap;
  static const fromJson = TextTypesModelMapper.fromJson;

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

  // static const empty = TextTypesModel(id: "");

  // static const texttypesOne = TextTypesModel(
  // id: "texttypesOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const texttypesTwo = TextTypesModel(
  // id: "texttypesTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const texttypesThree = TextTypesModel(
  // id: "texttypesThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<TextTypesModel> fakeData = [
  // texttypesOne,
  // texttypesTwo,
  // texttypesThree,
  // ];
}

// part "text_types.freezed.dart";
// part "text_types.g.dart";

// /// [TextTypes] is a wrapper for [TextStyleModel] that allows you to use [TextStyleModel] to
// /// calculate the [TextStyle] values.

// @freezed
// abstract class TextTypes with _$TextTypes {
//   /// [TextTypes] constructor
//   const factory TextTypes({
//     TextStyleSizesModel? display,
//     TextStyleSizesModel? headline,
//     TextStyleSizesModel? title,
//     TextStyleSizesModel? body,
//     TextStyleSizesModel? label,
//   }) = _textStyleStrings;
//   const TextTypes._();

//   /// [theme] converts the [TextTypes] to a [TextTheme].
//   TextTheme get theme {
//     return TextTheme(
//       displayLarge: display?.large?.asTextStyle,
//       displayMedium: display?.medium?.asTextStyle,
//       displaySmall: display?.small?.asTextStyle,
//       headlineLarge: headline?.large?.asTextStyle,
//       headlineMedium: headline?.medium?.asTextStyle,
//       headlineSmall: headline?.small?.asTextStyle,
//       titleLarge: title?.large?.asTextStyle,
//       titleMedium: title?.medium?.asTextStyle,
//       titleSmall: title?.small?.asTextStyle,
//       bodyLarge: body?.large?.asTextStyle,
//       bodyMedium: body?.medium?.asTextStyle,
//       bodySmall: body?.small?.asTextStyle,
//       labelLarge: label?.large?.asTextStyle,
//       labelMedium: label?.medium?.asTextStyle,
//       labelSmall: label?.small?.asTextStyle,
//     );
//   }

//   // ignore: comment_references
//   /// [defaultTextTypes] returns a [TextTypes] with default values.
//   // static TextTypes defaultTextTypes() {
//   //   return TextTypes(
//   //     display: TextStyleSizesModel.defaultStyleSizes(),
//   //     headline: TextStyleSizesModel.defaultStyleSizes(),
//   //     title: TextStyleSizesModel.defaultStyleSizes(),
//   //     body: TextStyleSizesModel.defaultStyleSizes(),
//   //     label: TextStyleSizesModel.defaultStyleSizes(),
//   //   );
//   // }

//   /// [TextTypes.fromJson] is a factory method that allows you to create a [TextTypes] from a JSON file.
//   factory TextTypes.fromJson(Map<String, dynamic> json) => _$TextTypesFromJson(json);
// }
