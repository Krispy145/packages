// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'playlist_item_model.dart';

class PlaylistItemModelMapper extends ClassMapperBase<PlaylistItemModel> {
  PlaylistItemModelMapper._();

  static PlaylistItemModelMapper? _instance;
  static PlaylistItemModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaylistItemModelMapper._());
      VideoSnippetModelMapper.ensureInitialized();
      ContentDetailsModelMapper.ensureInitialized();
      VideoStatusModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaylistItemModel';

  static String _$id(PlaylistItemModel v) => v.id;
  static const Field<PlaylistItemModel, String> _f$id = Field('id', _$id);
  static String? _$kind(PlaylistItemModel v) => v.kind;
  static const Field<PlaylistItemModel, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$etag(PlaylistItemModel v) => v.etag;
  static const Field<PlaylistItemModel, String> _f$etag =
      Field('etag', _$etag, opt: true);
  static VideoSnippetModel? _$snippet(PlaylistItemModel v) => v.snippet;
  static const Field<PlaylistItemModel, VideoSnippetModel> _f$snippet =
      Field('snippet', _$snippet, opt: true);
  static ContentDetailsModel? _$contentDetails(PlaylistItemModel v) =>
      v.contentDetails;
  static const Field<PlaylistItemModel, ContentDetailsModel> _f$contentDetails =
      Field('contentDetails', _$contentDetails,
          key: 'content_details', opt: true);
  static VideoStatusModel? _$status(PlaylistItemModel v) => v.status;
  static const Field<PlaylistItemModel, VideoStatusModel> _f$status =
      Field('status', _$status, opt: true);

  @override
  final MappableFields<PlaylistItemModel> fields = const {
    #id: _f$id,
    #kind: _f$kind,
    #etag: _f$etag,
    #snippet: _f$snippet,
    #contentDetails: _f$contentDetails,
    #status: _f$status,
  };

  static PlaylistItemModel _instantiate(DecodingData data) {
    return PlaylistItemModel(
        id: data.dec(_f$id),
        kind: data.dec(_f$kind),
        etag: data.dec(_f$etag),
        snippet: data.dec(_f$snippet),
        contentDetails: data.dec(_f$contentDetails),
        status: data.dec(_f$status));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaylistItemModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaylistItemModel>(map);
  }

  static PlaylistItemModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlaylistItemModel>(json);
  }
}

mixin PlaylistItemModelMappable {
  String toJson() {
    return PlaylistItemModelMapper.ensureInitialized()
        .encodeJson<PlaylistItemModel>(this as PlaylistItemModel);
  }

  Map<String, dynamic> toMap() {
    return PlaylistItemModelMapper.ensureInitialized()
        .encodeMap<PlaylistItemModel>(this as PlaylistItemModel);
  }

  PlaylistItemModelCopyWith<PlaylistItemModel, PlaylistItemModel,
          PlaylistItemModel>
      get copyWith => _PlaylistItemModelCopyWithImpl(
          this as PlaylistItemModel, $identity, $identity);
  @override
  String toString() {
    return PlaylistItemModelMapper.ensureInitialized()
        .stringifyValue(this as PlaylistItemModel);
  }

  @override
  bool operator ==(Object other) {
    return PlaylistItemModelMapper.ensureInitialized()
        .equalsValue(this as PlaylistItemModel, other);
  }

  @override
  int get hashCode {
    return PlaylistItemModelMapper.ensureInitialized()
        .hashValue(this as PlaylistItemModel);
  }
}

extension PlaylistItemModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaylistItemModel, $Out> {
  PlaylistItemModelCopyWith<$R, PlaylistItemModel, $Out>
      get $asPlaylistItemModel =>
          $base.as((v, t, t2) => _PlaylistItemModelCopyWithImpl(v, t, t2));
}

abstract class PlaylistItemModelCopyWith<$R, $In extends PlaylistItemModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  VideoSnippetModelCopyWith<$R, VideoSnippetModel, VideoSnippetModel>?
      get snippet;
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, ContentDetailsModel>?
      get contentDetails;
  VideoStatusModelCopyWith<$R, VideoStatusModel, VideoStatusModel>? get status;
  $R call(
      {String? id,
      String? kind,
      String? etag,
      VideoSnippetModel? snippet,
      ContentDetailsModel? contentDetails,
      VideoStatusModel? status});
  PlaylistItemModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaylistItemModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaylistItemModel, $Out>
    implements PlaylistItemModelCopyWith<$R, PlaylistItemModel, $Out> {
  _PlaylistItemModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaylistItemModel> $mapper =
      PlaylistItemModelMapper.ensureInitialized();
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
  $R call(
          {String? id,
          Object? kind = $none,
          Object? etag = $none,
          Object? snippet = $none,
          Object? contentDetails = $none,
          Object? status = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (kind != $none) #kind: kind,
        if (etag != $none) #etag: etag,
        if (snippet != $none) #snippet: snippet,
        if (contentDetails != $none) #contentDetails: contentDetails,
        if (status != $none) #status: status
      }));
  @override
  PlaylistItemModel $make(CopyWithData data) => PlaylistItemModel(
      id: data.get(#id, or: $value.id),
      kind: data.get(#kind, or: $value.kind),
      etag: data.get(#etag, or: $value.etag),
      snippet: data.get(#snippet, or: $value.snippet),
      contentDetails: data.get(#contentDetails, or: $value.contentDetails),
      status: data.get(#status, or: $value.status));

  @override
  PlaylistItemModelCopyWith<$R2, PlaylistItemModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaylistItemModelCopyWithImpl($value, $cast, t);
}
