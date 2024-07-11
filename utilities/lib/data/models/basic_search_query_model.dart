import "package:dart_mappable/dart_mappable.dart";

part "basic_search_query_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class BasicSearchQueryModel with BasicSearchQueryModelMappable {
  final String searchTerm;

  const BasicSearchQueryModel({
    required this.searchTerm,
  });

  static const fromMap = BasicSearchQueryModelMapper.fromMap;
  static const fromJson = BasicSearchQueryModelMapper.fromJson;
}
