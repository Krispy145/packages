import 'package:dart_mappable/dart_mappable.dart';

part 'place_review_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceReview with PlaceReviewMappable {
  final String authorName;
  final double rating;
  final String relativeTimeDescription;
  final double time;
  final String? authorUrl;
  final String? language;
  final String? originalLanguage;
  final String? profilePhotoUrl;
  final String? text;
  final bool? translated;

  const PlaceReview({
    required this.authorName,
    required this.rating,
    required this.relativeTimeDescription,
    required this.time,
    this.authorUrl,
    this.language,
    this.originalLanguage,
    this.profilePhotoUrl,
    this.text,
    this.translated,
  });

  static const fromMap = PlaceReviewMapper.fromMap;
  static const fromJson = PlaceReviewMapper.fromJson;
}
