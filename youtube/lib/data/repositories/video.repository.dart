import '/data/models/video_model.dart';
import '/data/sources/video/_source.dart';

/// [VideoDataRepository] is a class that defines the basic CRUD operations for the [VideoModel] entity.
class VideoDataRepository {
  /// [getAllPlaylistVideoModels] returns a list of [VideoModel]s.
  Future<List<VideoModel?>> getAllPlaylistVideoModels({required VideoDataSource source, required String playlistId}) async {
    return source.getAllFromPlaylist(playlistId);
  }

  /// [getVideoModel] returns a single [VideoModel].
  Future<VideoModel?> getVideoModel({required VideoDataSource source, required String id}) async {
    return source.get(id);
  }

  // /// [addAllVideoModels] adds all [VideoModel]s to the data source.
  // Future<void> addAllVideoModels(
  //     {required VideoDataSource source,
  //     required List<VideoModel> videoModels}) async {
  //   return source.addAll(videoModels);
  // }

  // /// [additVideoModel] addits a single [VideoModel] to the data source.
  // Future<void> additVideoModel(
  //     {required VideoDataSource source, required VideoModel videoModel}) async {
  //   return source.update(videoModel.id, videoModel);
  // }

  // /// [deleteVideoModel] deletes a single [VideoModel] from the data source.
  // Future<void> deleteVideoModel({required VideoDataSource source, required String id}) async {
  //   return source.delete(id);
  // }
}
