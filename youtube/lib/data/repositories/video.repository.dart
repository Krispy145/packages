import 'package:utilities/data_sources/paginated.dart';
import 'package:utilities/helpers/tuples.dart';

import '/data/models/video_model.dart';
import '/data/sources/video/_source.dart';

/// [VideoDataRepository] is a class that defines the basic CRUD operations for the [VideoModel] entity.
class VideoDataRepository {
  /// [getPagedVideoModels] returns a page of [VideoModel]s.
  Future<Pair<ResponseModel?, List<VideoModel?>>> getPagedVideoModels({
    required VideoDataSource source,
    int? limit,
    ResponseModel? lastResponse,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await source.getPage(size: limit, lastResponse: lastResponse, queryParameters: queryParameters);
  }

  /// [getVideoModel] returns a single [VideoModel].
  Future<VideoModel?> getVideoModel({required VideoDataSource source, required String id}) async {
    return source.get(id);
  }
}
