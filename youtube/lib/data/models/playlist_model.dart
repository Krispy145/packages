import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/logger/logger.dart";
import "package:youtube/data/models/content_details_model.dart";
import "package:youtube/data/models/internal/simple_playlist.dart";
import "package:youtube/data/models/localizations_model.dart";
import "package:youtube/data/models/player_model.dart";
import "package:youtube/data/models/playlist_snippet_model.dart";
import "package:youtube/data/models/playlist_status_model.dart";
import "package:youtube/utils/loggers.dart";

part "playlist_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PlaylistModel with PlaylistModelMappable {
  final String id;
  final String? kind;
  final String? etag;
  final PlaylistSnippetModel? snippet;
  final PlaylistStatusModel? status;
  final ContentDetailsModel? contentDetails;
  final PlayerModel? player;
  final Map<String, LocalizationsModel>? localizations;

  const PlaylistModel({
    required this.id,
    this.kind,
    this.etag,
    this.snippet,
    this.status,
    this.contentDetails,
    this.player,
    this.localizations,
  });

  static const fromMap = PlaylistModelMapper.fromMap;
  static const fromJson = PlaylistModelMapper.fromJson;

  static final List<PlaylistModel> fakeData = [];

  /// [toPlaylist] method that converts the [PlaylistModel] to a [Playlist].
  Playlist toPlaylist() {
    AppLogger.print(
      "Converting PlaylistModel to Playlist: $this",
      [YoutubeLoggers.playlist],
    );
    return Playlist(
      id: id,
      title: snippet?.title ?? "",
      description: snippet?.description,
      thumbnailUrl: snippet?.thumbnails?["high"]!.url,
      videoCount: contentDetails?.itemCount ?? 0,
    );
  }
}
