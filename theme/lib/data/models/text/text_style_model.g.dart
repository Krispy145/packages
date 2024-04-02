// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextStyleModelImpl _$$TextStyleModelImplFromJson(Map<String, dynamic> json) =>
    _$TextStyleModelImpl(
      fontFamilyName: json['fontFamilyName'] as String?,
      fontFamilyStyle: json['fontFamilyStyle'] as String?,
      fontWeight: (json['fontWeight'] as num?)?.toDouble(),
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      lineHeight: (json['lineHeight'] as num?)?.toDouble(),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TextStyleModelImplToJson(
        _$TextStyleModelImpl instance) =>
    <String, dynamic>{
      'fontFamilyName': instance.fontFamilyName,
      'fontFamilyStyle': instance.fontFamilyStyle,
      'fontWeight': instance.fontWeight,
      'fontSize': instance.fontSize,
      'lineHeight': instance.lineHeight,
      'letterSpacing': instance.letterSpacing,
    };
