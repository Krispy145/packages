// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlined_border_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OutlinedBorderModelImpl _$$OutlinedBorderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OutlinedBorderModelImpl(
      type_enum_outlinedBorderType: $enumDecodeNullable(
          _$OutlinedBorderTypeEnumMap, json['type_enum_outlinedBorderType']),
      side_borderSide: json['side_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      borderRadius_double: (json['borderRadius_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OutlinedBorderModelImplToJson(
        _$OutlinedBorderModelImpl instance) =>
    <String, dynamic>{
      'type_enum_outlinedBorderType':
          _$OutlinedBorderTypeEnumMap[instance.type_enum_outlinedBorderType],
      'side_borderSide': instance.side_borderSide?.toJson(),
      'borderRadius_double': instance.borderRadius_double,
    };

const _$OutlinedBorderTypeEnumMap = {
  OutlinedBorderType.circleBorder: 'circleBorder',
  OutlinedBorderType.stadiumBorder: 'stadiumBorder',
  OutlinedBorderType.starBorder: 'starBorder',
  OutlinedBorderType.beveledRectangleBorder: 'beveledRectangleBorder',
  OutlinedBorderType.ovalBorder: 'ovalBorder',
  OutlinedBorderType.continuousRectangleBorder: 'continuousRectangleBorder',
  OutlinedBorderType.roundedRectangleBorder: 'roundedRectangleBorder',
  OutlinedBorderType.linearBorder: 'linearBorder',
};
