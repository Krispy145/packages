// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuModelImpl _$$MenuModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
      minimumSize: const SizeConverter()
          .fromJson(json['minimumSize'] as Map<String, dynamic>?),
      fixedSize: const SizeConverter()
          .fromJson(json['fixedSize'] as Map<String, dynamic>?),
      maximumSize: const SizeConverter()
          .fromJson(json['maximumSize'] as Map<String, dynamic>?),
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      alignment:
          const AlignmentConverter().fromJson(json['alignment'] as String?),
    );

Map<String, dynamic> _$$MenuModelImplToJson(_$MenuModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'minimumSize': const SizeConverter().toJson(instance.minimumSize),
      'fixedSize': const SizeConverter().toJson(instance.fixedSize),
      'maximumSize': const SizeConverter().toJson(instance.maximumSize),
      'side': const BorderSideConverter().toJson(instance.side),
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'alignment': const AlignmentConverter().toJson(instance.alignment),
    };
