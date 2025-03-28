import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "price_item_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PriceItemModel with PriceItemModelMappable {
  final UUID price;
  final int quantity;

  const PriceItemModel({
    required this.price,
    required this.quantity,
  });

  static const fromMap = PriceItemModelMapper.fromMap;
  static const fromJson = PriceItemModelMapper.fromJson;
}
