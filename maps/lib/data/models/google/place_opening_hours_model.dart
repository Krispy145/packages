import 'package:dart_mappable/dart_mappable.dart';

import 'place_opening_hours_period_model.dart';
import 'place_special_day_model.dart';

part 'place_opening_hours_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceOpeningHours with PlaceOpeningHoursMappable {
  final bool? openNow;
  final List<PlaceOpeningHoursPeriod>? periods;
  final List<PlaceSpecialDay>? specialDays;
  final String? type;
  final List<String>? weekdayText;

  const PlaceOpeningHours({
    this.openNow,
    this.periods,
    this.specialDays,
    this.type,
    this.weekdayText,
  });

  static const fromMap = PlaceOpeningHoursMapper.fromMap;
  static const fromJson = PlaceOpeningHoursMapper.fromJson;
}
