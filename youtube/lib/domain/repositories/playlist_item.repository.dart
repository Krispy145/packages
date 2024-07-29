import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:youtube/data/models/playlist_item_model.dart";
import "package:youtube/data/models/playlist_model.dart";
import "package:youtube/data/repositories/playlist_item.repository.dart";
import "package:youtube/data/sources/playlist_item/_source.dart";

import "/data/repositories/_repositories.dart";

/// [PlaylistItemRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
class PlaylistItemRepository {
  final PlaylistItemDataRepository _playlistItemDataRepository = DataRepositories.instance.playlistItem;

  final String apiKey;

  /// [PlaylistItemRepository] constructor.
  PlaylistItemRepository(this.apiKey);

  //* PlaylistModel Data Source Type
  late final _source = ApiPlaylistItemDataSource(apiKey);

  ResponseModel? _lastResponse;

  // /// [getLatestVideoFromChannel] gets the latest video from the "Uploads" playlist of a channel.
  // /// The uploads playlist ID is the same as the channel ID, but with "UC" replaced with "UU".
  // Future<PlaylistItemModel?> getLatestVideoFromChannel(String channelId) async {
  //   final pagedResponse = await _playlistItemDataRepository.getPagedPlaylistItemModels(
  //     source: _source,
  //     limit: 10,
  //     queryParameters: {
  //       "playlistId": channelId.replaceFirst("UC", "UU"),
  //     },
  //   );
  //   final playlistItems = pagedResponse.second;
  //   playlistItems.forEach((element) {
  //     // debugPrint(element.toString());
  //     debugPrint(
  //       "VIDEO: " +
  //           (element?.snippet?.publishedAt?.toString() ?? "") +
  //           " - " +
  //           (element?.contentDetails?.duration?.toString() ?? "") +
  //           " - " +
  //           (element?.contentDetails?.videoPublishedAt?.toString() ?? "") +
  //           " - " +
  //           (element?.snippet?.title ?? ""),
  //     );
  //   });
  //   return playlistItems.isNotEmpty
  //       ? playlistItems.firstWhere((element) {
  //           final publishedDate = element?.snippet?.publishedAt;
  //           if (publishedDate == null) return false;
  //           return publishedDate.isBefore(DateTime.now());
  //         })
  //       : null;
  // }

  /// [getPagedPlaylistItems] fetches a page of [PlaylistModel]s from the data source.
  Future<Pair<RequestResponse, List<PlaylistItemModel?>>> getPagedPlaylistItems({int? limit, bool refresh = false, required String playlistId}) async {
    final _response = await _playlistItemDataRepository.getPagedPlaylistItemModels(
      source: _source,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
      queryParameters: {
        "playlistId": playlistId,
      },
    );
    _lastResponse = _response.second.first;
    final _playlistItems = _response.second.second;
    return Pair(_response.first, _playlistItems);
  }
}
