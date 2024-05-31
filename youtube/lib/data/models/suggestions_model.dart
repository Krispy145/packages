// import 'package:fellowship/data/models/video/tag_suggestion_model.dart';
//
// import 'package:youtube/data/models/tag_suggestion_model.dart';

// part 'suggestions_model.freezed.dart';
// part 'suggestions_model.g.dart';

// @freezed
// class SuggestionsModel with _$SuggestionsModel {
//   factory SuggestionsModel({
//     List<String>? processingErrors,
//     List<String>? processingWarnings,
//     List<String>? processingHints,
//     List<TagSuggestionModel>? tagSuggestions,
//     List<String>? editorSuggestions,
//   }) = _SuggestionsModel;

//   factory SuggestionsModel.fromJson(Map<String, dynamic> json) =>
//       _$SuggestionsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/tag_suggestion_model.dart";

part "suggestions_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class SuggestionsModel with SuggestionsModelMappable {
  final List<String>? processingErrors;
  final List<String>? processingWarnings;
  final List<String>? processingHints;
  final List<TagSuggestionModel>? tagSuggestions;
  final List<String>? editorSuggestions;

  const SuggestionsModel({
    this.processingErrors,
    this.processingWarnings,
    this.processingHints,
    this.tagSuggestions,
    this.editorSuggestions,
  });

  static const fromMap = SuggestionsModelMapper.fromMap;
  static const fromJson = SuggestionsModelMapper.fromJson;

  // static const empty = SuggestionsModel(id: "");

  // static const suggestionsOne = SuggestionsModel(
  // id: "suggestionsOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const suggestionsTwo = SuggestionsModel(
  // id: "suggestionsTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const suggestionsThree = SuggestionsModel(
  // id: "suggestionsThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SuggestionsModel> fakeData = [
  // suggestionsOne,
  // suggestionsTwo,
  // suggestionsThree,
  // ];
}
