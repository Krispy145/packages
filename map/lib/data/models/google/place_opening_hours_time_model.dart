import 'package:dart_mappable/dart_mappable.dart';

part 'place_opening_hours_time_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PlaceOpeningHoursTime with PlaceOpeningHoursTimeMappable {
  final double day;
  final String time;
  final String? date;
  final bool? truncated;

  const PlaceOpeningHoursTime({
    required this.day,
    required this.time,
    this.date,
    this.truncated,
  });
}
