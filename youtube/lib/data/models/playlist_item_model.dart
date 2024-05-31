import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/foundation.dart";
import "package:youtube/data/models/content_details_model.dart";
import "package:youtube/data/models/video_snippet_model.dart";
import "package:youtube/data/models/video_status_model.dart";

part "playlist_item_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PlaylistItemModel with PlaylistItemModelMappable {
  final String id;
  final String? kind;
  final String? etag;
  final VideoSnippetModel? snippet;
  final ContentDetailsModel? contentDetails;
  final VideoStatusModel? status;

  const PlaylistItemModel({
    required this.id,
    this.kind,
    this.etag,
    this.snippet,
    this.contentDetails,
    this.status,
  });

  static const fromMap = PlaylistItemModelMapper.fromMap;
  static const fromJson = PlaylistItemModelMapper.fromJson;

  static const empty = PlaylistItemModel(id: "");

  static const playlistItemOne = PlaylistItemModel(
    id: "playlistItemOneId",
  );

  static const playlistItemTwo = PlaylistItemModel(
    id: "playlistItemTwoId",
  );

  static const playlistItemThree = PlaylistItemModel(
    id: "playlistItemThreeId",
  );

  static final List<PlaylistItemModel> fakeData = [
    playlistItemOne,
    playlistItemTwo,
    playlistItemThree,
  ];
}
