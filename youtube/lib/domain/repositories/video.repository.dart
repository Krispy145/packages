// import "package:utilities/data/sources/paginated.dart";
// import "package:utilities/data/sources/source.dart";
// import "package:utilities/helpers/tuples.dart";
// import "package:youtube/data/enums/video_rating.dart";
import "package:youtube/data/models/video_model.dart";
// import "package:youtube/data/repositories/video.repository.dart";
// import "package:youtube/data/sources/video/_source.dart";
import "package:youtube_explode_dart/youtube_explode_dart.dart";

// import "/data/repositories/_repositories.dart";

/// [VideoRepository] is a class that defines the basic CRUD operations for the [VideoModel] entity.
class VideoRepository {
  final youtubeExplode = YoutubeExplode();

  Future<Video> getYTExplodeVideo(String id) => youtubeExplode.videos.get(id);
  Future<List<Video>> searchYTExplodeVideos(String searchQuery, {SearchFilter filter = TypeFilters.video}) => youtubeExplode.search.search(searchQuery, filter: filter);
  Future<Video?> getYTExplodeLatestVideo(String channelId) async => (await youtubeExplode.channels.getUploadsFromPage(channelId)).firstOrNull;
  Future<StreamManifest> getYTExplodeStreamManifest(String id) => youtubeExplode.videos.streams.getManifest(id, fullManifest: true);

  // final VideoDataRepository _videoDataRepository = DataRepositories.instance.video;

  // final String apiKey;

  // /// [VideoRepository] constructor.
  // VideoRepository(this.apiKey);

  // //* VideoModel Data Source Type
  // late final _source = ApiVideoDataSource(apiKey);

  // ResponseModel? _lastResponse;

  // /// [getMultipleVideoModelsPaged] fetches a page of [VideoModel]s from the data source.
  // Future<Pair<RequestResponse, List<VideoModel?>>> getMultipleVideoModelsPaged({int? limit, bool refresh = false, required List<String> videoIds}) async {
  //   final _response = await _videoDataRepository.getPagedVideoModels(
  //     source: _source,
  //     limit: limit,
  //     lastResponse: refresh ? null : _lastResponse,
  //     queryParameters: {"id": videoIds.join(",")},
  //   );
  //   _lastResponse = _response.second.first;
  //   final _videos = _response.second.second;
  //   return Pair(_response.first, _videos);
  // }

  // /// [getMostPopularVideosPaged] fetches a page of [VideoModel]s from the data source.
  // Future<Pair<RequestResponse, List<VideoModel?>>> getMostPopularVideosPaged({int? limit, bool refresh = false, required String videoCategoryId}) async {
  //   final _response = await _videoDataRepository.getPagedVideoModels(
  //     source: _source,
  //     limit: limit,
  //     lastResponse: refresh ? null : _lastResponse,
  //     queryParameters: {
  //       "videoCategoryId": videoCategoryId,
  //     },
  //   );
  //   _lastResponse = _response.second.first;
  //   final _videos = _response.second.second;
  //   return Pair(_response.first, _videos);
  // }

  // /// [getMyLikedVideos] fetches a page of [VideoModel]s from the data source.
  // Future<Pair<RequestResponse, List<VideoModel?>>> getMyLikedVideos({
  //   int? limit,
  //   bool refresh = false,
  //   required VideoRating videoRating,
  // }) async {
  //   final _response = await _videoDataRepository.getPagedVideoModels(
  //     source: _source,
  //     limit: limit,
  //     lastResponse: refresh ? null : _lastResponse,
  //     queryParameters: {
  //       "myRating": videoRating.name,
  //     },
  //   );
  //   _lastResponse = _response.second.first;
  //   final _videos = _response.second.second;
  //   return Pair(_response.first, _videos);
  // }

  // /// [getVideoModel] fetches a single [VideoModel] from the data source.
  // Future<Pair<RequestResponse, VideoModel?>> getVideoModel(String id) => _videoDataRepository.getVideoModel(source: _source, id: id);

// list (by video ID) ✅
// -- This example retrieves information about a specific video. It uses the id parameter to identify the video.
// list (multiple video IDs)
// -- This example retrieves information about a group of videos. The id parameter value is a comma-separated list of YouTube video IDs. You might issue a request like this to retrieve additional information about the items in a playlist or the results of a search query.
// list (most popular videos)
// -- This example retrieves a list of YouTube's most popular videos. The regionCode parameter identifies the country for which you are retrieving videos. The sample code is set to default to return the most popular videos in the United States. You could also use the videoCategoryId parameter to retrieve the most popular videos in a particular category.
// list (my liked videos)
// -- This example retrieves a list of videos liked by the user authorizing the API request. By setting the rating parameter value to dislike, you could also use this code to retrieve disliked videos.
}
