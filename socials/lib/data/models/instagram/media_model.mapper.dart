// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_model.dart';

class InstagramMediaModelMapper extends ClassMapperBase<InstagramMediaModel> {
  InstagramMediaModelMapper._();

  static InstagramMediaModelMapper? _instance;
  static InstagramMediaModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramMediaModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramMediaModel';

  static String _$id(InstagramMediaModel v) => v.id;
  static const Field<InstagramMediaModel, String> _f$id = Field('id', _$id);
  static String? _$username(InstagramMediaModel v) => v.username;
  static const Field<InstagramMediaModel, String> _f$username =
      Field('username', _$username, opt: true);
  static String? _$caption(InstagramMediaModel v) => v.caption;
  static const Field<InstagramMediaModel, String> _f$caption =
      Field('caption', _$caption, opt: true);
  static String? _$mediaType(InstagramMediaModel v) => v.mediaType;
  static const Field<InstagramMediaModel, String> _f$mediaType =
      Field('mediaType', _$mediaType, key: 'media_type', opt: true);
  static String? _$mediaUrl(InstagramMediaModel v) => v.mediaUrl;
  static const Field<InstagramMediaModel, String> _f$mediaUrl =
      Field('mediaUrl', _$mediaUrl, key: 'media_url', opt: true);
  static String? _$thumbnailUrl(InstagramMediaModel v) => v.thumbnailUrl;
  static const Field<InstagramMediaModel, String> _f$thumbnailUrl =
      Field('thumbnailUrl', _$thumbnailUrl, key: 'thumbnail_url', opt: true);
  static String? _$permalink(InstagramMediaModel v) => v.permalink;
  static const Field<InstagramMediaModel, String> _f$permalink =
      Field('permalink', _$permalink, opt: true);
  static String? _$timestamp(InstagramMediaModel v) => v.timestamp;
  static const Field<InstagramMediaModel, String> _f$timestamp =
      Field('timestamp', _$timestamp, opt: true);

  @override
  final MappableFields<InstagramMediaModel> fields = const {
    #id: _f$id,
    #username: _f$username,
    #caption: _f$caption,
    #mediaType: _f$mediaType,
    #mediaUrl: _f$mediaUrl,
    #thumbnailUrl: _f$thumbnailUrl,
    #permalink: _f$permalink,
    #timestamp: _f$timestamp,
  };

  static InstagramMediaModel _instantiate(DecodingData data) {
    return InstagramMediaModel(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        caption: data.dec(_f$caption),
        mediaType: data.dec(_f$mediaType),
        mediaUrl: data.dec(_f$mediaUrl),
        thumbnailUrl: data.dec(_f$thumbnailUrl),
        permalink: data.dec(_f$permalink),
        timestamp: data.dec(_f$timestamp));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramMediaModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramMediaModel>(map);
  }

  static InstagramMediaModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramMediaModel>(json);
  }
}

mixin InstagramMediaModelMappable {
  String toJson() {
    return InstagramMediaModelMapper.ensureInitialized()
        .encodeJson<InstagramMediaModel>(this as InstagramMediaModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramMediaModelMapper.ensureInitialized()
        .encodeMap<InstagramMediaModel>(this as InstagramMediaModel);
  }

  InstagramMediaModelCopyWith<InstagramMediaModel, InstagramMediaModel,
          InstagramMediaModel>
      get copyWith => _InstagramMediaModelCopyWithImpl(
          this as InstagramMediaModel, $identity, $identity);
  @override
  String toString() {
    return InstagramMediaModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramMediaModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramMediaModelMapper.ensureInitialized()
        .equalsValue(this as InstagramMediaModel, other);
  }

  @override
  int get hashCode {
    return InstagramMediaModelMapper.ensureInitialized()
        .hashValue(this as InstagramMediaModel);
  }
}

extension InstagramMediaModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramMediaModel, $Out> {
  InstagramMediaModelCopyWith<$R, InstagramMediaModel, $Out>
      get $asInstagramMediaModel =>
          $base.as((v, t, t2) => _InstagramMediaModelCopyWithImpl(v, t, t2));
}

abstract class InstagramMediaModelCopyWith<$R, $In extends InstagramMediaModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? username,
      String? caption,
      String? mediaType,
      String? mediaUrl,
      String? thumbnailUrl,
      String? permalink,
      String? timestamp});
  InstagramMediaModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramMediaModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramMediaModel, $Out>
    implements InstagramMediaModelCopyWith<$R, InstagramMediaModel, $Out> {
  _InstagramMediaModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramMediaModel> $mapper =
      InstagramMediaModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          Object? username = $none,
          Object? caption = $none,
          Object? mediaType = $none,
          Object? mediaUrl = $none,
          Object? thumbnailUrl = $none,
          Object? permalink = $none,
          Object? timestamp = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (username != $none) #username: username,
        if (caption != $none) #caption: caption,
        if (mediaType != $none) #mediaType: mediaType,
        if (mediaUrl != $none) #mediaUrl: mediaUrl,
        if (thumbnailUrl != $none) #thumbnailUrl: thumbnailUrl,
        if (permalink != $none) #permalink: permalink,
        if (timestamp != $none) #timestamp: timestamp
      }));
  @override
  InstagramMediaModel $make(CopyWithData data) => InstagramMediaModel(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      caption: data.get(#caption, or: $value.caption),
      mediaType: data.get(#mediaType, or: $value.mediaType),
      mediaUrl: data.get(#mediaUrl, or: $value.mediaUrl),
      thumbnailUrl: data.get(#thumbnailUrl, or: $value.thumbnailUrl),
      permalink: data.get(#permalink, or: $value.permalink),
      timestamp: data.get(#timestamp, or: $value.timestamp));

  @override
  InstagramMediaModelCopyWith<$R2, InstagramMediaModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramMediaModelCopyWithImpl($value, $cast, t);
}
