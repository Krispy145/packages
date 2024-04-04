// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_border_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputBorderModelImpl _$$InputBorderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputBorderModelImpl(
      type_enum_inputBorderType: $enumDecodeNullable(
          _$InputBorderTypeEnumMap, json['type_enum_inputBorderType']),
      borderRadius_borderRadius: json['borderRadius_borderRadius'] == null
          ? const BorderRadiusModel()
          : BorderRadiusModel.fromJson(
              json['borderRadius_borderRadius'] as Map<String, dynamic>),
      borderSide_borderSide: json['borderSide_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['borderSide_borderSide'] as Map<String, dynamic>),
      gapPadding_double: (json['gapPadding_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$InputBorderModelImplToJson(
        _$InputBorderModelImpl instance) =>
    <String, dynamic>{
      'type_enum_inputBorderType':
          _$InputBorderTypeEnumMap[instance.type_enum_inputBorderType],
      'borderRadius_borderRadius': instance.borderRadius_borderRadius?.toJson(),
      'borderSide_borderSide': instance.borderSide_borderSide?.toJson(),
      'gapPadding_double': instance.gapPadding_double,
    };

const _$InputBorderTypeEnumMap = {
  InputBorderType.none: 'none',
  InputBorderType.outlined: 'outlined',
  InputBorderType.underlined: 'underlined',
};
