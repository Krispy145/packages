// import 'package:fellowship/data/models/localized_model.dart';
// import 'package:fellowship/data/models/video/resource_id_model.dart';
// import 'package:fellowship/data/models/video/thumbnails_model.dart';

// part 'video_snippet_model.freezed.dart';
// part 'video_snippet_model.g.dart';

// @freezed
// class VideoSnippetModel with _$VideoSnippetModel {
//   factory VideoSnippetModel({
//     DateTime? publishedAt,
//     String? channelId,
//     String? title,
//     String? description,
//     ResourceIdModel? resourceId,
//     Map<String, ThumbnailsModel>? thumbnails,
//     String? channelTitle,
//     List<String>? tags,
//     String? categoryId,
//     String? liveBroadcastContent,
//     String? defaultLanguage,
//     LocalizedModel? localized,
//     String? defaultAudioLanguage,
//   }) = _VideoSnippetModel;

//   factory VideoSnippetModel.fromJson(Map<String, dynamic> json) => _$VideoSnippetModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/localized_model.dart";
import "package:youtube/data/models/resource_id_model.dart";
import "package:youtube/data/models/thumbnails_model.dart";

part "video_snippet_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class VideoSnippetModel with VideoSnippetModelMappable {
  final DateTime? publishedAt;
  final String? channelId;
  final String? title;
  final String? description;
  final ResourceIdModel? resourceId;
  final Map<String, ThumbnailsModel>? thumbnails;
  final String? channelTitle;
  final List<String>? tags;
  final String? categoryId;
  final String? liveBroadcastContent;
  final String? defaultLanguage;
  final LocalizedModel? localized;
  final String? defaultAudioLanguage;

  const VideoSnippetModel({
    this.publishedAt,
    this.channelId,
    this.title,
    this.description,
    this.resourceId,
    this.thumbnails,
    this.channelTitle,
    this.tags,
    this.categoryId,
    this.liveBroadcastContent,
    this.defaultLanguage,
    this.localized,
    this.defaultAudioLanguage,
  });

  static const fromMap = VideoSnippetModelMapper.fromMap;
  static const fromJson = VideoSnippetModelMapper.fromJson;

  // static const empty = VideoSnippetModel(id: "");

  // static const videoSnippetOne = VideoSnippetModel(
  //   id: "videoSnippetOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const videoSnippetTwo = VideoSnippetModel(
  //   id: "videoSnippetTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const videoSnippetThree = VideoSnippetModel(
  //   id: "videoSnippetThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<VideoSnippetModel> fakeData = [
  //   videoSnippetOne,
  //   videoSnippetTwo,
  //   videoSnippetThree,
  // ];
}
