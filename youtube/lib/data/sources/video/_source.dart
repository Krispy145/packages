library data.sources.video;

import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/local/dummy_data.dart";
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/data_sources/source.dart';

import '../../models/video_model.dart';

part 'api.source.dart';
part 'dummy.source.dart';

/// [VideoDataSource] is an mixin that defines the basic CRUD operations for the [VideoModel] entity.
sealed class VideoDataSource implements DataSource<VideoModel, BasicSearchQueryModel> {
  /// [getAll] returns a list of [VideoModel]s.
  Future<List<VideoModel?>> getAllFromPlaylist(String playlistId);

  // /// [get] returns a single [VideoModel].
  // Future<VideoModel?> get(String id);

  // /// [addAll] adds all [VideoModel]s to the data source.
  // Future<void> addAll(List<VideoModel> videoModels);

  // /// [update] updates a single [VideoModel] in the data source.
  // Future<void> update(String id, VideoModel videoModel);

  // /// [delete] deletes a single [VideoModel] from the data source.
  // Future<void> delete(String id);
}
