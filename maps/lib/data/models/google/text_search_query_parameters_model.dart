import 'package:dart_mappable/dart_mappable.dart';

part 'text_search_query_parameters_model.mapper.dart';

//TODO: Complete the subModels for the GooglePlacesModel: ref https://developers.google.com/maps/documentation/places/web-service/search-text#TextSearchRequests
@MappableClass(ignoreNull: true)
class GoogleTextSearchParameters with GoogleTextSearchParametersMappable {
  final String query;
  final String? radius;
  final String? language;
  final String? region;
  final String? location;
  final String? type;
  final String? openNow;
  final String? minPrice;
  final String? maxPrice;
  final String? keyword;
  final String? pageToken;

  const GoogleTextSearchParameters({
    required this.query,
    this.language,
    this.region,
    this.location,
    this.radius,
    this.type,
    this.openNow,
    this.minPrice,
    this.maxPrice,
    this.keyword,
    this.pageToken,
  });
}
