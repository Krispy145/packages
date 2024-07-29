import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:youtube/data/models/playlist_item_model.dart";
import "package:youtube/data/sources/playlist_item/_source.dart";

/// [PlaylistItemDataRepository] is a class that defines the basic CRUD operations for the [PlaylistItemModel] entity.
class PlaylistItemDataRepository {
  /// [getPagedPlaylistItemModels] returns a page of [PlaylistItemModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PlaylistItemModel?>>>> getPagedPlaylistItemModels({
    required PlaylistItemDataSource source,
    int? limit,
    ResponseModel? lastResponse,
    Map<String, dynamic>? queryParameters,
  }) async {
    return source.getPage(size: limit, lastResponse: lastResponse, queryParameters: queryParameters);
  }

  /// [getPlaylistItemModel] returns a single [PlaylistItemModel].
  Future<Pair<RequestResponse, PlaylistItemModel?>> getPlaylistItemModel({required PlaylistItemDataSource source, required String id}) async {
    return source.get(id);
  }
}
