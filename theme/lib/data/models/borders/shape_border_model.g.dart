// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_border_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShapeBorderModelImpl _$$ShapeBorderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShapeBorderModelImpl(
      type_enum_shapeBorderType: $enumDecodeNullable(
          _$ShapeBorderTypeEnumMap, json['type_enum_shapeBorderType']),
      boxBorder_boxBorder: json['boxBorder_boxBorder'] == null
          ? null
          : BoxBorderModel.fromJson(
              json['boxBorder_boxBorder'] as Map<String, dynamic>),
      inputBorder_inputBorder: json['inputBorder_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['inputBorder_inputBorder'] as Map<String, dynamic>),
      outlinedBorder_outlinedBorder: json['outlinedBorder_outlinedBorder'] ==
              null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['outlinedBorder_outlinedBorder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ShapeBorderModelImplToJson(
        _$ShapeBorderModelImpl instance) =>
    <String, dynamic>{
      'type_enum_shapeBorderType':
          _$ShapeBorderTypeEnumMap[instance.type_enum_shapeBorderType],
      'boxBorder_boxBorder': instance.boxBorder_boxBorder?.toJson(),
      'inputBorder_inputBorder': instance.inputBorder_inputBorder?.toJson(),
      'outlinedBorder_outlinedBorder':
          instance.outlinedBorder_outlinedBorder.toJson(),
    };

const _$ShapeBorderTypeEnumMap = {
  ShapeBorderType.inputBorder: 'inputBorder',
  ShapeBorderType.outlinedBorder: 'outlinedBorder',
  ShapeBorderType.boxBorder: 'boxBorder',
};
