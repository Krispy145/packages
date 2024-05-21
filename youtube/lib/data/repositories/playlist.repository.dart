import '/data/models/playlist_model.dart';
import '/data/sources/playlist/_source.dart';

/// [PlaylistDataRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistDataRepository {
  /// [getAllPlaylistModels] returns a list of [PlaylistModel]s.
  Future<List<PlaylistModel?>> getAllPlaylistModels({required PlaylistDataSource source, required String channelId}) async {
    return source.getAll(channelId: channelId);
  }

  /// [getPlaylistModel] returns a single [PlaylistModel].
  Future<PlaylistModel?> getPlaylistModel({required PlaylistDataSource source, required String id}) async {
    return source.get(id);
  }

  /// [addAllPlaylistModels] adds all [PlaylistModel]s to the data source.
  Future<void> addAllPlaylistModels({required PlaylistDataSource source, required List<PlaylistModel> playlistModels}) async {
    return source.addAll(playlistModels);
  }

  /// [additPlaylistModel] addits a single [PlaylistModel] to the data source.
  Future<void> additPlaylistModel({required PlaylistDataSource source, required PlaylistModel playlistModel}) async {
    return source.update(playlistModel.id, playlistModel);
  }

  /// [deletePlaylistModel] deletes a single [PlaylistModel] from the data source.
  Future<void> deletePlaylistModel({required PlaylistDataSource source, required String id}) async {
    return source.delete(id);
  }
}
