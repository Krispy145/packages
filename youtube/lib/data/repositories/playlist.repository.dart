import 'package:utilities/data/sources/paginated.dart';
import 'package:utilities/helpers/tuples.dart';
import 'package:youtube/data/models/playlist_model.dart';
import 'package:youtube/data/sources/playlist/_source.dart';

/// [PlaylistDataRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistDataRepository {
  // /// [getAllPlaylistModels] returns a list of [PlaylistModel]s.
  // Future<List<PlaylistModel?>> getAllPlaylistModels({required PlaylistDataSource source, String? channelId}) async {
  //   return source.getAll();
  // }

  /// [getPagedPlaylistModels] returns a page of [PlaylistModel]s.
  Future<Pair<ResponseModel?, List<PlaylistModel?>>> getPagedPlaylistModels({
    required PlaylistDataSource source,
    int? limit,
    ResponseModel? lastResponse,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await source.getPage(size: limit, lastResponse: lastResponse, queryParameters: queryParameters);
  }

  /// [getPlaylistModel] returns a single [PlaylistModel].
  Future<PlaylistModel?> getPlaylistModel({required PlaylistDataSource source, required String id}) async {
    return source.get(id);
  }

  // /// [addAllPlaylistModels] adds all [PlaylistModel]s to the data source.
  // Future<void> addAllPlaylistModels({required PlaylistDataSource source, required List<PlaylistModel> playlistModels}) async {
  //   return source.addAll(playlistModels);
  // }

  // /// [addPlaylistModel] adds a single [PlaylistModel] to the data source.
  // Future<void> addPlaylistModel({required PlaylistDataSource source, required PlaylistModel playlistModel}) async {
  //   await source.add(playlistModel);
  // }

  // /// [additPlaylistModel] addits a single [PlaylistModel] to the data source.
  // Future<void> additPlaylistModel({required PlaylistDataSource source, required PlaylistModel playlistModel}) async {
  //   return source.update(playlistModel.id, playlistModel);
  // }

  // /// [deletePlaylistModel] deletes a single [PlaylistModel] from the data source.
  // Future<void> deletePlaylistModel({required PlaylistDataSource source, required String id}) async {
  //   return source.delete(id);
  // }
}
