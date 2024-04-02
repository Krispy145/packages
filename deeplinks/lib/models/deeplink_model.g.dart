// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deeplink_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeepLinkImpl _$$DeepLinkImplFromJson(Map<String, dynamic> json) =>
    _$DeepLinkImpl(
      canonicalIdentifier: json['canonicalIdentifier'] as String,
      title: json['title'] as String,
      contentDescription: json['contentDescription'] as String?,
      imageUrl: json['imageUrl'] as String?,
      canonicalUrl: json['canonicalUrl'] as String?,
      destination: json['destination'] == null
          ? null
          : AppDestination.fromJson(
              json['destination'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
      keywords: (json['keywords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      publicIndex: json['publicIndex'] as bool? ?? true,
      localIndex: json['localIndex'] as bool? ?? true,
      expirationDate: json['expirationDate'] == null
          ? null
          : DateTime.parse(json['expirationDate'] as String),
    );

Map<String, dynamic> _$$DeepLinkImplToJson(_$DeepLinkImpl instance) =>
    <String, dynamic>{
      'canonicalIdentifier': instance.canonicalIdentifier,
      'title': instance.title,
      'contentDescription': instance.contentDescription,
      'imageUrl': instance.imageUrl,
      'canonicalUrl': instance.canonicalUrl,
      'destination': instance.destination,
      'metadata': instance.metadata,
      'keywords': instance.keywords,
      'publicIndex': instance.publicIndex,
      'localIndex': instance.localIndex,
      'expirationDate': instance.expirationDate?.toIso8601String(),
    };
