// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'topic_details_model.dart';

class TopicDetailsModelMapper extends ClassMapperBase<TopicDetailsModel> {
  TopicDetailsModelMapper._();

  static TopicDetailsModelMapper? _instance;
  static TopicDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TopicDetailsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TopicDetailsModel';

  static List<String>? _$topicIds(TopicDetailsModel v) => v.topicIds;
  static const Field<TopicDetailsModel, List<String>> _f$topicIds =
      Field('topicIds', _$topicIds, key: 'topic_ids', opt: true);
  static List<String>? _$relevantTopicIds(TopicDetailsModel v) =>
      v.relevantTopicIds;
  static const Field<TopicDetailsModel, List<String>> _f$relevantTopicIds =
      Field('relevantTopicIds', _$relevantTopicIds,
          key: 'relevant_topic_ids', opt: true);
  static List<String>? _$topicCategories(TopicDetailsModel v) =>
      v.topicCategories;
  static const Field<TopicDetailsModel, List<String>> _f$topicCategories =
      Field('topicCategories', _$topicCategories,
          key: 'topic_categories', opt: true);

  @override
  final MappableFields<TopicDetailsModel> fields = const {
    #topicIds: _f$topicIds,
    #relevantTopicIds: _f$relevantTopicIds,
    #topicCategories: _f$topicCategories,
  };

  static TopicDetailsModel _instantiate(DecodingData data) {
    return TopicDetailsModel(
        topicIds: data.dec(_f$topicIds),
        relevantTopicIds: data.dec(_f$relevantTopicIds),
        topicCategories: data.dec(_f$topicCategories));
  }

  @override
  final Function instantiate = _instantiate;

  static TopicDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TopicDetailsModel>(map);
  }

  static TopicDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<TopicDetailsModel>(json);
  }
}

mixin TopicDetailsModelMappable {
  String toJson() {
    return TopicDetailsModelMapper.ensureInitialized()
        .encodeJson<TopicDetailsModel>(this as TopicDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return TopicDetailsModelMapper.ensureInitialized()
        .encodeMap<TopicDetailsModel>(this as TopicDetailsModel);
  }

  TopicDetailsModelCopyWith<TopicDetailsModel, TopicDetailsModel,
          TopicDetailsModel>
      get copyWith => _TopicDetailsModelCopyWithImpl(
          this as TopicDetailsModel, $identity, $identity);
  @override
  String toString() {
    return TopicDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as TopicDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return TopicDetailsModelMapper.ensureInitialized()
        .equalsValue(this as TopicDetailsModel, other);
  }

  @override
  int get hashCode {
    return TopicDetailsModelMapper.ensureInitialized()
        .hashValue(this as TopicDetailsModel);
  }
}

extension TopicDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TopicDetailsModel, $Out> {
  TopicDetailsModelCopyWith<$R, TopicDetailsModel, $Out>
      get $asTopicDetailsModel =>
          $base.as((v, t, t2) => _TopicDetailsModelCopyWithImpl(v, t, t2));
}

abstract class TopicDetailsModelCopyWith<$R, $In extends TopicDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get topicIds;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get relevantTopicIds;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get topicCategories;
  $R call(
      {List<String>? topicIds,
      List<String>? relevantTopicIds,
      List<String>? topicCategories});
  TopicDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TopicDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TopicDetailsModel, $Out>
    implements TopicDetailsModelCopyWith<$R, TopicDetailsModel, $Out> {
  _TopicDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TopicDetailsModel> $mapper =
      TopicDetailsModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get topicIds =>
      $value.topicIds != null
          ? ListCopyWith(
              $value.topicIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(topicIds: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get relevantTopicIds => $value.relevantTopicIds != null
          ? ListCopyWith(
              $value.relevantTopicIds!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(relevantTopicIds: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get topicCategories => $value.topicCategories != null
          ? ListCopyWith(
              $value.topicCategories!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(topicCategories: v))
          : null;
  @override
  $R call(
          {Object? topicIds = $none,
          Object? relevantTopicIds = $none,
          Object? topicCategories = $none}) =>
      $apply(FieldCopyWithData({
        if (topicIds != $none) #topicIds: topicIds,
        if (relevantTopicIds != $none) #relevantTopicIds: relevantTopicIds,
        if (topicCategories != $none) #topicCategories: topicCategories
      }));
  @override
  TopicDetailsModel $make(CopyWithData data) => TopicDetailsModel(
      topicIds: data.get(#topicIds, or: $value.topicIds),
      relevantTopicIds:
          data.get(#relevantTopicIds, or: $value.relevantTopicIds),
      topicCategories: data.get(#topicCategories, or: $value.topicCategories));

  @override
  TopicDetailsModelCopyWith<$R2, TopicDetailsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TopicDetailsModelCopyWithImpl($value, $cast, t);
}
