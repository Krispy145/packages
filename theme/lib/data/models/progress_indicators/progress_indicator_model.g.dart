// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_indicator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressIndicatorModelImpl _$$ProgressIndicatorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProgressIndicatorModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      linearTrackColor_themeColorString:
          json['linearTrackColor_themeColorString'] as String?,
      linearMinHeight_double:
          (json['linearMinHeight_double'] as num?)?.toDouble(),
      circularTrackColor_themeColorString:
          json['circularTrackColor_themeColorString'] as String?,
      refreshBackgroundColor_themeColorString:
          json['refreshBackgroundColor_themeColorString'] as String?,
    );

Map<String, dynamic> _$$ProgressIndicatorModelImplToJson(
        _$ProgressIndicatorModelImpl instance) =>
    <String, dynamic>{
      'color_themeColorString': instance.color_themeColorString,
      'linearTrackColor_themeColorString':
          instance.linearTrackColor_themeColorString,
      'linearMinHeight_double': instance.linearMinHeight_double,
      'circularTrackColor_themeColorString':
          instance.circularTrackColor_themeColorString,
      'refreshBackgroundColor_themeColorString':
          instance.refreshBackgroundColor_themeColorString,
    };
