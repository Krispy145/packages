// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchViewModelImpl _$$SearchViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchViewModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      constraints_boxConstraints: json['constraints_boxConstraints'] == null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['constraints_boxConstraints'] as Map<String, dynamic>),
      side_borderSide: json['side_borderSide'] == null
          ? null
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      headerTextStyle_textStyleString:
          json['headerTextStyle_textStyleString'] as String?,
      headerHintStyle_textStyleString:
          json['headerHintStyle_textStyleString'] as String?,
      dividerColor_themeColorString:
          json['dividerColor_themeColorString'] as String?,
    );

Map<String, dynamic> _$$SearchViewModelImplToJson(
        _$SearchViewModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'headerTextStyle_textStyleString':
          instance.headerTextStyle_textStyleString,
      'headerHintStyle_textStyleString':
          instance.headerHintStyle_textStyleString,
      'dividerColor_themeColorString': instance.dividerColor_themeColorString,
    };
