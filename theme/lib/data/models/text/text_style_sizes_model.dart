import "package:dart_mappable/dart_mappable.dart";
import "package:theme/data/models/text/text_style_model.dart";

part "text_style_sizes_model.mapper.dart";

enum TextSizes {
  large,
  medium,
  small,
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TextStyleSizesModel with TextStyleSizesModelMappable {
  final TextStyleModel? large;
  final TextStyleModel? medium;
  final TextStyleModel? small;

  const TextStyleSizesModel({
    this.large,
    this.medium,
    this.small,
  });

  static const fromMap = TextStyleSizesModelMapper.fromMap;
  static const fromJson = TextStyleSizesModelMapper.fromJson;

  // static const empty = TextStyleSizesModel(id: "");

  // static const textStyleSizesOne = TextStyleSizesModel(
  // id: "textStyleSizesOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const textStyleSizesTwo = TextStyleSizesModel(
  // id: "textStyleSizesTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const textStyleSizesThree = TextStyleSizesModel(
  // id: "textStyleSizesThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<TextStyleSizesModel> fakeData = [
  // textStyleSizesOne,
  // textStyleSizesTwo,
  // textStyleSizesThree,
  // ];
}

// part "text_style_sizes.freezed.dart";
// part "text_style_sizes.g.dart";

// /// [TextStyleSizes] is a wrapper for [TextStyleModel] that allows you to use [TextStyleModel] to
// /// calculate the [TextStyle] values.
// @freezed
// abstract class TextStyleSizes with _$TextStyleSizes {
//   /// [TextStyleSizes] constructor
//   const factory TextStyleSizes({
//     TextStyleModel? large,
//     TextStyleModel? medium,
//     TextStyleModel? small,
//   }) = _TextStyleSizes;
//   const TextStyleSizes._();

//   // ignore: comment_references
//   /// [defaultStyleSizes] returns a [TextStyleSizes] with default values.
//   // static TextStyleSizes defaultStyleSizes() {
//   //   return TextStyleSizes(
//   //     large: TextStyleModel.defaultStyles(),
//   //     medium: TextStyleModel.defaultStyles(),
//   //     small: TextStyleModel.defaultStyles(),
//   //   );
//   // }

//   /// [TextStyleSizes.fromJson] is a factory method that allows you to create a [TextStyleSizes] from a JSON file.
//   factory TextStyleSizes.fromJson(Map<String, dynamic> json) =>
//       _$TextStyleSizesFromJson(json);
// }
