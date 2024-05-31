// part 'topic_details_model.freezed.dart';
// part 'topic_details_model.g.dart';

// @freezed
// class TopicDetailsModel with _$TopicDetailsModel {
//   factory TopicDetailsModel({
//     List<String>? topicIds,
//     List<String>? relevantTopicIds,
//     List<String>? topicCategories,
//   }) = _TopicDetailsModel;

//   factory TopicDetailsModel.fromJson(Map<String, dynamic> json) => _$TopicDetailsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "topic_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class TopicDetailsModel with TopicDetailsModelMappable {
  final List<String>? topicIds;
  final List<String>? relevantTopicIds;
  final List<String>? topicCategories;

  const TopicDetailsModel({
    this.topicIds,
    this.relevantTopicIds,
    this.topicCategories,
  });

  static const fromMap = TopicDetailsModelMapper.fromMap;
  static const fromJson = TopicDetailsModelMapper.fromJson;

  // static const empty = TopicDetailsModel(id: "");

  // static const topicDetailsOne = TopicDetailsModel(
  //   id: "topicDetailsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const topicDetailsTwo = TopicDetailsModel(
  //   id: "topicDetailsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const topicDetailsThree = TopicDetailsModel(
  //   id: "topicDetailsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<TopicDetailsModel> fakeData = [
  //   topicDetailsOne,
  //   topicDetailsTwo,
  //   topicDetailsThree,
  // ];
}
