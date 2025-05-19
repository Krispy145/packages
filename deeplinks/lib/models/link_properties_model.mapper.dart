// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'link_properties_model.dart';

class LinkPropertiesModelMapper extends ClassMapperBase<LinkPropertiesModel> {
  LinkPropertiesModelMapper._();

  static LinkPropertiesModelMapper? _instance;
  static LinkPropertiesModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LinkPropertiesModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LinkPropertiesModel';

  static List<String> _$tags(LinkPropertiesModel v) => v.tags;
  static const Field<LinkPropertiesModel, List<String>> _f$tags =
      Field('tags', _$tags, opt: true, def: const []);
  static String? _$feature(LinkPropertiesModel v) => v.feature;
  static const Field<LinkPropertiesModel, String> _f$feature =
      Field('feature', _$feature, opt: true);
  static String? _$alias(LinkPropertiesModel v) => v.alias;
  static const Field<LinkPropertiesModel, String> _f$alias =
      Field('alias', _$alias, opt: true);
  static String? _$stage(LinkPropertiesModel v) => v.stage;
  static const Field<LinkPropertiesModel, String> _f$stage =
      Field('stage', _$stage, opt: true);
  static Duration? _$matchDuration(LinkPropertiesModel v) => v.matchDuration;
  static const Field<LinkPropertiesModel, Duration> _f$matchDuration = Field(
      'matchDuration', _$matchDuration,
      key: r'match_duration', opt: true);
  static String? _$channel(LinkPropertiesModel v) => v.channel;
  static const Field<LinkPropertiesModel, String> _f$channel =
      Field('channel', _$channel, opt: true);
  static String? _$campaign(LinkPropertiesModel v) => v.campaign;
  static const Field<LinkPropertiesModel, String> _f$campaign =
      Field('campaign', _$campaign, opt: true);

  @override
  final MappableFields<LinkPropertiesModel> fields = const {
    #tags: _f$tags,
    #feature: _f$feature,
    #alias: _f$alias,
    #stage: _f$stage,
    #matchDuration: _f$matchDuration,
    #channel: _f$channel,
    #campaign: _f$campaign,
  };

  static LinkPropertiesModel _instantiate(DecodingData data) {
    return LinkPropertiesModel(
        tags: data.dec(_f$tags),
        feature: data.dec(_f$feature),
        alias: data.dec(_f$alias),
        stage: data.dec(_f$stage),
        matchDuration: data.dec(_f$matchDuration),
        channel: data.dec(_f$channel),
        campaign: data.dec(_f$campaign));
  }

  @override
  final Function instantiate = _instantiate;

  static LinkPropertiesModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LinkPropertiesModel>(map);
  }

  static LinkPropertiesModel fromJson(String json) {
    return ensureInitialized().decodeJson<LinkPropertiesModel>(json);
  }
}

mixin LinkPropertiesModelMappable {
  String toJson() {
    return LinkPropertiesModelMapper.ensureInitialized()
        .encodeJson<LinkPropertiesModel>(this as LinkPropertiesModel);
  }

  Map<String, dynamic> toMap() {
    return LinkPropertiesModelMapper.ensureInitialized()
        .encodeMap<LinkPropertiesModel>(this as LinkPropertiesModel);
  }

  LinkPropertiesModelCopyWith<LinkPropertiesModel, LinkPropertiesModel,
          LinkPropertiesModel>
      get copyWith => _LinkPropertiesModelCopyWithImpl(
          this as LinkPropertiesModel, $identity, $identity);
  @override
  String toString() {
    return LinkPropertiesModelMapper.ensureInitialized()
        .stringifyValue(this as LinkPropertiesModel);
  }

  @override
  bool operator ==(Object other) {
    return LinkPropertiesModelMapper.ensureInitialized()
        .equalsValue(this as LinkPropertiesModel, other);
  }

  @override
  int get hashCode {
    return LinkPropertiesModelMapper.ensureInitialized()
        .hashValue(this as LinkPropertiesModel);
  }
}

extension LinkPropertiesModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LinkPropertiesModel, $Out> {
  LinkPropertiesModelCopyWith<$R, LinkPropertiesModel, $Out>
      get $asLinkPropertiesModel =>
          $base.as((v, t, t2) => _LinkPropertiesModelCopyWithImpl(v, t, t2));
}

abstract class LinkPropertiesModelCopyWith<$R, $In extends LinkPropertiesModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags;
  $R call(
      {List<String>? tags,
      String? feature,
      String? alias,
      String? stage,
      Duration? matchDuration,
      String? channel,
      String? campaign});
  LinkPropertiesModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LinkPropertiesModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LinkPropertiesModel, $Out>
    implements LinkPropertiesModelCopyWith<$R, LinkPropertiesModel, $Out> {
  _LinkPropertiesModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LinkPropertiesModel> $mapper =
      LinkPropertiesModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get tags =>
      ListCopyWith($value.tags, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(tags: v));
  @override
  $R call(
          {List<String>? tags,
          Object? feature = $none,
          Object? alias = $none,
          Object? stage = $none,
          Object? matchDuration = $none,
          Object? channel = $none,
          Object? campaign = $none}) =>
      $apply(FieldCopyWithData({
        if (tags != null) #tags: tags,
        if (feature != $none) #feature: feature,
        if (alias != $none) #alias: alias,
        if (stage != $none) #stage: stage,
        if (matchDuration != $none) #matchDuration: matchDuration,
        if (channel != $none) #channel: channel,
        if (campaign != $none) #campaign: campaign
      }));
  @override
  LinkPropertiesModel $make(CopyWithData data) => LinkPropertiesModel(
      tags: data.get(#tags, or: $value.tags),
      feature: data.get(#feature, or: $value.feature),
      alias: data.get(#alias, or: $value.alias),
      stage: data.get(#stage, or: $value.stage),
      matchDuration: data.get(#matchDuration, or: $value.matchDuration),
      channel: data.get(#channel, or: $value.channel),
      campaign: data.get(#campaign, or: $value.campaign));

  @override
  LinkPropertiesModelCopyWith<$R2, LinkPropertiesModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _LinkPropertiesModelCopyWithImpl($value, $cast, t);
}
