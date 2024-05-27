// part 'statistics_model.freezed.dart';
// part 'statistics_model.g.dart';

// @freezed
// class StatisticsModel with _$StatisticsModel {
//   factory StatisticsModel({

//   }) = _StatisticsModel;

//   factory StatisticsModel.fromJson(Map<String, dynamic> json) => _$StatisticsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "statistics_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class StatisticsModel with StatisticsModelMappable {
  final String? viewCount;
  final String? likeCount;
  final String? dislikeCount;
  final String? favoriteCount;
  final String? commentCount;

  const StatisticsModel({
    this.viewCount,
    this.likeCount,
    this.dislikeCount,
    this.favoriteCount,
    this.commentCount,
  });

  static const fromMap = StatisticsModelMapper.fromMap;
  static const fromJson = StatisticsModelMapper.fromJson;

  // static const empty = StatisticsModel(id: "");

  // static const statisticsOne = StatisticsModel(
  //   id: "statisticsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const statisticsTwo = StatisticsModel(
  //   id: "statisticsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const statisticsThree = StatisticsModel(
  //   id: "statisticsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<StatisticsModel> fakeData = [
  //   statisticsOne,
  //   statisticsTwo,
  //   statisticsThree,
  // ];
}
