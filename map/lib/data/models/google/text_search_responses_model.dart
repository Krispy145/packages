import 'package:dart_mappable/dart_mappable.dart';

import 'place_model.dart';

part 'text_search_responses_model.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.upperSnakeCase)
enum GooglePlaceSearchStatus {
  ok,
  zeroResults,
  invalidRequest,
  overQueryLimit,
  requestDenied,
  unknownError,
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GoogleTextSearchResponsesModel
    with GoogleTextSearchResponsesModelMappable {
  final List<String> htmlAttributions;
  final String? nextPageToken;
  final List<GooglePlace> results;
  final GooglePlaceSearchStatus status;
  final String? errorMessage;
  final List<String>? infoMessages;

  GoogleTextSearchResponsesModel({
    required this.htmlAttributions,
    required this.nextPageToken,
    required this.results,
    required this.status,
    required this.errorMessage,
    required this.infoMessages,
  });
}
