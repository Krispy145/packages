import 'package:dart_mappable/dart_mappable.dart';

part 'place_address_component_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceAddressComponent with PlaceAddressComponentMappable {
  final String longName;
  final String shortName;
  final List<String> types;

  const PlaceAddressComponent({
    required this.longName,
    required this.shortName,
    required this.types,
  });

  static const fromMap = PlaceAddressComponentMapper.fromMap;
  static const fromJson = PlaceAddressComponentMapper.fromJson;
}
