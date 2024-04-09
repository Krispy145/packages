// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$textStyleStringsImpl _$$textStyleStringsImplFromJson(
        Map<String, dynamic> json) =>
    _$textStyleStringsImpl(
      display: json['display'] == null
          ? null
          : TextStyleSizes.fromJson(json['display'] as Map<String, dynamic>),
      headline: json['headline'] == null
          ? null
          : TextStyleSizes.fromJson(json['headline'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : TextStyleSizes.fromJson(json['title'] as Map<String, dynamic>),
      body: json['body'] == null
          ? null
          : TextStyleSizes.fromJson(json['body'] as Map<String, dynamic>),
      label: json['label'] == null
          ? null
          : TextStyleSizes.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$textStyleStringsImplToJson(
        _$textStyleStringsImpl instance) =>
    <String, dynamic>{
      'display': instance.display?.toJson(),
      'headline': instance.headline?.toJson(),
      'title': instance.title?.toJson(),
      'body': instance.body?.toJson(),
      'label': instance.label?.toJson(),
    };
