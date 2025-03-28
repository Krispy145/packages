import "package:dart_mappable/dart_mappable.dart";

part "price_model.mapper.dart";

@MappableClass()
class PriceModel with PriceModelMappable {
  final String id;
  final String product;
  final int unitAmount;
  final String currency;
  final bool active;
  final String? description;
  final Map<String, String>? metadata;
  final bool recurring;
  final String? interval;
  final int? intervalCount;
  final DateTime? created;
  final DateTime? updated;

  const PriceModel({
    required this.id,
    required this.product,
    required this.unitAmount,
    required this.currency,
    this.active = false,
    this.description,
    this.metadata,
    this.recurring = false,
    this.interval,
    this.intervalCount,
    this.created,
    this.updated,
  });

  static const fromMap = PriceModelMapper.fromMap;
  static const fromJson = PriceModelMapper.fromJson;
}
