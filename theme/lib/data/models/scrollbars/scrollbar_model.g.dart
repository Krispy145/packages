// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scrollbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScrollbarModelImpl _$$ScrollbarModelImplFromJson(Map<String, dynamic> json) =>
    _$ScrollbarModelImpl(
      thumbVisibility: json['thumbVisibility'] as bool?,
      thickness: (json['thickness'] as num?)?.toDouble(),
      trackVisibility: json['trackVisibility'] as bool?,
      radius: const RadiusConverter()
          .fromJson(json['radius'] as Map<String, dynamic>?),
      thumbColor: json['thumbColor'] as String?,
      trackColor: json['trackColor'] as String?,
      trackBorderColor: json['trackBorderColor'] as String?,
      crossAxisMargin: (json['crossAxisMargin'] as num?)?.toDouble(),
      mainAxisMargin: (json['mainAxisMargin'] as num?)?.toDouble(),
      minThumbLength: (json['minThumbLength'] as num?)?.toDouble(),
      interactive: json['interactive'] as bool?,
    );

Map<String, dynamic> _$$ScrollbarModelImplToJson(
        _$ScrollbarModelImpl instance) =>
    <String, dynamic>{
      'thumbVisibility': instance.thumbVisibility,
      'thickness': instance.thickness,
      'trackVisibility': instance.trackVisibility,
      'radius': const RadiusConverter().toJson(instance.radius),
      'thumbColor': instance.thumbColor,
      'trackColor': instance.trackColor,
      'trackBorderColor': instance.trackBorderColor,
      'crossAxisMargin': instance.crossAxisMargin,
      'mainAxisMargin': instance.mainAxisMargin,
      'minThumbLength': instance.minThumbLength,
      'interactive': instance.interactive,
    };
