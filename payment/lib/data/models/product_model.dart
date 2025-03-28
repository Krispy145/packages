import "package:dart_mappable/dart_mappable.dart";

part "product_model.mapper.dart";

@MappableClass()
class ProductModel with ProductModelMappable {
  final String id;
  final String name;
  final String? description;
  final bool active;
  final Map<String, String>? metadata;
  final String? type;
  final DateTime? created;
  final DateTime? updated;

  const ProductModel({
    required this.id,
    required this.name,
    this.description,
    this.active = false,
    this.metadata,
    this.type,
    this.created,
    this.updated,
  });

  static const fromMap = ProductModelMapper.fromMap;
  static const fromJson = ProductModelMapper.fromJson;
}
