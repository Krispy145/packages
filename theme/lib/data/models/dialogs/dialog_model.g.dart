// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DialogModelImpl _$$DialogModelImplFromJson(Map<String, dynamic> json) =>
    _$DialogModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      alignment_enum_alignmentOptions: $enumDecodeNullable(
          _$AlignmentOptionsEnumMap, json['alignment_enum_alignmentOptions']),
      iconColor_themeColorString: json['iconColor_themeColorString'] as String?,
      titleTextStyle_textStyleString:
          json['titleTextStyle_textStyleString'] as String?,
      contentTextStyle_textStyleString:
          json['contentTextStyle_textStyleString'] as String?,
      actionsPadding_edgeInsets: json['actionsPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['actionsPadding_edgeInsets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DialogModelImplToJson(_$DialogModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'alignment_enum_alignmentOptions':
          _$AlignmentOptionsEnumMap[instance.alignment_enum_alignmentOptions],
      'iconColor_themeColorString': instance.iconColor_themeColorString,
      'titleTextStyle_textStyleString': instance.titleTextStyle_textStyleString,
      'contentTextStyle_textStyleString':
          instance.contentTextStyle_textStyleString,
      'actionsPadding_edgeInsets': instance.actionsPadding_edgeInsets?.toJson(),
    };

const _$AlignmentOptionsEnumMap = {
  AlignmentOptions.topLeft: 'topLeft',
  AlignmentOptions.topCenter: 'topCenter',
  AlignmentOptions.topRight: 'topRight',
  AlignmentOptions.centerLeft: 'centerLeft',
  AlignmentOptions.center: 'center',
  AlignmentOptions.centerRight: 'centerRight',
  AlignmentOptions.bottomLeft: 'bottomLeft',
  AlignmentOptions.bottomCenter: 'bottomCenter',
  AlignmentOptions.bottomRight: 'bottomRight',
};
