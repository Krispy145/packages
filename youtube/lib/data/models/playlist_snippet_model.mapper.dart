// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'playlist_snippet_model.dart';

class PlaylistSnippetModelMapper extends ClassMapperBase<PlaylistSnippetModel> {
  PlaylistSnippetModelMapper._();

  static PlaylistSnippetModelMapper? _instance;
  static PlaylistSnippetModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaylistSnippetModelMapper._());
      ThumbnailsModelMapper.ensureInitialized();
      LocalizedModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaylistSnippetModel';

  static DateTime? _$publishedAt(PlaylistSnippetModel v) => v.publishedAt;
  static const Field<PlaylistSnippetModel, DateTime> _f$publishedAt =
      Field('publishedAt', _$publishedAt, key: 'published_at', opt: true);
  static String? _$channelId(PlaylistSnippetModel v) => v.channelId;
  static const Field<PlaylistSnippetModel, String> _f$channelId =
      Field('channelId', _$channelId, key: 'channel_id', opt: true);
  static String? _$title(PlaylistSnippetModel v) => v.title;
  static const Field<PlaylistSnippetModel, String> _f$title =
      Field('title', _$title, opt: true);
  static String? _$description(PlaylistSnippetModel v) => v.description;
  static const Field<PlaylistSnippetModel, String> _f$description =
      Field('description', _$description, opt: true);
  static Map<String, ThumbnailsModel>? _$thumbnails(PlaylistSnippetModel v) =>
      v.thumbnails;
  static const Field<PlaylistSnippetModel, Map<String, ThumbnailsModel>>
      _f$thumbnails = Field('thumbnails', _$thumbnails, opt: true);
  static String? _$channelTitle(PlaylistSnippetModel v) => v.channelTitle;
  static const Field<PlaylistSnippetModel, String> _f$channelTitle =
      Field('channelTitle', _$channelTitle, key: 'channel_title', opt: true);
  static String? _$defaultLanguage(PlaylistSnippetModel v) => v.defaultLanguage;
  static const Field<PlaylistSnippetModel, String> _f$defaultLanguage = Field(
      'defaultLanguage', _$defaultLanguage,
      key: 'default_language', opt: true);
  static LocalizedModel? _$localized(PlaylistSnippetModel v) => v.localized;
  static const Field<PlaylistSnippetModel, LocalizedModel> _f$localized =
      Field('localized', _$localized, opt: true);

  @override
  final MappableFields<PlaylistSnippetModel> fields = const {
    #publishedAt: _f$publishedAt,
    #channelId: _f$channelId,
    #title: _f$title,
    #description: _f$description,
    #thumbnails: _f$thumbnails,
    #channelTitle: _f$channelTitle,
    #defaultLanguage: _f$defaultLanguage,
    #localized: _f$localized,
  };

  static PlaylistSnippetModel _instantiate(DecodingData data) {
    return PlaylistSnippetModel(
        publishedAt: data.dec(_f$publishedAt),
        channelId: data.dec(_f$channelId),
        title: data.dec(_f$title),
        description: data.dec(_f$description),
        thumbnails: data.dec(_f$thumbnails),
        channelTitle: data.dec(_f$channelTitle),
        defaultLanguage: data.dec(_f$defaultLanguage),
        localized: data.dec(_f$localized));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaylistSnippetModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaylistSnippetModel>(map);
  }

  static PlaylistSnippetModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlaylistSnippetModel>(json);
  }
}

mixin PlaylistSnippetModelMappable {
  String toJson() {
    return PlaylistSnippetModelMapper.ensureInitialized()
        .encodeJson<PlaylistSnippetModel>(this as PlaylistSnippetModel);
  }

  Map<String, dynamic> toMap() {
    return PlaylistSnippetModelMapper.ensureInitialized()
        .encodeMap<PlaylistSnippetModel>(this as PlaylistSnippetModel);
  }

  PlaylistSnippetModelCopyWith<PlaylistSnippetModel, PlaylistSnippetModel,
          PlaylistSnippetModel>
      get copyWith => _PlaylistSnippetModelCopyWithImpl(
          this as PlaylistSnippetModel, $identity, $identity);
  @override
  String toString() {
    return PlaylistSnippetModelMapper.ensureInitialized()
        .stringifyValue(this as PlaylistSnippetModel);
  }

  @override
  bool operator ==(Object other) {
    return PlaylistSnippetModelMapper.ensureInitialized()
        .equalsValue(this as PlaylistSnippetModel, other);
  }

  @override
  int get hashCode {
    return PlaylistSnippetModelMapper.ensureInitialized()
        .hashValue(this as PlaylistSnippetModel);
  }
}

extension PlaylistSnippetModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaylistSnippetModel, $Out> {
  PlaylistSnippetModelCopyWith<$R, PlaylistSnippetModel, $Out>
      get $asPlaylistSnippetModel =>
          $base.as((v, t, t2) => _PlaylistSnippetModelCopyWithImpl(v, t, t2));
}

abstract class PlaylistSnippetModelCopyWith<
    $R,
    $In extends PlaylistSnippetModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, ThumbnailsModel,
          ThumbnailsModelCopyWith<$R, ThumbnailsModel, ThumbnailsModel>>?
      get thumbnails;
  LocalizedModelCopyWith<$R, LocalizedModel, LocalizedModel>? get localized;
  $R call(
      {DateTime? publishedAt,
      String? channelId,
      String? title,
      String? description,
      Map<String, ThumbnailsModel>? thumbnails,
      String? channelTitle,
      String? defaultLanguage,
      LocalizedModel? localized});
  PlaylistSnippetModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaylistSnippetModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaylistSnippetModel, $Out>
    implements PlaylistSnippetModelCopyWith<$R, PlaylistSnippetModel, $Out> {
  _PlaylistSnippetModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaylistSnippetModel> $mapper =
      PlaylistSnippetModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, ThumbnailsModel,
          ThumbnailsModelCopyWith<$R, ThumbnailsModel, ThumbnailsModel>>?
      get thumbnails => $value.thumbnails != null
          ? MapCopyWith($value.thumbnails!, (v, t) => v.copyWith.$chain(t),
              (v) => call(thumbnails: v))
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
          Object? thumbnails = $none,
          Object? channelTitle = $none,
          Object? defaultLanguage = $none,
          Object? localized = $none}) =>
      $apply(FieldCopyWithData({
        if (publishedAt != $none) #publishedAt: publishedAt,
        if (channelId != $none) #channelId: channelId,
        if (title != $none) #title: title,
        if (description != $none) #description: description,
        if (thumbnails != $none) #thumbnails: thumbnails,
        if (channelTitle != $none) #channelTitle: channelTitle,
        if (defaultLanguage != $none) #defaultLanguage: defaultLanguage,
        if (localized != $none) #localized: localized
      }));
  @override
  PlaylistSnippetModel $make(CopyWithData data) => PlaylistSnippetModel(
      publishedAt: data.get(#publishedAt, or: $value.publishedAt),
      channelId: data.get(#channelId, or: $value.channelId),
      title: data.get(#title, or: $value.title),
      description: data.get(#description, or: $value.description),
      thumbnails: data.get(#thumbnails, or: $value.thumbnails),
      channelTitle: data.get(#channelTitle, or: $value.channelTitle),
      defaultLanguage: data.get(#defaultLanguage, or: $value.defaultLanguage),
      localized: data.get(#localized, or: $value.localized));

  @override
  PlaylistSnippetModelCopyWith<$R2, PlaylistSnippetModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaylistSnippetModelCopyWithImpl($value, $cast, t);
}
