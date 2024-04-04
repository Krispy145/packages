// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextStyleModelImpl _$$TextStyleModelImplFromJson(Map<String, dynamic> json) =>
    _$TextStyleModelImpl(
      fontFamilyName_string: json['fontFamilyName_string'] as String?,
      fontFamilyStyle_enum_fontStyle: $enumDecodeNullable(
          _$FontStyleEnumMap, json['fontFamilyStyle_enum_fontStyle']),
      fontWeight_double: (json['fontWeight_double'] as num?)?.toDouble(),
      fontSize_double: (json['fontSize_double'] as num?)?.toDouble(),
      lineHeight_double: (json['lineHeight_double'] as num?)?.toDouble(),
      letterSpacing_double: (json['letterSpacing_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TextStyleModelImplToJson(
        _$TextStyleModelImpl instance) =>
    <String, dynamic>{
      'fontFamilyName_string': instance.fontFamilyName_string,
      'fontFamilyStyle_enum_fontStyle':
          _$FontStyleEnumMap[instance.fontFamilyStyle_enum_fontStyle],
      'fontWeight_double': instance.fontWeight_double,
      'fontSize_double': instance.fontSize_double,
      'lineHeight_double': instance.lineHeight_double,
      'letterSpacing_double': instance.letterSpacing_double,
    };

const _$FontStyleEnumMap = {
  FontStyle.normal: 'normal',
  FontStyle.italic: 'italic',
};
