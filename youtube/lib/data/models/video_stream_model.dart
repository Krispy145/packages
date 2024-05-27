// part 'video_stream_model.freezed.dart';
// part 'video_stream_model.g.dart';

// @freezed
// class VideoStreamModel with _$VideoStreamModel {
//   factory VideoStreamModel({
//     int? widthPixels,
//     int? heightPixels,
//     double? frameRateFps,
//     double? aspectRatio,
//     String? codec,
//     int? bitrateBps,
//     String? rotation,
//     String? vendor,
//   }) = _VideoStreamModel;

//   factory VideoStreamModel.fromJson(Map<String, dynamic> json) => _$VideoStreamModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "video_stream_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class VideoStreamModel with VideoStreamModelMappable {
  final int? widthPixels;
  final int? heightPixels;
  final double? frameRateFps;
  final double? aspectRatio;
  final String? codec;
  final int? bitrateBps;
  final String? rotation;
  final String? vendor;

  const VideoStreamModel({
    this.widthPixels,
    this.heightPixels,
    this.frameRateFps,
    this.aspectRatio,
    this.codec,
    this.bitrateBps,
    this.rotation,
    this.vendor,
  });

  static const fromMap = VideoStreamModelMapper.fromMap;
  static const fromJson = VideoStreamModelMapper.fromJson;

  // static const empty = VideoStreamModel(id: "");

  // static const videoStreamOne = VideoStreamModel(
  //   id: "videoStreamOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const videoStreamTwo = VideoStreamModel(
  //   id: "videoStreamTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const videoStreamThree = VideoStreamModel(
  //   id: "videoStreamThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<VideoStreamModel> fakeData = [
  //   videoStreamOne,
  //   videoStreamTwo,
  //   videoStreamThree,
  // ];
}
