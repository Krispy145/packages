//

// part 'tag_suggestion_model.freezed.dart';
// part 'tag_suggestion_model.g.dart';

// @freezed
// class TagSuggestionModel with _$TagSuggestionModel {
//   factory TagSuggestionModel({
//     String? tag,
//     List<String>? categoryRestricts,
//   }) = _TagSuggestionModel;

//   factory TagSuggestionModel.fromJson(Map<String, dynamic> json) =>
//       _$TagSuggestionModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "tag_suggestion_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TagSuggestionModel with TagSuggestionModelMappable {
  final String? tag;
  final List<String>? categoryRestricts;

  const TagSuggestionModel({
    this.tag,
    this.categoryRestricts,
  });

  static const fromMap = TagSuggestionModelMapper.fromMap;
  static const fromJson = TagSuggestionModelMapper.fromJson;

  // static const empty = TagSuggestionModel(id: "");

  // static const tagSuggestionsOne = TagSuggestionModel(
  //   id: "tagSuggestionsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const tagSuggestionsTwo = TagSuggestionModel(
  //   id: "tagSuggestionsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const tagSuggestionsThree = TagSuggestionModel(
  //   id: "tagSuggestionsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<TagSuggestionModel> fakeData = [
  //   tagSuggestionsOne,
  //   tagSuggestionsTwo,
  //   tagSuggestionsThree,
  // ];
}
