import "package:dart_mappable/dart_mappable.dart";

import "price_item_model.dart";

part "session_data_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SessionDataModel with SessionDataModelMappable {
  final String successUrl;
  final String cancelUrl;
  final List<PriceItemModel> items;

  const SessionDataModel({
    required this.successUrl,
    required this.cancelUrl,
    required this.items,
  });

  static const fromMap = SessionDataModelMapper.fromMap;
  static const fromJson = SessionDataModelMapper.fromJson;
}
