import 'package:utilities/data/sources/paginated.dart';
import 'package:youtube/data/models/playlist_model.dart';
import 'package:youtube/data/repositories/playlist.repository.dart';
import 'package:youtube/data/sources/playlist/_source.dart';

import '/data/repositories/_repositories.dart';

/// [PlaylistRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistRepository {
  final PlaylistDataRepository _playlistDataRepository = DataRepositories.instance.playlist;

  final String apiKey;

  /// [PlaylistRepository] constructor.
  PlaylistRepository(this.apiKey);

  //* PlaylistModel Data Source Type
  late final _source = ApiPlaylistDataSource(apiKey);

  ResponseModel? _lastResponse;

  /// [getPagedChannelPlaylists] fetches a page of [PlaylistModel]s from the data source.
  Future<List<PlaylistModel?>> getPagedChannelPlaylists({int? limit, bool refresh = false, String? channelId}) async {
    final _response = await _playlistDataRepository.getPagedPlaylistModels(
      source: _source,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
      queryParameters: {
        "channelId": channelId,
      },
    );
    _lastResponse = _response.first;
    return _response.second;
  }

  /// [getPagedMyPlaylists] fetches a page of [PlaylistModel]s from the data source.
  Future<List<PlaylistModel?>> getPagedMyPlaylists({
    int? limit,
    bool refresh = false,
  }) async {
    final _response = await _playlistDataRepository.getPagedPlaylistModels(
      source: _source,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
      queryParameters: {
        "mine": true,
      },
    );
    _lastResponse = _response.first;
    return _response.second;
  }

  /// [getPlaylistModel] fetches a single [PlaylistModel] from the data source.
  Future<PlaylistModel?> getPlaylistModel(String id) {
    return _playlistDataRepository.getPlaylistModel(
      source: _source,
      id: id,
    );
  }
}
