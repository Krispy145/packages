// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DurationModelImpl _$$DurationModelImplFromJson(Map<String, dynamic> json) =>
    _$DurationModelImpl(
      days_int: json['days_int'] as int? ?? 0,
      hours_int: json['hours_int'] as int? ?? 0,
      minutes_int: json['minutes_int'] as int? ?? 0,
      seconds_int: json['seconds_int'] as int? ?? 0,
      milliseconds_int: json['milliseconds_int'] as int? ?? 0,
      microseconds_int: json['microseconds_int'] as int? ?? 0,
    );

Map<String, dynamic> _$$DurationModelImplToJson(_$DurationModelImpl instance) =>
    <String, dynamic>{
      'days_int': instance.days_int,
      'hours_int': instance.hours_int,
      'minutes_int': instance.minutes_int,
      'seconds_int': instance.seconds_int,
      'milliseconds_int': instance.milliseconds_int,
      'microseconds_int': instance.microseconds_int,
    };
