// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrollbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScrollbarModelImpl _$$ScrollbarModelImplFromJson(Map<String, dynamic> json) =>
    _$ScrollbarModelImpl(
      thumbVisibility_bool: json['thumbVisibility_bool'] as bool?,
      thickness_double: (json['thickness_double'] as num?)?.toDouble(),
      trackVisibility_bool: json['trackVisibility_bool'] as bool?,
      radius_double: (json['radius_double'] as num?)?.toDouble(),
      thumbColor_themeColorString:
          json['thumbColor_themeColorString'] as String?,
      trackColor_themeColorString:
          json['trackColor_themeColorString'] as String?,
      trackBorderColor_themeColorString:
          json['trackBorderColor_themeColorString'] as String?,
      crossAxisMargin_double:
          (json['crossAxisMargin_double'] as num?)?.toDouble(),
      mainAxisMargin_double:
          (json['mainAxisMargin_double'] as num?)?.toDouble(),
      minThumbLength_double:
          (json['minThumbLength_double'] as num?)?.toDouble(),
      interactive_bool: json['interactive_bool'] as bool?,
    );

Map<String, dynamic> _$$ScrollbarModelImplToJson(
        _$ScrollbarModelImpl instance) =>
    <String, dynamic>{
      'thumbVisibility_bool': instance.thumbVisibility_bool,
      'thickness_double': instance.thickness_double,
      'trackVisibility_bool': instance.trackVisibility_bool,
      'radius_double': instance.radius_double,
      'thumbColor_themeColorString': instance.thumbColor_themeColorString,
      'trackColor_themeColorString': instance.trackColor_themeColorString,
      'trackBorderColor_themeColorString':
          instance.trackBorderColor_themeColorString,
      'crossAxisMargin_double': instance.crossAxisMargin_double,
      'mainAxisMargin_double': instance.mainAxisMargin_double,
      'minThumbLength_double': instance.minThumbLength_double,
      'interactive_bool': instance.interactive_bool,
    };
