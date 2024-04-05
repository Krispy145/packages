// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border_radius_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BorderRadiusModelImpl _$$BorderRadiusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BorderRadiusModelImpl(
      type_enum_borderRadiusType: $enumDecodeNullable(
              _$BorderRadiusTypeEnumMap, json['type_enum_borderRadiusType']) ??
          BorderRadiusType.circular,
      topLeft_double: (json['topLeft_double'] as num?)?.toDouble(),
      topRight_double: (json['topRight_double'] as num?)?.toDouble(),
      bottomLeft_double: (json['bottomLeft_double'] as num?)?.toDouble(),
      bottomRight_double: (json['bottomRight_double'] as num?)?.toDouble(),
      all_double: (json['all_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BorderRadiusModelImplToJson(
        _$BorderRadiusModelImpl instance) =>
    <String, dynamic>{
      'type_enum_borderRadiusType':
          _$BorderRadiusTypeEnumMap[instance.type_enum_borderRadiusType],
      'topLeft_double': instance.topLeft_double,
      'topRight_double': instance.topRight_double,
      'bottomLeft_double': instance.bottomLeft_double,
      'bottomRight_double': instance.bottomRight_double,
      'all_double': instance.all_double,
    };

const _$BorderRadiusTypeEnumMap = {
  BorderRadiusType.circular: 'circular',
  BorderRadiusType.only: 'only',
};
