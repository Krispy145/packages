// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuModelImpl _$$MenuModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
      minimumSize_size: json['minimumSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['minimumSize_size'] as Map<String, dynamic>),
      fixedSize_size: json['fixedSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(json['fixedSize_size'] as Map<String, dynamic>),
      maximumSize_size: json['maximumSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['maximumSize_size'] as Map<String, dynamic>),
      side_borderSide: json['side_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      alignment_enum_alignmentOptions: $enumDecodeNullable(
              _$AlignmentOptionsEnumMap,
              json['alignment_enum_alignmentOptions']) ??
          AlignmentOptions.center,
    );

Map<String, dynamic> _$$MenuModelImplToJson(_$MenuModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'minimumSize_size': instance.minimumSize_size?.toJson(),
      'fixedSize_size': instance.fixedSize_size?.toJson(),
      'maximumSize_size': instance.maximumSize_size?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'alignment_enum_alignmentOptions':
          _$AlignmentOptionsEnumMap[instance.alignment_enum_alignmentOptions],
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
