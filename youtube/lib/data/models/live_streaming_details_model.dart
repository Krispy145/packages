import "package:dart_mappable/dart_mappable.dart";

part "live_streaming_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class LiveStreamingDetailsModel with LiveStreamingDetailsModelMappable {
  final DateTime? actualStartTime;
  final DateTime? actualEndTime;
  final DateTime? scheduledStartTime;
  final DateTime? scheduledEndTime;
  final int? concurrentViewers;
  final String? activeLiveChatId;

  LiveStreamingDetailsModel({
    this.actualStartTime,
    this.actualEndTime,
    this.scheduledStartTime,
    this.scheduledEndTime,
    this.concurrentViewers,
    this.activeLiveChatId,
  });

  static const fromMap = LiveStreamingDetailsModelMapper.fromMap;
  static const fromJson = LiveStreamingDetailsModelMapper.fromJson;

  // static const empty = LiveStreamingDetailsModel(id: "");

  // static const liveStreamingOne = LiveStreamingDetailsModel(
  //   id: "liveStreamingOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const liveStreamingTwo = LiveStreamingDetailsModel(
  //   id: "liveStreamingTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const liveStreamingThree = LiveStreamingDetailsModel(
  //   id: "liveStreamingThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<LiveStreamingDetailsModel> fakeData = [
  //   liveStreamingOne,
  //   liveStreamingTwo,
  //   liveStreamingThree,
  // ];
}
