import 'package:dart_mappable/dart_mappable.dart';

part 'place_special_day_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceSpecialDay with PlaceSpecialDayMappable {
  final String? date;
  final bool? exceptionalHours;

  const PlaceSpecialDay({
    this.date,
    this.exceptionalHours,
  });

  static const fromMap = PlaceSpecialDayMapper.fromMap;
  static const fromJson = PlaceSpecialDayMapper.fromJson;
}
