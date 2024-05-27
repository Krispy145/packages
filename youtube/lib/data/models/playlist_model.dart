// // import 'package:fellowship/data/models/localizations_model.dart';
// // import 'package:fellowship/data/models/player_model.dart';
// // import 'package:fellowship/data/models/playlist/content_details_model.dart';
// // import 'package:fellowship/data/models/playlist/playlist.dart';
// // import 'package:fellowship/data/models/playlist/playlist_status_model.dart';
// // import 'package:fellowship/data/models/playlist/snippet_model.dart';
// //
// // import 'package:utilities/logger/logger.dart';

// // import '../../../utils/loggers.dart';

// // part 'playlist_model.freezed.dart';
// // part 'playlist_model.g.dart';

// // /// [PlaylistModel] is a class that represents the main model.
// // @freezed
// // class PlaylistModel with _$PlaylistModel {
// //   /// [PlaylistModel] constructor.
// //   factory PlaylistModel({
// //     required String id,
// //     String? kind,
// //     String? etag,
// //     PlaylistSnippetModel? snippet,
// //     PlaylistStatusModel? status,
// //     PlaylistContentDetailsModel? contentDetails,
// //     PlayerModel? player,
// //     Map<String, LocalizationsModel>? localizations,
// //   }) = _PlaylistModel;
// //   const PlaylistModel._();

// //   /// [PlaylistModel.fromJson] factory constructor.
// //   factory PlaylistModel.fromJson(Map<String, dynamic> json) => _$PlaylistModelFromJson(json);

// //   /// [toPlaylist] method that converts the [PlaylistModel] to a [Playlist].
// //   Playlist toPlaylist() {
// //     AppLogger.print('Converting PlaylistModel to Playlist: $this', [FellowshipLoggers.channelPlaylists]);
// //     return Playlist(
// //       id: id,
// //       title: snippet?.title ?? "No title",
// //       description: snippet?.description ?? "No description",
// //       thumbnailUrl: snippet?.thumbnails?['high']!.url ?? "No thumbnail",
// //       videoCount: contentDetails?.itemCount ?? 0,
// //     );
// //   }
// // }

// import "package:dart_mappable/dart_mappable.dart";
// import "package:youtube/data/models/content_details_model.dart";

// part "playlist_model.mapper.dart";

// @MappableClass(caseStyle: CaseStyle.camelCase)
// class PlaylistModel with PlaylistModelMappable {
//       final String id;
//     String? kind;
//     String? etag;
//     PlaylistSnippetModel? snippet;
//     PlaylistStatusModel? status;
//     ContentDetailsModel? contentDetails;
//     PlayerModel? player;
//     Map<String; LocalizationsModel>? localizations;

//    PlaylistModel({
//     required this.id,
//     this.kind,
//     this.etag,
//     this.snippet,
//     this.status,
//     this.contentDetails,
//     this.player,
//     this.localizations,
//   });

//   static const fromMap = PlaylistModelMapper.fromMap;
//   static const fromJson = PlaylistModelMapper.fromJson;

//   // static const empty = PlaylistModel(id: "");

//   // static const playlistOne = PlaylistModel(
//   //   id: "playlistOneId",
//   //   name: "{{name.titleCase()}} One",
//   // );

//   // static const playlistTwo = PlaylistModel(
//   //   id: "playlistTwoId",
//   //   name: "{{name.titleCase()}} Two",
//   // );

//   // static const playlistThree = PlaylistModel(
//   //   id: "playlistThreeId",
//   //   name: "{{name.titleCase()}} Three",
//   // );

//   // static final List<PlaylistModel> fakeData = [
//   //   playlistOne,
//   //   playlistTwo,
//   //   playlistThree,
//   // ];
// }

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

  // static const empty = PlaylistModel(id: "");

  // static const playlistOne = PlaylistModel(
  //   id: "playlistOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const playlistTwo = PlaylistModel(
  //   id: "playlistTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const playlistThree = PlaylistModel(
  //   id: "playlistThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  static final List<PlaylistModel> fakeData = [
    // playlistOne,
    // playlistTwo,
    // playlistThree,
  ];

  /// [toPlaylist] method that converts the [PlaylistModel] to a [Playlist].
  Playlist toPlaylist() {
    AppLogger.print('Converting PlaylistModel to Playlist: $this', [YoutubeLoggers.playlist]);
    return Playlist(
      id: id,
      title: snippet?.title ?? "",
      description: snippet?.description,
      thumbnailUrl: snippet?.thumbnails?['high']!.url,
      videoCount: contentDetails?.itemCount ?? 0,
    );
  }
}
