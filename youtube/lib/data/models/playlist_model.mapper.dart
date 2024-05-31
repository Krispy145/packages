// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'playlist_model.dart';

class PlaylistModelMapper extends ClassMapperBase<PlaylistModel> {
  PlaylistModelMapper._();

  static PlaylistModelMapper? _instance;
  static PlaylistModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaylistModelMapper._());
      PlaylistSnippetModelMapper.ensureInitialized();
      PlaylistStatusModelMapper.ensureInitialized();
      ContentDetailsModelMapper.ensureInitialized();
      PlayerModelMapper.ensureInitialized();
      LocalizationsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaylistModel';

  static String _$id(PlaylistModel v) => v.id;
  static const Field<PlaylistModel, String> _f$id = Field('id', _$id);
  static String? _$kind(PlaylistModel v) => v.kind;
  static const Field<PlaylistModel, String> _f$kind =
      Field('kind', _$kind, opt: true);
  static String? _$etag(PlaylistModel v) => v.etag;
  static const Field<PlaylistModel, String> _f$etag =
      Field('etag', _$etag, opt: true);
  static PlaylistSnippetModel? _$snippet(PlaylistModel v) => v.snippet;
  static const Field<PlaylistModel, PlaylistSnippetModel> _f$snippet =
      Field('snippet', _$snippet, opt: true);
  static PlaylistStatusModel? _$status(PlaylistModel v) => v.status;
  static const Field<PlaylistModel, PlaylistStatusModel> _f$status =
      Field('status', _$status, opt: true);
  static ContentDetailsModel? _$contentDetails(PlaylistModel v) =>
      v.contentDetails;
  static const Field<PlaylistModel, ContentDetailsModel> _f$contentDetails =
      Field('contentDetails', _$contentDetails, opt: true);
  static PlayerModel? _$player(PlaylistModel v) => v.player;
  static const Field<PlaylistModel, PlayerModel> _f$player =
      Field('player', _$player, opt: true);
  static Map<String, LocalizationsModel>? _$localizations(PlaylistModel v) =>
      v.localizations;
  static const Field<PlaylistModel, Map<String, LocalizationsModel>>
      _f$localizations = Field('localizations', _$localizations, opt: true);

  @override
  final MappableFields<PlaylistModel> fields = const {
    #id: _f$id,
    #kind: _f$kind,
    #etag: _f$etag,
    #snippet: _f$snippet,
    #status: _f$status,
    #contentDetails: _f$contentDetails,
    #player: _f$player,
    #localizations: _f$localizations,
  };

  static PlaylistModel _instantiate(DecodingData data) {
    return PlaylistModel(
        id: data.dec(_f$id),
        kind: data.dec(_f$kind),
        etag: data.dec(_f$etag),
        snippet: data.dec(_f$snippet),
        status: data.dec(_f$status),
        contentDetails: data.dec(_f$contentDetails),
        player: data.dec(_f$player),
        localizations: data.dec(_f$localizations));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaylistModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaylistModel>(map);
  }

  static PlaylistModel fromJson(String json) {
    return ensureInitialized().decodeJson<PlaylistModel>(json);
  }
}

mixin PlaylistModelMappable {
  String toJson() {
    return PlaylistModelMapper.ensureInitialized()
        .encodeJson<PlaylistModel>(this as PlaylistModel);
  }

  Map<String, dynamic> toMap() {
    return PlaylistModelMapper.ensureInitialized()
        .encodeMap<PlaylistModel>(this as PlaylistModel);
  }

  PlaylistModelCopyWith<PlaylistModel, PlaylistModel, PlaylistModel>
      get copyWith => _PlaylistModelCopyWithImpl(
          this as PlaylistModel, $identity, $identity);
  @override
  String toString() {
    return PlaylistModelMapper.ensureInitialized()
        .stringifyValue(this as PlaylistModel);
  }

  @override
  bool operator ==(Object other) {
    return PlaylistModelMapper.ensureInitialized()
        .equalsValue(this as PlaylistModel, other);
  }

  @override
  int get hashCode {
    return PlaylistModelMapper.ensureInitialized()
        .hashValue(this as PlaylistModel);
  }
}

extension PlaylistModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaylistModel, $Out> {
  PlaylistModelCopyWith<$R, PlaylistModel, $Out> get $asPlaylistModel =>
      $base.as((v, t, t2) => _PlaylistModelCopyWithImpl(v, t, t2));
}

abstract class PlaylistModelCopyWith<$R, $In extends PlaylistModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PlaylistSnippetModelCopyWith<$R, PlaylistSnippetModel, PlaylistSnippetModel>?
      get snippet;
  PlaylistStatusModelCopyWith<$R, PlaylistStatusModel, PlaylistStatusModel>?
      get status;
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, ContentDetailsModel>?
      get contentDetails;
  PlayerModelCopyWith<$R, PlayerModel, PlayerModel>? get player;
  MapCopyWith<
      $R,
      String,
      LocalizationsModel,
      LocalizationsModelCopyWith<$R, LocalizationsModel,
          LocalizationsModel>>? get localizations;
  $R call(
      {String? id,
      String? kind,
      String? etag,
      PlaylistSnippetModel? snippet,
      PlaylistStatusModel? status,
      ContentDetailsModel? contentDetails,
      PlayerModel? player,
      Map<String, LocalizationsModel>? localizations});
  PlaylistModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlaylistModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaylistModel, $Out>
    implements PlaylistModelCopyWith<$R, PlaylistModel, $Out> {
  _PlaylistModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaylistModel> $mapper =
      PlaylistModelMapper.ensureInitialized();
  @override
  PlaylistSnippetModelCopyWith<$R, PlaylistSnippetModel, PlaylistSnippetModel>?
      get snippet => $value.snippet?.copyWith.$chain((v) => call(snippet: v));
  @override
  PlaylistStatusModelCopyWith<$R, PlaylistStatusModel, PlaylistStatusModel>?
      get status => $value.status?.copyWith.$chain((v) => call(status: v));
  @override
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, ContentDetailsModel>?
      get contentDetails => $value.contentDetails?.copyWith
          .$chain((v) => call(contentDetails: v));
  @override
  PlayerModelCopyWith<$R, PlayerModel, PlayerModel>? get player =>
      $value.player?.copyWith.$chain((v) => call(player: v));
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
          {String? id,
          Object? kind = $none,
          Object? etag = $none,
          Object? snippet = $none,
          Object? status = $none,
          Object? contentDetails = $none,
          Object? player = $none,
          Object? localizations = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (kind != $none) #kind: kind,
        if (etag != $none) #etag: etag,
        if (snippet != $none) #snippet: snippet,
        if (status != $none) #status: status,
        if (contentDetails != $none) #contentDetails: contentDetails,
        if (player != $none) #player: player,
        if (localizations != $none) #localizations: localizations
      }));
  @override
  PlaylistModel $make(CopyWithData data) => PlaylistModel(
      id: data.get(#id, or: $value.id),
      kind: data.get(#kind, or: $value.kind),
      etag: data.get(#etag, or: $value.etag),
      snippet: data.get(#snippet, or: $value.snippet),
      status: data.get(#status, or: $value.status),
      contentDetails: data.get(#contentDetails, or: $value.contentDetails),
      player: data.get(#player, or: $value.player),
      localizations: data.get(#localizations, or: $value.localizations));

  @override
  PlaylistModelCopyWith<$R2, PlaylistModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaylistModelCopyWithImpl($value, $cast, t);
}
