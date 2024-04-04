// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchViewModelImpl _$$SearchViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchViewModelImpl(
      backgroundColor_color: json['backgroundColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
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
      headerTextStyle_textStyle: json['headerTextStyle_textStyle'] as String?,
      headerHintStyle_textStyle: json['headerHintStyle_textStyle'] as String?,
      dividerColor_color: json['dividerColor_color'] as String?,
    );

Map<String, dynamic> _$$SearchViewModelImplToJson(
        _$SearchViewModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'elevation_double': instance.elevation_double,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'headerTextStyle_textStyle': instance.headerTextStyle_textStyle,
      'headerHintStyle_textStyle': instance.headerHintStyle_textStyle,
      'dividerColor_color': instance.dividerColor_color,
    };
