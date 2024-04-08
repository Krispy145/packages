// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.freezed.dart';
part 'duration_model.g.dart';

@freezed
class DurationModel with _$DurationModel {
  const factory DurationModel({
    final int? days_int,
    final int? hours_int,
    final int? minutes_int,
    final int? seconds_int,
    final int? milliseconds_int,
    final int? microseconds_int,
  }) = _DurationModel;

  const DurationModel._();

  factory DurationModel.fromJson(Map<String, dynamic> json) => _$DurationModelFromJson(json);

  Duration? asDuration({String? styleTypeName}) {
    return Duration(
      days: days_int ?? 0,
      hours: hours_int ?? 0,
      minutes: minutes_int ?? 0,
      seconds: seconds_int ?? 0,
      milliseconds: milliseconds_int ?? 0,
      microseconds: microseconds_int ?? 0,
    );
  }
}
