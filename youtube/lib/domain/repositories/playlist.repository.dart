import '/data/models/playlist_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/playlist.repository.dart';
import '/data/sources/playlist/_source.dart';

/// [PlaylistRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistRepository {
  final PlaylistDataRepository _playlistDataRepository = DataRepositories.instance.playlist;

  /// [PlaylistRepository] constructor.
  PlaylistRepository();

  //* PlaylistModel Data Source Type
  final _source = DummyPlaylistDataSource();

  /// [getAllPlaylistModels] fetches all [PlaylistModel]s from the data source.
  Future<List<PlaylistModel?>> getAllPlaylistModels({required String channelId}) {
    return _playlistDataRepository.getAllPlaylistModels(source: _source, channelId: channelId);
  }

  /// [getPlaylistModel] fetches a single [PlaylistModel] from the data source.
  Future<PlaylistModel?> getPlaylistModel(String playlistId) {
    return _playlistDataRepository.getPlaylistModel(
      source: _source,
      id: playlistId,
    );
  }

  // /// [additPlaylistModel] addits a single [PlaylistModel] to the data source.
  // Future<void> additPlaylistModel(PlaylistModel playlistModel) {
  //   return _playlistDataRepository.additPlaylistModel(
  //     source: _source,
  //     playlistModel: playlistModel,
  //   );
  // }

  // /// [addAllPlaylistModels] adds all [PlaylistModel]s to the data source.
  // Future<void> addAllPlaylistModels(List<PlaylistModel> playlistModels) {
  //   return _playlistDataRepository.addAllPlaylistModels(
  //     source: _source,
  //     playlistModels: playlistModels,
  //   );
  // }

  // /// [deletePlaylistModel] deletes a single [PlaylistModel] from the data source.
  // Future<void> deletePlaylistModel(String id) {
  //   return _playlistDataRepository.deletePlaylistModel(
  //     source: _source,
  //     id: id,
  //   );
  // }
}
