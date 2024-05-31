// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'content_details_model.dart';

class ContentDetailsModelMapper extends ClassMapperBase<ContentDetailsModel> {
  ContentDetailsModelMapper._();

  static ContentDetailsModelMapper? _instance;
  static ContentDetailsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ContentDetailsModelMapper._());
      RegionRestrictionModelMapper.ensureInitialized();
      ContentRatingModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ContentDetailsModel';

  static String? _$videoId(ContentDetailsModel v) => v.videoId;
  static const Field<ContentDetailsModel, String> _f$videoId =
      Field('videoId', _$videoId, opt: true);
  static int? _$itemCount(ContentDetailsModel v) => v.itemCount;
  static const Field<ContentDetailsModel, int> _f$itemCount =
      Field('itemCount', _$itemCount, opt: true);
  static String? _$duration(ContentDetailsModel v) => v.duration;
  static const Field<ContentDetailsModel, String> _f$duration =
      Field('duration', _$duration, opt: true);
  static String? _$dimension(ContentDetailsModel v) => v.dimension;
  static const Field<ContentDetailsModel, String> _f$dimension =
      Field('dimension', _$dimension, opt: true);
  static String? _$definition(ContentDetailsModel v) => v.definition;
  static const Field<ContentDetailsModel, String> _f$definition =
      Field('definition', _$definition, opt: true);
  static String? _$caption(ContentDetailsModel v) => v.caption;
  static const Field<ContentDetailsModel, String> _f$caption =
      Field('caption', _$caption, opt: true);
  static bool? _$licensedContent(ContentDetailsModel v) => v.licensedContent;
  static const Field<ContentDetailsModel, bool> _f$licensedContent =
      Field('licensedContent', _$licensedContent, opt: true);
  static RegionRestrictionModel? _$regionRestriction(ContentDetailsModel v) =>
      v.regionRestriction;
  static const Field<ContentDetailsModel, RegionRestrictionModel>
      _f$regionRestriction =
      Field('regionRestriction', _$regionRestriction, opt: true);
  static ContentRatingModel? _$contentRating(ContentDetailsModel v) =>
      v.contentRating;
  static const Field<ContentDetailsModel, ContentRatingModel> _f$contentRating =
      Field('contentRating', _$contentRating, opt: true);
  static String? _$projection(ContentDetailsModel v) => v.projection;
  static const Field<ContentDetailsModel, String> _f$projection =
      Field('projection', _$projection, opt: true);
  static bool? _$hasCustomThumbnail(ContentDetailsModel v) =>
      v.hasCustomThumbnail;
  static const Field<ContentDetailsModel, bool> _f$hasCustomThumbnail =
      Field('hasCustomThumbnail', _$hasCustomThumbnail, opt: true);
  static DateTime? _$videoPublishedAt(ContentDetailsModel v) =>
      v.videoPublishedAt;
  static const Field<ContentDetailsModel, DateTime> _f$videoPublishedAt =
      Field('videoPublishedAt', _$videoPublishedAt, opt: true);

  @override
  final MappableFields<ContentDetailsModel> fields = const {
    #videoId: _f$videoId,
    #itemCount: _f$itemCount,
    #duration: _f$duration,
    #dimension: _f$dimension,
    #definition: _f$definition,
    #caption: _f$caption,
    #licensedContent: _f$licensedContent,
    #regionRestriction: _f$regionRestriction,
    #contentRating: _f$contentRating,
    #projection: _f$projection,
    #hasCustomThumbnail: _f$hasCustomThumbnail,
    #videoPublishedAt: _f$videoPublishedAt,
  };

  static ContentDetailsModel _instantiate(DecodingData data) {
    return ContentDetailsModel(
        videoId: data.dec(_f$videoId),
        itemCount: data.dec(_f$itemCount),
        duration: data.dec(_f$duration),
        dimension: data.dec(_f$dimension),
        definition: data.dec(_f$definition),
        caption: data.dec(_f$caption),
        licensedContent: data.dec(_f$licensedContent),
        regionRestriction: data.dec(_f$regionRestriction),
        contentRating: data.dec(_f$contentRating),
        projection: data.dec(_f$projection),
        hasCustomThumbnail: data.dec(_f$hasCustomThumbnail),
        videoPublishedAt: data.dec(_f$videoPublishedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ContentDetailsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ContentDetailsModel>(map);
  }

  static ContentDetailsModel fromJson(String json) {
    return ensureInitialized().decodeJson<ContentDetailsModel>(json);
  }
}

mixin ContentDetailsModelMappable {
  String toJson() {
    return ContentDetailsModelMapper.ensureInitialized()
        .encodeJson<ContentDetailsModel>(this as ContentDetailsModel);
  }

  Map<String, dynamic> toMap() {
    return ContentDetailsModelMapper.ensureInitialized()
        .encodeMap<ContentDetailsModel>(this as ContentDetailsModel);
  }

  ContentDetailsModelCopyWith<ContentDetailsModel, ContentDetailsModel,
          ContentDetailsModel>
      get copyWith => _ContentDetailsModelCopyWithImpl(
          this as ContentDetailsModel, $identity, $identity);
  @override
  String toString() {
    return ContentDetailsModelMapper.ensureInitialized()
        .stringifyValue(this as ContentDetailsModel);
  }

  @override
  bool operator ==(Object other) {
    return ContentDetailsModelMapper.ensureInitialized()
        .equalsValue(this as ContentDetailsModel, other);
  }

  @override
  int get hashCode {
    return ContentDetailsModelMapper.ensureInitialized()
        .hashValue(this as ContentDetailsModel);
  }
}

extension ContentDetailsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ContentDetailsModel, $Out> {
  ContentDetailsModelCopyWith<$R, ContentDetailsModel, $Out>
      get $asContentDetailsModel =>
          $base.as((v, t, t2) => _ContentDetailsModelCopyWithImpl(v, t, t2));
}

abstract class ContentDetailsModelCopyWith<$R, $In extends ContentDetailsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  RegionRestrictionModelCopyWith<$R, RegionRestrictionModel,
      RegionRestrictionModel>? get regionRestriction;
  ContentRatingModelCopyWith<$R, ContentRatingModel, ContentRatingModel>?
      get contentRating;
  $R call(
      {String? videoId,
      int? itemCount,
      String? duration,
      String? dimension,
      String? definition,
      String? caption,
      bool? licensedContent,
      RegionRestrictionModel? regionRestriction,
      ContentRatingModel? contentRating,
      String? projection,
      bool? hasCustomThumbnail,
      DateTime? videoPublishedAt});
  ContentDetailsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ContentDetailsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ContentDetailsModel, $Out>
    implements ContentDetailsModelCopyWith<$R, ContentDetailsModel, $Out> {
  _ContentDetailsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ContentDetailsModel> $mapper =
      ContentDetailsModelMapper.ensureInitialized();
  @override
  RegionRestrictionModelCopyWith<$R, RegionRestrictionModel,
          RegionRestrictionModel>?
      get regionRestriction => $value.regionRestriction?.copyWith
          .$chain((v) => call(regionRestriction: v));
  @override
  ContentRatingModelCopyWith<$R, ContentRatingModel, ContentRatingModel>?
      get contentRating =>
          $value.contentRating?.copyWith.$chain((v) => call(contentRating: v));
  @override
  $R call(
          {Object? videoId = $none,
          Object? itemCount = $none,
          Object? duration = $none,
          Object? dimension = $none,
          Object? definition = $none,
          Object? caption = $none,
          Object? licensedContent = $none,
          Object? regionRestriction = $none,
          Object? contentRating = $none,
          Object? projection = $none,
          Object? hasCustomThumbnail = $none,
          Object? videoPublishedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (videoId != $none) #videoId: videoId,
        if (itemCount != $none) #itemCount: itemCount,
        if (duration != $none) #duration: duration,
        if (dimension != $none) #dimension: dimension,
        if (definition != $none) #definition: definition,
        if (caption != $none) #caption: caption,
        if (licensedContent != $none) #licensedContent: licensedContent,
        if (regionRestriction != $none) #regionRestriction: regionRestriction,
        if (contentRating != $none) #contentRating: contentRating,
        if (projection != $none) #projection: projection,
        if (hasCustomThumbnail != $none)
          #hasCustomThumbnail: hasCustomThumbnail,
        if (videoPublishedAt != $none) #videoPublishedAt: videoPublishedAt
      }));
  @override
  ContentDetailsModel $make(CopyWithData data) => ContentDetailsModel(
      videoId: data.get(#videoId, or: $value.videoId),
      itemCount: data.get(#itemCount, or: $value.itemCount),
      duration: data.get(#duration, or: $value.duration),
      dimension: data.get(#dimension, or: $value.dimension),
      definition: data.get(#definition, or: $value.definition),
      caption: data.get(#caption, or: $value.caption),
      licensedContent: data.get(#licensedContent, or: $value.licensedContent),
      regionRestriction:
          data.get(#regionRestriction, or: $value.regionRestriction),
      contentRating: data.get(#contentRating, or: $value.contentRating),
      projection: data.get(#projection, or: $value.projection),
      hasCustomThumbnail:
          data.get(#hasCustomThumbnail, or: $value.hasCustomThumbnail),
      videoPublishedAt:
          data.get(#videoPublishedAt, or: $value.videoPublishedAt));

  @override
  ContentDetailsModelCopyWith<$R2, ContentDetailsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ContentDetailsModelCopyWithImpl($value, $cast, t);
}
