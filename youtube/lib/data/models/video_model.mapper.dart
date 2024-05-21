// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_model.dart';

class VideoModelMapper extends ClassMapperBase<VideoModel> {
  VideoModelMapper._();

  static VideoModelMapper? _instance;
  static VideoModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoModelMapper._());
      VideoSnippetModelMapper.ensureInitialized();
      ContentDetailsModelMapper.ensureInitialized();
      VideoStatusModelMapper.ensureInitialized();
      StatisticsModelMapper.ensureInitialized();
      PlayerModelMapper.ensureInitialized();
      TopicDetailsModelMapper.ensureInitialized();
      RecordingDetailsModelMapper.ensureInitialized();
      FileDetailsModelMapper.ensureInitialized();
      ProcessingDetailsModelMapper.ensureInitialized();
      SuggestionsModelMapper.ensureInitialized();
      LiveStreamingDetailsModelMapper.ensureInitialized();
      LocalizationsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VideoModel';

  static String? _$kind(VideoModel v) => v.kind;
  static const Field<VideoModel, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$etag(VideoModel v) => v.etag;
  static const Field<VideoModel, String> _f$etag =
      Field('etag', _$etag, opt: true);
  static VideoSnippetModel? _$snippet(VideoModel v) => v.snippet;
  static const Field<VideoModel, VideoSnippetModel> _f$snippet =
      Field('snippet', _$snippet, opt: true);
  static ContentDetailsModel? _$contentDetails(VideoModel v) =>
      v.contentDetails;
  static const Field<VideoModel, ContentDetailsModel> _f$contentDetails = Field(
      'contentDetails', _$contentDetails,
      key: 'content_details', opt: true);
  static VideoStatusModel? _$status(VideoModel v) => v.status;
  static const Field<VideoModel, VideoStatusModel> _f$status =
      Field('status', _$status, opt: true);
  static StatisticsModel? _$statistics(VideoModel v) => v.statistics;
  static const Field<VideoModel, StatisticsModel> _f$statistics =
      Field('statistics', _$statistics, opt: true);
  static PlayerModel? _$player(VideoModel v) => v.player;
  static const Field<VideoModel, PlayerModel> _f$player =
      Field('player', _$player, opt: true);
  static TopicDetailsModel? _$topicDetails(VideoModel v) => v.topicDetails;
  static const Field<VideoModel, TopicDetailsModel> _f$topicDetails =
      Field('topicDetails', _$topicDetails, key: 'topic_details', opt: true);
  static RecordingDetailsModel? _$recordingDetails(VideoModel v) =>
      v.recordingDetails;
  static const Field<VideoModel, RecordingDetailsModel> _f$recordingDetails =
      Field('recordingDetails', _$recordingDetails,
          key: 'recording_details', opt: true);
  static FileDetailsModel? _$fileDetails(VideoModel v) => v.fileDetails;
  static const Field<VideoModel, FileDetailsModel> _f$fileDetails =
      Field('fileDetails', _$fileDetails, key: 'file_details', opt: true);
  static ProcessingDetailsModel? _$processingDetails(VideoModel v) =>
      v.processingDetails;
  static const Field<VideoModel, ProcessingDetailsModel> _f$processingDetails =
      Field('processingDetails', _$processingDetails,
          key: 'processing_details', opt: true);
  static SuggestionsModel? _$suggestions(VideoModel v) => v.suggestions;
  static const Field<VideoModel, SuggestionsModel> _f$suggestions =
      Field('suggestions', _$suggestions, opt: true);
  static LiveStreamingDetailsModel? _$liveStreamingDetails(VideoModel v) =>
      v.liveStreamingDetails;
  static const Field<VideoModel, LiveStreamingDetailsModel>
      _f$liveStreamingDetails = Field(
          'liveStreamingDetails', _$liveStreamingDetails,
          key: 'live_streaming_details', opt: true);
  static Map<String, LocalizationsModel>? _$localizations(VideoModel v) =>
      v.localizations;
  static const Field<VideoModel, Map<String, LocalizationsModel>>
      _f$localizations = Field('localizations', _$localizations, opt: true);

  @override
  final MappableFields<VideoModel> fields = const {
    #kind: _f$kind,
    #etag: _f$etag,
    #snippet: _f$snippet,
    #contentDetails: _f$contentDetails,
    #status: _f$status,
    #statistics: _f$statistics,
    #player: _f$player,
    #topicDetails: _f$topicDetails,
    #recordingDetails: _f$recordingDetails,
    #fileDetails: _f$fileDetails,
    #processingDetails: _f$processingDetails,
    #suggestions: _f$suggestions,
    #liveStreamingDetails: _f$liveStreamingDetails,
    #localizations: _f$localizations,
  };

  static VideoModel _instantiate(DecodingData data) {
    return VideoModel(
        kind: data.dec(_f$kind),
        etag: data.dec(_f$etag),
        snippet: data.dec(_f$snippet),
        contentDetails: data.dec(_f$contentDetails),
        status: data.dec(_f$status),
        statistics: data.dec(_f$statistics),
        player: data.dec(_f$player),
        topicDetails: data.dec(_f$topicDetails),
        recordingDetails: data.dec(_f$recordingDetails),
        fileDetails: data.dec(_f$fileDetails),
        processingDetails: data.dec(_f$processingDetails),
        suggestions: data.dec(_f$suggestions),
        liveStreamingDetails: data.dec(_f$liveStreamingDetails),
        localizations: data.dec(_f$localizations));
  }

  @override
  final Function instantiate = _instantiate;

  static VideoModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoModel>(map);
  }

  static VideoModel fromJson(String json) {
    return ensureInitialized().decodeJson<VideoModel>(json);
  }
}

mixin VideoModelMappable {
  String toJson() {
    return VideoModelMapper.ensureInitialized()
        .encodeJson<VideoModel>(this as VideoModel);
  }

  Map<String, dynamic> toMap() {
    return VideoModelMapper.ensureInitialized()
        .encodeMap<VideoModel>(this as VideoModel);
  }

  VideoModelCopyWith<VideoModel, VideoModel, VideoModel> get copyWith =>
      _VideoModelCopyWithImpl(this as VideoModel, $identity, $identity);
  @override
  String toString() {
    return VideoModelMapper.ensureInitialized()
        .stringifyValue(this as VideoModel);
  }

  @override
  bool operator ==(Object other) {
    return VideoModelMapper.ensureInitialized()
        .equalsValue(this as VideoModel, other);
  }

  @override
  int get hashCode {
    return VideoModelMapper.ensureInitialized().hashValue(this as VideoModel);
  }
}

extension VideoModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoModel, $Out> {
  VideoModelCopyWith<$R, VideoModel, $Out> get $asVideoModel =>
      $base.as((v, t, t2) => _VideoModelCopyWithImpl(v, t, t2));
}

abstract class VideoModelCopyWith<$R, $In extends VideoModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  VideoSnippetModelCopyWith<$R, VideoSnippetModel, VideoSnippetModel>?
      get snippet;
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, ContentDetailsModel>?
      get contentDetails;
  VideoStatusModelCopyWith<$R, VideoStatusModel, VideoStatusModel>? get status;
  StatisticsModelCopyWith<$R, StatisticsModel, StatisticsModel>? get statistics;
  PlayerModelCopyWith<$R, PlayerModel, PlayerModel>? get player;
  TopicDetailsModelCopyWith<$R, TopicDetailsModel, TopicDetailsModel>?
      get topicDetails;
  RecordingDetailsModelCopyWith<$R, RecordingDetailsModel,
      RecordingDetailsModel>? get recordingDetails;
  FileDetailsModelCopyWith<$R, FileDetailsModel, FileDetailsModel>?
      get fileDetails;
  ProcessingDetailsModelCopyWith<$R, ProcessingDetailsModel,
      ProcessingDetailsModel>? get processingDetails;
  SuggestionsModelCopyWith<$R, SuggestionsModel, SuggestionsModel>?
      get suggestions;
  LiveStreamingDetailsModelCopyWith<$R, LiveStreamingDetailsModel,
      LiveStreamingDetailsModel>? get liveStreamingDetails;
  MapCopyWith<
      $R,
      String,
      LocalizationsModel,
      LocalizationsModelCopyWith<$R, LocalizationsModel,
          LocalizationsModel>>? get localizations;
  $R call(
      {String? kind,
      String? etag,
      VideoSnippetModel? snippet,
      ContentDetailsModel? contentDetails,
      VideoStatusModel? status,
      StatisticsModel? statistics,
      PlayerModel? player,
      TopicDetailsModel? topicDetails,
      RecordingDetailsModel? recordingDetails,
      FileDetailsModel? fileDetails,
      ProcessingDetailsModel? processingDetails,
      SuggestionsModel? suggestions,
      LiveStreamingDetailsModel? liveStreamingDetails,
      Map<String, LocalizationsModel>? localizations});
  VideoModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _VideoModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoModel, $Out>
    implements VideoModelCopyWith<$R, VideoModel, $Out> {
  _VideoModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoModel> $mapper =
      VideoModelMapper.ensureInitialized();
  @override
  VideoSnippetModelCopyWith<$R, VideoSnippetModel, VideoSnippetModel>?
      get snippet => $value.snippet?.copyWith.$chain((v) => call(snippet: v));
  @override
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, ContentDetailsModel>?
      get contentDetails => $value.contentDetails?.copyWith
          .$chain((v) => call(contentDetails: v));
  @override
  VideoStatusModelCopyWith<$R, VideoStatusModel, VideoStatusModel>?
      get status => $value.status?.copyWith.$chain((v) => call(status: v));
  @override
  StatisticsModelCopyWith<$R, StatisticsModel, StatisticsModel>?
      get statistics =>
          $value.statistics?.copyWith.$chain((v) => call(statistics: v));
  @override
  PlayerModelCopyWith<$R, PlayerModel, PlayerModel>? get player =>
      $value.player?.copyWith.$chain((v) => call(player: v));
  @override
  TopicDetailsModelCopyWith<$R, TopicDetailsModel, TopicDetailsModel>?
      get topicDetails =>
          $value.topicDetails?.copyWith.$chain((v) => call(topicDetails: v));
  @override
  RecordingDetailsModelCopyWith<$R, RecordingDetailsModel,
          RecordingDetailsModel>?
      get recordingDetails => $value.recordingDetails?.copyWith
          .$chain((v) => call(recordingDetails: v));
  @override
  FileDetailsModelCopyWith<$R, FileDetailsModel, FileDetailsModel>?
      get fileDetails =>
          $value.fileDetails?.copyWith.$chain((v) => call(fileDetails: v));
  @override
  ProcessingDetailsModelCopyWith<$R, ProcessingDetailsModel,
          ProcessingDetailsModel>?
      get processingDetails => $value.processingDetails?.copyWith
          .$chain((v) => call(processingDetails: v));
  @override
  SuggestionsModelCopyWith<$R, SuggestionsModel, SuggestionsModel>?
      get suggestions =>
          $value.suggestions?.copyWith.$chain((v) => call(suggestions: v));
  @override
  LiveStreamingDetailsModelCopyWith<$R, LiveStreamingDetailsModel,
          LiveStreamingDetailsModel>?
      get liveStreamingDetails => $value.liveStreamingDetails?.copyWith
          .$chain((v) => call(liveStreamingDetails: v));
  @override
  MapCopyWith<
      $R,
      String,
      LocalizationsModel,
      LocalizationsModelCopyWith<$R, LocalizationsModel,
          LocalizationsModel>>? get localizations =>
      $value.localizations != null
          ? MapCopyWith($value.localizations!, (v, t) => v.copyWith.$chain(t),
              (v) => call(localizations: v))
          : null;
  @override
  $R call(
          {Object? kind = $none,
          Object? etag = $none,
          Object? snippet = $none,
          Object? contentDetails = $none,
          Object? status = $none,
          Object? statistics = $none,
          Object? player = $none,
          Object? topicDetails = $none,
          Object? recordingDetails = $none,
          Object? fileDetails = $none,
          Object? processingDetails = $none,
          Object? suggestions = $none,
          Object? liveStreamingDetails = $none,
          Object? localizations = $none}) =>
      $apply(FieldCopyWithData({
        if (kind != $none) #kind: kind,
        if (etag != $none) #etag: etag,
        if (snippet != $none) #snippet: snippet,
        if (contentDetails != $none) #contentDetails: contentDetails,
        if (status != $none) #status: status,
        if (statistics != $none) #statistics: statistics,
        if (player != $none) #player: player,
        if (topicDetails != $none) #topicDetails: topicDetails,
        if (recordingDetails != $none) #recordingDetails: recordingDetails,
        if (fileDetails != $none) #fileDetails: fileDetails,
        if (processingDetails != $none) #processingDetails: processingDetails,
        if (suggestions != $none) #suggestions: suggestions,
        if (liveStreamingDetails != $none)
          #liveStreamingDetails: liveStreamingDetails,
        if (localizations != $none) #localizations: localizations
      }));
  @override
  VideoModel $make(CopyWithData data) => VideoModel(
      kind: data.get(#kind, or: $value.kind),
      etag: data.get(#etag, or: $value.etag),
      snippet: data.get(#snippet, or: $value.snippet),
      contentDetails: data.get(#contentDetails, or: $value.contentDetails),
      status: data.get(#status, or: $value.status),
      statistics: data.get(#statistics, or: $value.statistics),
      player: data.get(#player, or: $value.player),
      topicDetails: data.get(#topicDetails, or: $value.topicDetails),
      recordingDetails:
          data.get(#recordingDetails, or: $value.recordingDetails),
      fileDetails: data.get(#fileDetails, or: $value.fileDetails),
      processingDetails:
          data.get(#processingDetails, or: $value.processingDetails),
      suggestions: data.get(#suggestions, or: $value.suggestions),
      liveStreamingDetails:
          data.get(#liveStreamingDetails, or: $value.liveStreamingDetails),
      localizations: data.get(#localizations, or: $value.localizations));

  @override
  VideoModelCopyWith<$R2, VideoModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideoModelCopyWithImpl($value, $cast, t);
}
