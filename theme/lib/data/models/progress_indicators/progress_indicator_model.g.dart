// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_indicator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressIndicatorModelImpl _$$ProgressIndicatorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressIndicatorModelImpl(
      color: json['color'] as String?,
      linearTrackColor: json['linearTrackColor'] as String?,
      linearMinHeight: (json['linearMinHeight'] as num?)?.toDouble(),
      circularTrackColor: json['circularTrackColor'] as String?,
      refreshBackgroundColor: json['refreshBackgroundColor'] as String?,
    );

Map<String, dynamic> _$$ProgressIndicatorModelImplToJson(
        _$ProgressIndicatorModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'linearTrackColor': instance.linearTrackColor,
      'linearMinHeight': instance.linearMinHeight,
      'circularTrackColor': instance.circularTrackColor,
      'refreshBackgroundColor': instance.refreshBackgroundColor,
    };
