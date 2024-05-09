import "package:dart_mappable/dart_mappable.dart";

part "search_query_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SearchQueryModel with SearchQueryModelMappable {
  final String? searchTerm;

  SearchQueryModel({
    this.searchTerm,
  });

  static const fromMap = SearchQueryModelMapper.fromMap;
  static const fromJson = SearchQueryModelMapper.fromJson;
}
