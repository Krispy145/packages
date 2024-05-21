import '/data/models/video_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/video.repository.dart';
import '/data/sources/video/_source.dart';

/// [VideoRepository] is a class that defines the basic CRUD operations for the [VideoModel] entity.
class VideoRepository {
  final VideoDataRepository _videoDataRepository = DataRepositories.instance.video;

  /// [VideoRepository] constructor.
  VideoRepository();

  //* VideoModel Data Source Type
  final _source = DummyVideoDataSource();

  /// [getAllPlaylistVideoModels] fetches all [VideoModel]s from the data source.
  Future<List<VideoModel?>> getAllPlaylistVideoModels(String playlistId) {
    return _videoDataRepository.getAllPlaylistVideoModels(source: _source, playlistId: playlistId);
  }

  /// [getVideoModel] fetches a single [VideoModel] from the data source.
  Future<VideoModel?> getVideoModel(String id) {
    return _videoDataRepository.getVideoModel(
      source: _source,
      id: id,
    );
  }

  // /// [additVideoModel] addits a single [VideoModel] to the data source.
  // Future<void> additVideoModel(VideoModel videoModel) {
  //   return _videoDataRepository.additVideoModel(
  //     source: _source,
  //     videoModel: videoModel,
  //   );
  // }

  // /// [addAllVideoModels] adds all [VideoModel]s to the data source.
  // Future<void> addAllVideoModels(List<VideoModel> videoModels) {
  //   return _videoDataRepository.addAllVideoModels(
  //     source: _source,
  //     videoModels: videoModels,
  //   );
  // }

  // /// [deleteVideoModel] deletes a single [VideoModel] from the data source.
  // Future<void> deleteVideoModel(String id) {
  //   return _videoDataRepository.deleteVideoModel(
  //     source: _source,
  //     id: id,
  //   );
  // }
}
