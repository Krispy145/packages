// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchBarModelImpl _$$SearchBarModelImplFromJson(Map<String, dynamic> json) =>
    _$SearchBarModelImpl(
      elevation: (json['elevation'] as num?)?.toDouble(),
      backgroundColor: json['backgroundColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
      textStyle: json['textStyle'] as String?,
      hintStyle: json['hintStyle'] as String?,
      constraints: const BoxConstraintsConverter()
          .fromJson(json['constraints'] as Map<String, dynamic>?),
      textCapitalization: $enumDecodeNullable(
              _$TextCapitalizationEnumMap, json['textCapitalization']) ??
          TextCapitalization.none,
    );

Map<String, dynamic> _$$SearchBarModelImplToJson(
        _$SearchBarModelImpl instance) =>
    <String, dynamic>{
      'elevation': instance.elevation,
      'backgroundColor': instance.backgroundColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'overlayColor': instance.overlayColor,
      'side': const BorderSideConverter().toJson(instance.side),
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'textStyle': instance.textStyle,
      'hintStyle': instance.hintStyle,
      'constraints':
          const BoxConstraintsConverter().toJson(instance.constraints),
      'textCapitalization':
          _$TextCapitalizationEnumMap[instance.textCapitalization],
    };

const _$TextCapitalizationEnumMap = {
  TextCapitalization.words: 'words',
  TextCapitalization.sentences: 'sentences',
  TextCapitalization.characters: 'characters',
  TextCapitalization.none: 'none',
};
