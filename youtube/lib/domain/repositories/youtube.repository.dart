import '/data/models/youtube_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/youtube.repository.dart';
import '/data/sources/youtube/_source.dart';

/// [YoutubeRepository] is a class that defines the basic CRUD operations for the [YoutubeModel] entity.
class YoutubeRepository {
  final YoutubeDataRepository _youtubeDataRepository =
      DataRepositories.instance.youtube;

  /// [YoutubeRepository] constructor.
  YoutubeRepository();

  //* YoutubeModel Data Source Type
  final _source = DummyYoutubeDataSource();

  /// [getAllYoutubeModels] fetches all [YoutubeModel]s from the data source.
  Future<List<YoutubeModel?>> getAllYoutubeModels() {
    return _youtubeDataRepository.getAllYoutubeModels(source: _source);
  }

  /// [getYoutubeModel] fetches a single [YoutubeModel] from the data source.
  Future<YoutubeModel?> getYoutubeModel(String id) {
    return _youtubeDataRepository.getYoutubeModel(
      source: _source,
      id: id,
    );
  }

  /// [additYoutubeModel] addits a single [YoutubeModel] to the data source.
  Future<void> additYoutubeModel(YoutubeModel youtubeModel) {
    return _youtubeDataRepository.additYoutubeModel(
      source: _source,
      youtubeModel: youtubeModel,
    );
  }

  /// [addAllYoutubeModels] adds all [YoutubeModel]s to the data source.
  Future<void> addAllYoutubeModels(List<YoutubeModel> youtubeModels) {
    return _youtubeDataRepository.addAllYoutubeModels(
      source: _source,
      youtubeModels: youtubeModels,
    );
  }

  /// [deleteYoutubeModel] deletes a single [YoutubeModel] from the data source.
  Future<void> deleteYoutubeModel(String id) {
    return _youtubeDataRepository.deleteYoutubeModel(
      source: _source,
      id: id,
    );
  }
}
