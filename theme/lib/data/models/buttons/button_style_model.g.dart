// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonStyleModelImpl _$$ButtonStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ButtonStyleModelImpl(
      textStyle: json['textStyle'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
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
      iconColor: json['iconColor'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$ButtonStyleModelImplToJson(
        _$ButtonStyleModelImpl instance) =>
    <String, dynamic>{
      'textStyle': instance.textStyle,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'overlayColor': instance.overlayColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'elevation': instance.elevation,
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'minimumSize': const SizeConverter().toJson(instance.minimumSize),
      'fixedSize': const SizeConverter().toJson(instance.fixedSize),
      'maximumSize': const SizeConverter().toJson(instance.maximumSize),
      'iconColor': instance.iconColor,
      'iconSize': instance.iconSize,
      'side': const BorderSideConverter().toJson(instance.side),
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
    };
