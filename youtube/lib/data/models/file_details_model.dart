import "package:dart_mappable/dart_mappable.dart";
import 'package:youtube/data/models/audio_stream_model.dart';
import 'package:youtube/data/models/video_stream_model.dart';

part "file_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class FileDetailsModel with FileDetailsModelMappable {
  final String? fileName;
  final int? fileSize;
  final String? fileType;
  final String? container;
  final List<VideoStreamModel>? videoStreams;
  final List<AudioStreamModel>? audioStreams;
  final int? durationMs;
  final int? bitrateBps;
  final String? creationTime;

  FileDetailsModel({
    this.fileName,
    this.fileSize,
    this.fileType,
    this.container,
    this.videoStreams,
    this.audioStreams,
    this.durationMs,
    this.bitrateBps,
    this.creationTime,
  });

  static const fromMap = FileDetailsModelMapper.fromMap;
  static const fromJson = FileDetailsModelMapper.fromJson;

  // static const empty = FileDetailsModel(id: "");

  // static const fileDetailsOne = FileDetailsModel(
  //   id: "fileDetailsOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const fileDetailsTwo = FileDetailsModel(
  //   id: "fileDetailsTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const fileDetailsThree = FileDetailsModel(
  //   id: "fileDetailsThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<FileDetailsModel> fakeData = [
  //   fileDetailsOne,
  //   fileDetailsTwo,
  //   fileDetailsThree,
  // ];
}
