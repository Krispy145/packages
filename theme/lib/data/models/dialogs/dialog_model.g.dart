// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DialogModelImpl _$$DialogModelImplFromJson(Map<String, dynamic> json) =>
    _$DialogModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      alignment:
          const AlignmentConverter().fromJson(json['alignment'] as String?),
      iconColor: json['iconColor'] as String?,
      titleTextStyle: json['titleTextStyle'] as String?,
      contentTextStyle: json['contentTextStyle'] as String?,
      actionsPadding: const EdgeInsetsConverter()
          .fromJson(json['actionsPadding'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$DialogModelImplToJson(_$DialogModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'iconColor': instance.iconColor,
      'titleTextStyle': instance.titleTextStyle,
      'contentTextStyle': instance.contentTextStyle,
      'actionsPadding':
          const EdgeInsetsConverter().toJson(instance.actionsPadding),
    };
