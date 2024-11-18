// import 'package:fellowship/data/models/localized_model.dart';
// import 'package:fellowship/data/models/playlist/thumbnails_model.dart';
//

// part 'snippet_model.freezed.dart';
// part 'snippet_model.g.dart';

// /// [PlaylistSnippetModel] is a class that represents the snippet model.
// @freezed
// class PlaylistSnippetModel with _$PlaylistSnippetModel {
//   /// [PlaylistSnippetModel] constructor.
//   factory PlaylistSnippetModel({
//     DateTime? publishedAt,
//     String? channelId,
//     String? title,
//     String? description,
//     Map<String, ThumbnailsModel>? thumbnails,
//     String? channelTitle,
//     String? defaultLanguage,
//     LocalizedModel? localized,
//   }) = _PlaylistSnippetModel;

//   /// [SnippetModel.fromJson] factory constructor.
//   factory PlaylistSnippetModel.fromJson(Map<String, dynamic> json) =>
//       _$PlaylistSnippetModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/localized_model.dart";
import "package:youtube/data/models/thumbnails_model.dart";

part "playlist_snippet_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PlaylistSnippetModel with PlaylistSnippetModelMappable {
  @MappableField(key: "publishedAt")
  final DateTime? publishedAtTimestamp;
  final String? channelId;
  final String? title;
  final String? description;
  final Map<String, ThumbnailsModel>? thumbnails;
  final String? channelTitle;
  final String? defaultLanguage;
  final LocalizedModel? localized;

  static const fromMap = PlaylistSnippetModelMapper.fromMap;
  static const fromJson = PlaylistSnippetModelMapper.fromJson;

  PlaylistSnippetModel({
    this.publishedAtTimestamp,
    this.channelId,
    this.title,
    this.description,
    this.thumbnails,
    this.channelTitle,
    this.defaultLanguage,
    this.localized,
  });

  // static const empty = PlaylistSnippetModel(id: "");

  // static const playlistSnippetOne = PlaylistSnippetModel(
  //   id: "playlistSnippetOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const playlistSnippetTwo = PlaylistSnippetModel(
  //   id: "playlistSnippetTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const playlistSnippetThree = PlaylistSnippetModel(
  //   id: "playlistSnippetThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<PlaylistSnippetModel> fakeData = [
  //   playlistSnippeOne,
  //   playlistSnippeTwo,
  //   playlistSnippeThree,
  // ];
}
