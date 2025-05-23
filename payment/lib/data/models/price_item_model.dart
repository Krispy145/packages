import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "price_item_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class PriceItemModel with PriceItemModelMappable {
  final UUID price;
  final int quantity;
  final String productType;
  final bool isSubscription;

  const PriceItemModel({
    required this.price,
    required this.quantity,
    required this.productType,
    required this.isSubscription,
  });

  static const fromMap = PriceItemModelMapper.fromMap;
  static const fromJson = PriceItemModelMapper.fromJson;
}
