// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'statistics_model.dart';

class StatisticsModelMapper extends ClassMapperBase<StatisticsModel> {
  StatisticsModelMapper._();

  static StatisticsModelMapper? _instance;
  static StatisticsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StatisticsModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'StatisticsModel';

  static String? _$viewCount(StatisticsModel v) => v.viewCount;
  static const Field<StatisticsModel, String> _f$viewCount =
      Field('viewCount', _$viewCount, key: 'view_count', opt: true);
  static String? _$likeCount(StatisticsModel v) => v.likeCount;
  static const Field<StatisticsModel, String> _f$likeCount =
      Field('likeCount', _$likeCount, key: 'like_count', opt: true);
  static String? _$dislikeCount(StatisticsModel v) => v.dislikeCount;
  static const Field<StatisticsModel, String> _f$dislikeCount =
      Field('dislikeCount', _$dislikeCount, key: 'dislike_count', opt: true);
  static String? _$favoriteCount(StatisticsModel v) => v.favoriteCount;
  static const Field<StatisticsModel, String> _f$favoriteCount =
      Field('favoriteCount', _$favoriteCount, key: 'favorite_count', opt: true);
  static String? _$commentCount(StatisticsModel v) => v.commentCount;
  static const Field<StatisticsModel, String> _f$commentCount =
      Field('commentCount', _$commentCount, key: 'comment_count', opt: true);

  @override
  final MappableFields<StatisticsModel> fields = const {
    #viewCount: _f$viewCount,
    #likeCount: _f$likeCount,
    #dislikeCount: _f$dislikeCount,
    #favoriteCount: _f$favoriteCount,
    #commentCount: _f$commentCount,
  };

  static StatisticsModel _instantiate(DecodingData data) {
    return StatisticsModel(
        viewCount: data.dec(_f$viewCount),
        likeCount: data.dec(_f$likeCount),
        dislikeCount: data.dec(_f$dislikeCount),
        favoriteCount: data.dec(_f$favoriteCount),
        commentCount: data.dec(_f$commentCount));
  }

  @override
  final Function instantiate = _instantiate;

  static StatisticsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StatisticsModel>(map);
  }

  static StatisticsModel fromJson(String json) {
    return ensureInitialized().decodeJson<StatisticsModel>(json);
  }
}

mixin StatisticsModelMappable {
  String toJson() {
    return StatisticsModelMapper.ensureInitialized()
        .encodeJson<StatisticsModel>(this as StatisticsModel);
  }

  Map<String, dynamic> toMap() {
    return StatisticsModelMapper.ensureInitialized()
        .encodeMap<StatisticsModel>(this as StatisticsModel);
  }

  StatisticsModelCopyWith<StatisticsModel, StatisticsModel, StatisticsModel>
      get copyWith => _StatisticsModelCopyWithImpl(
          this as StatisticsModel, $identity, $identity);
  @override
  String toString() {
    return StatisticsModelMapper.ensureInitialized()
        .stringifyValue(this as StatisticsModel);
  }

  @override
  bool operator ==(Object other) {
    return StatisticsModelMapper.ensureInitialized()
        .equalsValue(this as StatisticsModel, other);
  }

  @override
  int get hashCode {
    return StatisticsModelMapper.ensureInitialized()
        .hashValue(this as StatisticsModel);
  }
}

extension StatisticsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StatisticsModel, $Out> {
  StatisticsModelCopyWith<$R, StatisticsModel, $Out> get $asStatisticsModel =>
      $base.as((v, t, t2) => _StatisticsModelCopyWithImpl(v, t, t2));
}

abstract class StatisticsModelCopyWith<$R, $In extends StatisticsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? viewCount,
      String? likeCount,
      String? dislikeCount,
      String? favoriteCount,
      String? commentCount});
  StatisticsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _StatisticsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StatisticsModel, $Out>
    implements StatisticsModelCopyWith<$R, StatisticsModel, $Out> {
  _StatisticsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StatisticsModel> $mapper =
      StatisticsModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? viewCount = $none,
          Object? likeCount = $none,
          Object? dislikeCount = $none,
          Object? favoriteCount = $none,
          Object? commentCount = $none}) =>
      $apply(FieldCopyWithData({
        if (viewCount != $none) #viewCount: viewCount,
        if (likeCount != $none) #likeCount: likeCount,
        if (dislikeCount != $none) #dislikeCount: dislikeCount,
        if (favoriteCount != $none) #favoriteCount: favoriteCount,
        if (commentCount != $none) #commentCount: commentCount
      }));
  @override
  StatisticsModel $make(CopyWithData data) => StatisticsModel(
      viewCount: data.get(#viewCount, or: $value.viewCount),
      likeCount: data.get(#likeCount, or: $value.likeCount),
      dislikeCount: data.get(#dislikeCount, or: $value.dislikeCount),
      favoriteCount: data.get(#favoriteCount, or: $value.favoriteCount),
      commentCount: data.get(#commentCount, or: $value.commentCount));

  @override
  StatisticsModelCopyWith<$R2, StatisticsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StatisticsModelCopyWithImpl($value, $cast, t);
}
