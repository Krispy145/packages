import '/data/repositories/_repositories.dart';

import '/data/models/youtube_model.dart';
import '/data/sources/youtube/_source.dart';

/// [YoutubeDataRepository] is a class that defines the basic CRUD operations for the [YoutubeModel] entity.
class YoutubeDataRepository {
  /// [getAllYoutubeModels] returns a list of [YoutubeModel]s.
  Future<List<YoutubeModel?>> getAllYoutubeModels(
      {required YoutubeDataSource source}) async {
    return source.getAll();
  }

  /// [getYoutubeModel] returns a single [YoutubeModel].
  Future<YoutubeModel?> getYoutubeModel(
      {required YoutubeDataSource source, required String id}) async {
    return source.get(id);
  }

  /// [addAllYoutubeModels] adds all [YoutubeModel]s to the data source.
  Future<void> addAllYoutubeModels(
      {required YoutubeDataSource source,
      required List<YoutubeModel> youtubeModels}) async {
    return source.addAll(youtubeModels);
  }

  /// [additYoutubeModel] addits a single [YoutubeModel] to the data source.
  Future<void> additYoutubeModel(
      {required YoutubeDataSource source,
      required YoutubeModel youtubeModel}) async {
    return source.update(youtubeModel.id, youtubeModel);
  }

  /// [deleteYoutubeModel] deletes a single [YoutubeModel] from the data source.
  Future<void> deleteYoutubeModel(
      {required YoutubeDataSource source, required String id}) async {
    return source.delete(id);
  }
}
