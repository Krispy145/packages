import 'package:utilities/data_sources/paginated.dart';
import 'package:youtube/data/models/playlist_item_model.dart';
import 'package:youtube/data/models/playlist_model.dart';
import 'package:youtube/data/repositories/playlist_item.repository.dart';
import 'package:youtube/data/sources/playlist_item/_source.dart';

import '/data/repositories/_repositories.dart';

/// [PlaylistItemRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistItemRepository {
  final PlaylistItemDataRepository _playlistItemDataRepository = DataRepositories.instance.playlistItem;

  final String apiKey;

  /// [PlaylistItemRepository] constructor.
  PlaylistItemRepository(this.apiKey);

  //* PlaylistModel Data Source Type
  late final _source = ApiPlaylistItemDataSource(apiKey);

  ResponseModel? _lastResponse;

  /// [getPagedPlaylistItems] fetches a page of [PlaylistModel]s from the data source.
  Future<List<PlaylistItemModel?>> getPagedPlaylistItems({int? limit, bool refresh = false, String? playlistId}) async {
    final _response = await _playlistItemDataRepository.getPagedPlaylistItemModels(
      source: _source,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
      queryParameters: {"playlistId": playlistId},
    );
    _lastResponse = _response.first;
    return _response.second;
  }
}
