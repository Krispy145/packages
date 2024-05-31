// part 'video_status_model.freezed.dart';
// part 'video_status_model.g.dart';

// @freezed
// class VideoStatusModel with _$VideoStatusModel {
//   factory VideoStatusModel({

//   }) = _VideoStatusModel;

//   factory VideoStatusModel.fromJson(Map<String, dynamic> json) => _$VideoStatusModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "video_status_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class VideoStatusModel with VideoStatusModelMappable {
  final String? uploadStatus;
  final String? failureReason;
  final String? rejectionReason;
  final String? privacyStatus;
  final DateTime? publishAt;
  final String? license;
  final bool? embeddable;
  final bool? publicStatsViewable;
  final bool? madeForKids;
  final bool? selfDeclaredMadeForKids;

  const VideoStatusModel({
    this.uploadStatus,
    this.failureReason,
    this.rejectionReason,
    this.privacyStatus,
    this.publishAt,
    this.license,
    this.embeddable,
    this.publicStatsViewable,
    this.madeForKids,
    this.selfDeclaredMadeForKids,
  });

  static const fromMap = VideoStatusModelMapper.fromMap;
  static const fromJson = VideoStatusModelMapper.fromJson;

  // static const empty = VideoStatusModel(id: "");

  // static const videoStatusOne = VideoStatusModel(
  //   id: "videoStatusOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const videoStatusTwo = VideoStatusModel(
  //   id: "videoStatusTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const videoStatusThree = VideoStatusModel(
  //   id: "videoStatusThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<VideoStatusModel> fakeData = [
  //   videoStatusOne,
  //   videoStatusTwo,
  //   videoStatusThree,
  // ];
}
