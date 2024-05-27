//

// part 'playlist_status_model.freezed.dart';
// part 'playlist_status_model.g.dart';

// /// [PlaylistStatusModel] is a class that represents the playlist status model.
// @freezed
// class PlaylistStatusModel with _$PlaylistStatusModel {
//   /// [PlaylistStatusModel] constructor.
//   factory PlaylistStatusModel({
//     String? privacyStatus,
//   }) = _PlaylistStatusModel;

//   /// [PlaylistStatusModel.fromJson] factory constructor.
//   factory PlaylistStatusModel.fromJson(Map<String, dynamic> json) =>
//       _$PlaylistStatusModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";

part "playlist_status_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PlaylistStatusModel with PlaylistStatusModelMappable {
  final String? privacyStatus;

  const PlaylistStatusModel({
    this.privacyStatus,
  });

  static const fromMap = PlaylistStatusModelMapper.fromMap;
  static const fromJson = PlaylistStatusModelMapper.fromJson;

  // static const empty = PlaylistStatusModel(id: "");

  // static const playlistStatusOne = PlaylistStatusModel(
  // id: "playlistStatusOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const playlistStatusTwo = PlaylistStatusModel(
  // id: "playlistStatusTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const playlistStatusThree = PlaylistStatusModel(
  // id: "playlistStatusThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<PlaylistStatusModel> fakeData = [
  // playlistStatusOne,
  // playlistStatusTwo,
  // playlistStatusThree,
  // ];
}
