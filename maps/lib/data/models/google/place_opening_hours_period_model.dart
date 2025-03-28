import "package:dart_mappable/dart_mappable.dart";

import "place_opening_hours_time_model.dart";

part "place_opening_hours_period_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceOpeningHoursPeriod with PlaceOpeningHoursPeriodMappable {
  final PlaceOpeningHoursTime? close;
  final PlaceOpeningHoursTime? open;

  const PlaceOpeningHoursPeriod({
    this.close,
    this.open,
  });

  static const fromMap = PlaceOpeningHoursPeriodMapper.fromMap;
  static const fromJson = PlaceOpeningHoursPeriodMapper.fromJson;
}
