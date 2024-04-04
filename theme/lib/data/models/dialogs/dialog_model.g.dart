// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DialogModelImpl _$$DialogModelImplFromJson(Map<String, dynamic> json) =>
    _$DialogModelImpl(
      backgroundColor_color: json['backgroundColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      alignment_alignment: const AlignmentConverter()
          .fromJson(json['alignment_alignment'] as String?),
      iconColor_color: json['iconColor_color'] as String?,
      titleTextStyle_textStyle: json['titleTextStyle_textStyle'] as String?,
      contentTextStyle_textStyle: json['contentTextStyle_textStyle'] as String?,
      actionsPadding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['actionsPadding_edgeInsets'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$DialogModelImplToJson(_$DialogModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'elevation_double': instance.elevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'alignment_alignment':
          const AlignmentConverter().toJson(instance.alignment_alignment),
      'iconColor_color': instance.iconColor_color,
      'titleTextStyle_textStyle': instance.titleTextStyle_textStyle,
      'contentTextStyle_textStyle': instance.contentTextStyle_textStyle,
      'actionsPadding_edgeInsets': const EdgeInsetsConverter()
          .toJson(instance.actionsPadding_edgeInsets),
    };
