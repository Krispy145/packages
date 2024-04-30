import 'package:dart_mappable/dart_mappable.dart';

part 'place_plus_code_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlacePlusCode with PlacePlusCodeMappable {
  final String globalCode;
  final String? compoundCode;

  const PlacePlusCode({
    required this.globalCode,
    this.compoundCode,
  });

  static const fromMap = PlacePlusCodeMapper.fromMap;
  static const fromJson = PlacePlusCodeMapper.fromJson;
}
