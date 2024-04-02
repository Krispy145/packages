// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_properties_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkPropertiesImpl _$$LinkPropertiesImplFromJson(Map<String, dynamic> json) =>
    _$LinkPropertiesImpl(
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      feature: json['feature'] as String?,
      alias: json['alias'] as String?,
      stage: json['stage'] as String?,
      matchDuration: json['matchDuration'] == null
          ? null
          : Duration(microseconds: json['matchDuration'] as int),
      channel: json['channel'] as String?,
      campaign: json['campaign'] as String?,
    );

Map<String, dynamic> _$$LinkPropertiesImplToJson(
        _$LinkPropertiesImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'feature': instance.feature,
      'alias': instance.alias,
      'stage': instance.stage,
      'matchDuration': instance.matchDuration?.inMicroseconds,
      'channel': instance.channel,
      'campaign': instance.campaign,
    };
