import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/content_rating_model.dart";
import "package:youtube/data/models/region_restriction_model.dart";

part "content_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class ContentDetailsModel with ContentDetailsModelMappable {
  final String? videoId;
  final int? itemCount;
  final String? duration;
  final String? dimension;
  final String? definition;
  final String? caption;
  final bool? licensedContent;
  final RegionRestrictionModel? regionRestriction;
  final ContentRatingModel? contentRating;
  final String? projection;
  final bool? hasCustomThumbnail;

  ContentDetailsModel({
    this.videoId,
    this.itemCount,
    this.duration,
    this.dimension,
    this.definition,
    this.caption,
    this.licensedContent,
    this.regionRestriction,
    this.contentRating,
    this.projection,
    this.hasCustomThumbnail,
  });

  static const fromMap = ContentDetailsModelMapper.fromMap;
  static const fromJson = ContentDetailsModelMapper.fromJson;
}
