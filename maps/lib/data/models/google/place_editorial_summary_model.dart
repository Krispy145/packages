import 'package:dart_mappable/dart_mappable.dart';

part 'place_editorial_summary_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceEditorialSummary with PlaceEditorialSummaryMappable {
  final String? language;
  final String? overview;

  const PlaceEditorialSummary({
    this.language,
    this.overview,
  });
}
