// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_indicator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressIndicatorModelImpl _$$ProgressIndicatorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressIndicatorModelImpl(
      color_color: json['color_color'] as String?,
      linearTrackColor_color: json['linearTrackColor_color'] as String?,
      linearMinHeight_double:
          (json['linearMinHeight_double'] as num?)?.toDouble(),
      circularTrackColor_color: json['circularTrackColor_color'] as String?,
      refreshBackgroundColor_color:
          json['refreshBackgroundColor_color'] as String?,
    );

Map<String, dynamic> _$$ProgressIndicatorModelImplToJson(
        _$ProgressIndicatorModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'linearTrackColor_color': instance.linearTrackColor_color,
      'linearMinHeight_double': instance.linearMinHeight_double,
      'circularTrackColor_color': instance.circularTrackColor_color,
      'refreshBackgroundColor_color': instance.refreshBackgroundColor_color,
    };
