import 'package:dart_mappable/dart_mappable.dart';

import 'place_model.dart';

part 'text_search_responses_model.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.upperSnakeCase)
enum GoogleResponseStatus {
  ok,
  zeroResults,
  invalidRequest,
  overQueryLimit,
  requestDenied,
  unknownError,
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class GoogleResponsesModel with GoogleResponsesModelMappable {
  final List<String> htmlAttributions;
  final String? nextPageToken;
  final List<GooglePlace>? results;
  final GooglePlace? result;
  final GoogleResponseStatus status;
  final String? errorMessage;
  final List<String>? infoMessages;

  GoogleResponsesModel({
    required this.htmlAttributions,
    required this.nextPageToken,
    this.results,
    this.result,
    required this.status,
    required this.errorMessage,
    required this.infoMessages,
  });
}

// @MappableClass(caseStyle: CaseStyle.snakeCase)
// class GoogleResponseModel with GoogleResponseModelMappable {
//   final List<String> htmlAttributions;
//   final String? nextPageToken;
//   final GooglePlace result;
//   final GoogleResponseStatus status;
//   final String? errorMessage;
//   final List<String>? infoMessages;

//   GoogleResponseModel({
//     required this.htmlAttributions,
//     required this.nextPageToken,
//     required this.result,
//     required this.status,
//     required this.errorMessage,
//     required this.infoMessages,
//   });
// }
