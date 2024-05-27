import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/content_details_model.dart";
import "package:youtube/data/models/file_details_model.dart";
import "package:youtube/data/models/internal/simple_video.dart";
import "package:youtube/data/models/live_streaming_details_model.dart";
import "package:youtube/data/models/localizations_model.dart";
import "package:youtube/data/models/player_model.dart";
import "package:youtube/data/models/processing_details_model.dart";
import "package:youtube/data/models/recording_details_model.dart";
import "package:youtube/data/models/statistics_model.dart";
import "package:youtube/data/models/suggestions_model.dart";
import "package:youtube/data/models/topic_details_model.dart";
import "package:youtube/data/models/video_snippet_model.dart";
import "package:youtube/data/models/video_status_model.dart";

part "video_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class VideoModel with VideoModelMappable {
  final String? id;
  final String? kind;
  final String? etag;
  final VideoSnippetModel? snippet;
  final ContentDetailsModel? contentDetails;
  final VideoStatusModel? status;
  final StatisticsModel? statistics;
  final PlayerModel? player;
  final TopicDetailsModel? topicDetails;
  final RecordingDetailsModel? recordingDetails;
  final FileDetailsModel? fileDetails;
  final ProcessingDetailsModel? processingDetails;
  final SuggestionsModel? suggestions;
  final LiveStreamingDetailsModel? liveStreamingDetails;
  final Map<String, LocalizationsModel>? localizations;

  const VideoModel({
    this.id,
    this.kind,
    this.etag,
    this.snippet,
    this.contentDetails,
    this.status,
    this.statistics,
    this.player,
    this.topicDetails,
    this.recordingDetails,
    this.fileDetails,
    this.processingDetails,
    this.suggestions,
    this.liveStreamingDetails,
    this.localizations,
  });

  static const fromMap = VideoModelMapper.fromMap;
  static const fromJson = VideoModelMapper.fromJson;

  static final List<VideoModel> fakeData = [];

  Video toVideo() {
    return Video(
      id: snippet?.resourceId?.videoId ?? "",
      title: snippet?.title,
      description: snippet?.description,
      thumbnailUrl: snippet?.thumbnails?["default"]?.url,
      channelTitle: snippet?.channelTitle,
    );
  }
}
