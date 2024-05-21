// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'video_snippet_model.dart';

class VideoSnippetModelMapper extends ClassMapperBase<VideoSnippetModel> {
  VideoSnippetModelMapper._();

  static VideoSnippetModelMapper? _instance;
  static VideoSnippetModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = VideoSnippetModelMapper._());
      ResourceIdModelMapper.ensureInitialized();
      ThumbnailsModelMapper.ensureInitialized();
      LocalizedModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'VideoSnippetModel';

  static DateTime? _$publishedAt(VideoSnippetModel v) => v.publishedAt;
  static const Field<VideoSnippetModel, DateTime> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at', opt: true);
  static String? _$channelId(VideoSnippetModel v) => v.channelId;
  static const Field<VideoSnippetModel, String> _f$channelId =
      Field('channelId', _$channelId, key: 'channel_id', opt: true);
  static String? _$title(VideoSnippetModel v) => v.title;
  static const Field<VideoSnippetModel, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(VideoSnippetModel v) => v.description;
  static const Field<VideoSnippetModel, String> _f$description =
      Field('description', _$description, opt: true);
  static ResourceIdModel? _$resourceId(VideoSnippetModel v) => v.resourceId;
  static const Field<VideoSnippetModel, ResourceIdModel> _f$resourceId =
      Field('resourceId', _$resourceId, key: 'resource_id', opt: true);
  static Map<String, ThumbnailsModel>? _$thumbnails(VideoSnippetModel v) =>
      v.thumbnails;
  static const Field<VideoSnippetModel, Map<String, ThumbnailsModel>>
      _f$thumbnails = Field('thumbnails', _$thumbnails, opt: true);
  static String? _$channelTitle(VideoSnippetModel v) => v.channelTitle;
  static const Field<VideoSnippetModel, String> _f$channelTitle =
      Field('channelTitle', _$channelTitle, key: 'channel_title', opt: true);
  static List<String>? _$tags(VideoSnippetModel v) => v.tags;
  static const Field<VideoSnippetModel, List<String>> _f$tags =
      Field('tags', _$tags, opt: true);
  static String? _$categoryId(VideoSnippetModel v) => v.categoryId;
  static const Field<VideoSnippetModel, String> _f$categoryId =
      Field('categoryId', _$categoryId, key: 'category_id', opt: true);
  static String? _$liveBroadcastContent(VideoSnippetModel v) =>
      v.liveBroadcastContent;
  static const Field<VideoSnippetModel, String> _f$liveBroadcastContent = Field(
      'liveBroadcastContent', _$liveBroadcastContent,
      key: 'live_broadcast_content', opt: true);
  static String? _$defaultLanguage(VideoSnippetModel v) => v.defaultLanguage;
  static const Field<VideoSnippetModel, String> _f$defaultLanguage = Field(
      'defaultLanguage', _$defaultLanguage,
      key: 'default_language', opt: true);
  static LocalizedModel? _$localized(VideoSnippetModel v) => v.localized;
  static const Field<VideoSnippetModel, LocalizedModel> _f$localized =
      Field('localized', _$localized, opt: true);
  static String? _$defaultAudioLanguage(VideoSnippetModel v) =>
      v.defaultAudioLanguage;
  static const Field<VideoSnippetModel, String> _f$defaultAudioLanguage = Field(
      'defaultAudioLanguage', _$defaultAudioLanguage,
      key: 'default_audio_language', opt: true);

  @override
  final MappableFields<VideoSnippetModel> fields = const {
    #publishedAt: _f$publishedAt,
    #channelId: _f$channelId,
    #title: _f$title,
    #description: _f$description,
    #resourceId: _f$resourceId,
    #thumbnails: _f$thumbnails,
    #channelTitle: _f$channelTitle,
    #tags: _f$tags,
    #categoryId: _f$categoryId,
    #liveBroadcastContent: _f$liveBroadcastContent,
    #defaultLanguage: _f$defaultLanguage,
    #localized: _f$localized,
    #defaultAudioLanguage: _f$defaultAudioLanguage,
  };

  static VideoSnippetModel _instantiate(DecodingData data) {
    return VideoSnippetModel(
        publishedAt: data.dec(_f$publishedAt),
        channelId: data.dec(_f$channelId),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        resourceId: data.dec(_f$resourceId),
        thumbnails: data.dec(_f$thumbnails),
        channelTitle: data.dec(_f$channelTitle),
        tags: data.dec(_f$tags),
        categoryId: data.dec(_f$categoryId),
        liveBroadcastContent: data.dec(_f$liveBroadcastContent),
        defaultLanguage: data.dec(_f$defaultLanguage),
        localized: data.dec(_f$localized),
        defaultAudioLanguage: data.dec(_f$defaultAudioLanguage));
  }

  @override
  final Function instantiate = _instantiate;

  static VideoSnippetModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<VideoSnippetModel>(map);
  }

  static VideoSnippetModel fromJson(String json) {
    return ensureInitialized().decodeJson<VideoSnippetModel>(json);
  }
}

mixin VideoSnippetModelMappable {
  String toJson() {
    return VideoSnippetModelMapper.ensureInitialized()
        .encodeJson<VideoSnippetModel>(this as VideoSnippetModel);
  }

  Map<String, dynamic> toMap() {
    return VideoSnippetModelMapper.ensureInitialized()
        .encodeMap<VideoSnippetModel>(this as VideoSnippetModel);
  }

  VideoSnippetModelCopyWith<VideoSnippetModel, VideoSnippetModel,
          VideoSnippetModel>
      get copyWith => _VideoSnippetModelCopyWithImpl(
          this as VideoSnippetModel, $identity, $identity);
  @override
  String toString() {
    return VideoSnippetModelMapper.ensureInitialized()
        .stringifyValue(this as VideoSnippetModel);
  }

  @override
  bool operator ==(Object other) {
    return VideoSnippetModelMapper.ensureInitialized()
        .equalsValue(this as VideoSnippetModel, other);
  }

  @override
  int get hashCode {
    return VideoSnippetModelMapper.ensureInitialized()
        .hashValue(this as VideoSnippetModel);
  }
}

extension VideoSnippetModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, VideoSnippetModel, $Out> {
  VideoSnippetModelCopyWith<$R, VideoSnippetModel, $Out>
      get $asVideoSnippetModel =>
          $base.as((v, t, t2) => _VideoSnippetModelCopyWithImpl(v, t, t2));
}

abstract class VideoSnippetModelCopyWith<$R, $In extends VideoSnippetModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ResourceIdModelCopyWith<$R, ResourceIdModel, ResourceIdModel>? get resourceId;
  MapCopyWith<$R, String, ThumbnailsModel,
          ThumbnailsModelCopyWith<$R, ThumbnailsModel, ThumbnailsModel>>?
      get thumbnails;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get tags;
  LocalizedModelCopyWith<$R, LocalizedModel, LocalizedModel>? get localized;
  $R call(
      {DateTime? publishedAt,
      String? channelId,
      String? title,
      String? description,
      ResourceIdModel? resourceId,
      Map<String, ThumbnailsModel>? thumbnails,
      String? channelTitle,
      List<String>? tags,
      String? categoryId,
      String? liveBroadcastContent,
      String? defaultLanguage,
      LocalizedModel? localized,
      String? defaultAudioLanguage});
  VideoSnippetModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _VideoSnippetModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, VideoSnippetModel, $Out>
    implements VideoSnippetModelCopyWith<$R, VideoSnippetModel, $Out> {
  _VideoSnippetModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<VideoSnippetModel> $mapper =
      VideoSnippetModelMapper.ensureInitialized();
  @override
  ResourceIdModelCopyWith<$R, ResourceIdModel, ResourceIdModel>?
      get resourceId =>
          $value.resourceId?.copyWith.$chain((v) => call(resourceId: v));
  @override
  MapCopyWith<$R, String, ThumbnailsModel,
          ThumbnailsModelCopyWith<$R, ThumbnailsModel, ThumbnailsModel>>?
      get thumbnails => $value.thumbnails != null
          ? MapCopyWith($value.thumbnails!, (v, t) => v.copyWith.$chain(t),
              (v) => call(thumbnails: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get tags =>
      $value.tags != null
          ? ListCopyWith($value.tags!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(tags: v))
          : null;
  @override
  LocalizedModelCopyWith<$R, LocalizedModel, LocalizedModel>? get localized =>
      $value.localized?.copyWith.$chain((v) => call(localized: v));
  @override
  $R call(
          {Object? publishedAt = $none,
          Object? channelId = $none,
          Object? title = $none,
          Object? description = $none,
          Object? resourceId = $none,
          Object? thumbnails = $none,
          Object? channelTitle = $none,
          Object? tags = $none,
          Object? categoryId = $none,
          Object? liveBroadcastContent = $none,
          Object? defaultLanguage = $none,
          Object? localized = $none,
          Object? defaultAudioLanguage = $none}) =>
      $apply(FieldCopyWithData({
        if (publishedAt != $none) #publishedAt: publishedAt,
        if (channelId != $none) #channelId: channelId,
        if (title != $none) #title: title,
        if (description != $none) #description: description,
        if (resourceId != $none) #resourceId: resourceId,
        if (thumbnails != $none) #thumbnails: thumbnails,
        if (channelTitle != $none) #channelTitle: channelTitle,
        if (tags != $none) #tags: tags,
        if (categoryId != $none) #categoryId: categoryId,
        if (liveBroadcastContent != $none)
          #liveBroadcastContent: liveBroadcastContent,
        if (defaultLanguage != $none) #defaultLanguage: defaultLanguage,
        if (localized != $none) #localized: localized,
        if (defaultAudioLanguage != $none)
          #defaultAudioLanguage: defaultAudioLanguage
      }));
  @override
  VideoSnippetModel $make(CopyWithData data) => VideoSnippetModel(
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      channelId: data.get(#channelId, or: $value.channelId),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      resourceId: data.get(#resourceId, or: $value.resourceId),
      thumbnails: data.get(#thumbnails, or: $value.thumbnails),
      channelTitle: data.get(#channelTitle, or: $value.channelTitle),
      tags: data.get(#tags, or: $value.tags),
      categoryId: data.get(#categoryId, or: $value.categoryId),
      liveBroadcastContent:
          data.get(#liveBroadcastContent, or: $value.liveBroadcastContent),
      defaultLanguage: data.get(#defaultLanguage, or: $value.defaultLanguage),
      localized: data.get(#localized, or: $value.localized),
      defaultAudioLanguage:
          data.get(#defaultAudioLanguage, or: $value.defaultAudioLanguage));

  @override
  VideoSnippetModelCopyWith<$R2, VideoSnippetModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _VideoSnippetModelCopyWithImpl($value, $cast, t);
}
