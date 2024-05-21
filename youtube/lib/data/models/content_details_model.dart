//

// part 'content_details_model.freezed.dart';
// part 'content_details_model.g.dart';

// /// [PlaylistContentDetailsModel] is a class that represents the content details model.
// @mappable
// class PlaylistContentDetailsModel with _$PlaylistContentDetailsModel {
//   /// [PlaylistContentDetailsModel] constructor.
//   factory PlaylistContentDetailsModel({
//     int? itemCount,
//   }) = _PlaylistContentDetailsModel;

//   /// [ContentDetailsModel.fromJson] factory constructor.
//   factory PlaylistContentDetailsModel.fromJson(Map<String, dynamic> json) =>
//       _$PlaylistContentDetailsModelFromJson(json);
// }

import "package:dart_mappable/dart_mappable.dart";
import "package:youtube/data/models/content_rating_model.dart";
import "package:youtube/data/models/region_restriction_model.dart";

part "content_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ContentDetailsModel with ContentDetailsModelMappable {
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

  // static const empty = ContentDetailsModel(itemCount: null);

  // static const contentDetailsOne = ContentDetailsModel();
}
