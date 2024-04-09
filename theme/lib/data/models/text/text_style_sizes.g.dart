// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_style_sizes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$textStyleStringSizesImpl _$$textStyleStringSizesImplFromJson(
        Map<String, dynamic> json) =>
    _$textStyleStringSizesImpl(
      large: json['large'] == null
          ? null
          : TextStyleModel.fromJson(json['large'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : TextStyleModel.fromJson(json['medium'] as Map<String, dynamic>),
      small: json['small'] == null
          ? null
          : TextStyleModel.fromJson(json['small'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$textStyleStringSizesImplToJson(
        _$textStyleStringSizesImpl instance) =>
    <String, dynamic>{
      'large': instance.large?.toJson(),
      'medium': instance.medium?.toJson(),
      'small': instance.small?.toJson(),
    };
