// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'socials_model.dart';

class SocialsModelMapper extends ClassMapperBase<SocialsModel> {
  SocialsModelMapper._();

  static SocialsModelMapper? _instance;
  static SocialsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SocialsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SocialsModel';

  static String? _$instagramHandle(SocialsModel v) => v.instagramHandle;
  static const Field<SocialsModel, String> _f$instagramHandle = Field(
      'instagramHandle', _$instagramHandle,
      key: 'instagram_handle', opt: true);
  static String? _$facebookHandle(SocialsModel v) => v.facebookHandle;
  static const Field<SocialsModel, String> _f$facebookHandle = Field(
      'facebookHandle', _$facebookHandle,
      key: 'facebook_handle', opt: true);
  static String? _$twitterHandle(SocialsModel v) => v.twitterHandle;
  static const Field<SocialsModel, String> _f$twitterHandle =
      Field('twitterHandle', _$twitterHandle, key: 'twitter_handle', opt: true);
  static String? _$tiktokHandle(SocialsModel v) => v.tiktokHandle;
  static const Field<SocialsModel, String> _f$tiktokHandle =
      Field('tiktokHandle', _$tiktokHandle, key: 'tiktok_handle', opt: true);
  static String? _$pinterestHandle(SocialsModel v) => v.pinterestHandle;
  static const Field<SocialsModel, String> _f$pinterestHandle = Field(
      'pinterestHandle', _$pinterestHandle,
      key: 'pinterest_handle', opt: true);
  static String? _$youtubeHandle(SocialsModel v) => v.youtubeHandle;
  static const Field<SocialsModel, String> _f$youtubeHandle =
      Field('youtubeHandle', _$youtubeHandle, key: 'youtube_handle', opt: true);
  static String? _$snapchatHandle(SocialsModel v) => v.snapchatHandle;
  static const Field<SocialsModel, String> _f$snapchatHandle = Field(
      'snapchatHandle', _$snapchatHandle,
      key: 'snapchat_handle', opt: true);
  static String? _$linkedinHandle(SocialsModel v) => v.linkedinHandle;
  static const Field<SocialsModel, String> _f$linkedinHandle = Field(
      'linkedinHandle', _$linkedinHandle,
      key: 'linkedin_handle', opt: true);
  static String? _$spotifyHandle(SocialsModel v) => v.spotifyHandle;
  static const Field<SocialsModel, String> _f$spotifyHandle =
      Field('spotifyHandle', _$spotifyHandle, key: 'spotify_handle', opt: true);

  @override
  final MappableFields<SocialsModel> fields = const {
    #instagramHandle: _f$instagramHandle,
    #facebookHandle: _f$facebookHandle,
    #twitterHandle: _f$twitterHandle,
    #tiktokHandle: _f$tiktokHandle,
    #pinterestHandle: _f$pinterestHandle,
    #youtubeHandle: _f$youtubeHandle,
    #snapchatHandle: _f$snapchatHandle,
    #linkedinHandle: _f$linkedinHandle,
    #spotifyHandle: _f$spotifyHandle,
  };
  @override
  final bool ignoreNull = true;

  static SocialsModel _instantiate(DecodingData data) {
    return SocialsModel(
        instagramHandle: data.dec(_f$instagramHandle),
        facebookHandle: data.dec(_f$facebookHandle),
        twitterHandle: data.dec(_f$twitterHandle),
        tiktokHandle: data.dec(_f$tiktokHandle),
        pinterestHandle: data.dec(_f$pinterestHandle),
        youtubeHandle: data.dec(_f$youtubeHandle),
        snapchatHandle: data.dec(_f$snapchatHandle),
        linkedinHandle: data.dec(_f$linkedinHandle),
        spotifyHandle: data.dec(_f$spotifyHandle));
  }

  @override
  final Function instantiate = _instantiate;

  static SocialsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SocialsModel>(map);
  }

  static SocialsModel fromJson(String json) {
    return ensureInitialized().decodeJson<SocialsModel>(json);
  }
}

mixin SocialsModelMappable {
  String toJson() {
    return SocialsModelMapper.ensureInitialized()
        .encodeJson<SocialsModel>(this as SocialsModel);
  }

  Map<String, dynamic> toMap() {
    return SocialsModelMapper.ensureInitialized()
        .encodeMap<SocialsModel>(this as SocialsModel);
  }

  SocialsModelCopyWith<SocialsModel, SocialsModel, SocialsModel> get copyWith =>
      _SocialsModelCopyWithImpl(this as SocialsModel, $identity, $identity);
  @override
  String toString() {
    return SocialsModelMapper.ensureInitialized()
        .stringifyValue(this as SocialsModel);
  }

  @override
  bool operator ==(Object other) {
    return SocialsModelMapper.ensureInitialized()
        .equalsValue(this as SocialsModel, other);
  }

  @override
  int get hashCode {
    return SocialsModelMapper.ensureInitialized()
        .hashValue(this as SocialsModel);
  }
}

extension SocialsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SocialsModel, $Out> {
  SocialsModelCopyWith<$R, SocialsModel, $Out> get $asSocialsModel =>
      $base.as((v, t, t2) => _SocialsModelCopyWithImpl(v, t, t2));
}

abstract class SocialsModelCopyWith<$R, $In extends SocialsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? instagramHandle,
      String? facebookHandle,
      String? twitterHandle,
      String? tiktokHandle,
      String? pinterestHandle,
      String? youtubeHandle,
      String? snapchatHandle,
      String? linkedinHandle,
      String? spotifyHandle});
  SocialsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SocialsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SocialsModel, $Out>
    implements SocialsModelCopyWith<$R, SocialsModel, $Out> {
  _SocialsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SocialsModel> $mapper =
      SocialsModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? instagramHandle = $none,
          Object? facebookHandle = $none,
          Object? twitterHandle = $none,
          Object? tiktokHandle = $none,
          Object? pinterestHandle = $none,
          Object? youtubeHandle = $none,
          Object? snapchatHandle = $none,
          Object? linkedinHandle = $none,
          Object? spotifyHandle = $none}) =>
      $apply(FieldCopyWithData({
        if (instagramHandle != $none) #instagramHandle: instagramHandle,
        if (facebookHandle != $none) #facebookHandle: facebookHandle,
        if (twitterHandle != $none) #twitterHandle: twitterHandle,
        if (tiktokHandle != $none) #tiktokHandle: tiktokHandle,
        if (pinterestHandle != $none) #pinterestHandle: pinterestHandle,
        if (youtubeHandle != $none) #youtubeHandle: youtubeHandle,
        if (snapchatHandle != $none) #snapchatHandle: snapchatHandle,
        if (linkedinHandle != $none) #linkedinHandle: linkedinHandle,
        if (spotifyHandle != $none) #spotifyHandle: spotifyHandle
      }));
  @override
  SocialsModel $make(CopyWithData data) => SocialsModel(
      instagramHandle: data.get(#instagramHandle, or: $value.instagramHandle),
      facebookHandle: data.get(#facebookHandle, or: $value.facebookHandle),
      twitterHandle: data.get(#twitterHandle, or: $value.twitterHandle),
      tiktokHandle: data.get(#tiktokHandle, or: $value.tiktokHandle),
      pinterestHandle: data.get(#pinterestHandle, or: $value.pinterestHandle),
      youtubeHandle: data.get(#youtubeHandle, or: $value.youtubeHandle),
      snapchatHandle: data.get(#snapchatHandle, or: $value.snapchatHandle),
      linkedinHandle: data.get(#linkedinHandle, or: $value.linkedinHandle),
      spotifyHandle: data.get(#spotifyHandle, or: $value.spotifyHandle));

  @override
  SocialsModelCopyWith<$R2, SocialsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SocialsModelCopyWithImpl($value, $cast, t);
}
