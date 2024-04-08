// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'duration_model.freezed.dart';
part 'duration_model.g.dart';

@freezed
class DurationModel with _$DurationModel {
  const factory DurationModel({
    @Default(0) final int days_int,
    @Default(0) final int hours_int,
    @Default(0) final int minutes_int,
    @Default(0) final int seconds_int,
    @Default(0) final int milliseconds_int,
    @Default(0) final int microseconds_int,
  }) = _DurationModel;

  const DurationModel._();

  factory DurationModel.fromJson(Map<String, dynamic> json) => _$DurationModelFromJson(json);

  Duration? asDuration({String? styleTypeName}) {
    return Duration(
      days: days_int,
      hours: hours_int,
      minutes: minutes_int,
      seconds: seconds_int,
      milliseconds: milliseconds_int,
      microseconds: microseconds_int,
    );
  }
}
