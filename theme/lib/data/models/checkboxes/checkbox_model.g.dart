// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckboxModelImpl _$$CheckboxModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckboxModelImpl(
      fillColor_color: json['fillColor_color'] as String?,
      checkColor_color: json['checkColor_color'] as String?,
      overlayColor_color: json['overlayColor_color'] as String?,
      splashRadius_double: (json['splashRadius_double'] as num?)?.toDouble(),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      side_borderSide: json['side_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckboxModelImplToJson(_$CheckboxModelImpl instance) =>
    <String, dynamic>{
      'fillColor_color': instance.fillColor_color,
      'checkColor_color': instance.checkColor_color,
      'overlayColor_color': instance.overlayColor_color,
      'splashRadius_double': instance.splashRadius_double,
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
    };
