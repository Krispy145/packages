import "package:dart_mappable/dart_mappable.dart";

part "audio_stream_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class AudioStreamModel with AudioStreamModelMappable {
  final int? channelCount;
  final String? codec;
  final int? bitrateBps;
  final String? vendor;

  const AudioStreamModel({
    this.channelCount,
    this.codec,
    this.bitrateBps,
    this.vendor,
  });

  static const fromMap = AudioStreamModelMapper.fromMap;
  static const fromJson = AudioStreamModelMapper.fromJson;

  // static const empty = AudioStreamModel(id: "");

  // static const audioStreamOne = AudioStreamModel(
  //   id: "audioStreamOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const audioStreamTwo = AudioStreamModel(
  //   id: "audioStreamTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const audioStreamThree = AudioStreamModel(
  //   id: "audioStreamThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<AudioStreamModel> fakeData = [
  //   audioStreamOne,
  //   audioStreamTwo,
  //   audioStreamThree,
  // ];
}
