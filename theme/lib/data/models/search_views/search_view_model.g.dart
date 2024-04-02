// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchViewModelImpl _$$SearchViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchViewModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      surfaceTintColor: json['surfaceTintColor'] as String?,
      constraints: const BoxConstraintsConverter()
          .fromJson(json['constraints'] as Map<String, dynamic>?),
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      headerTextStyle: json['headerTextStyle'] as String?,
      headerHintStyle: json['headerHintStyle'] as String?,
      dividerColor: json['dividerColor'] as String?,
    );

Map<String, dynamic> _$$SearchViewModelImplToJson(
        _$SearchViewModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'surfaceTintColor': instance.surfaceTintColor,
      'constraints':
          const BoxConstraintsConverter().toJson(instance.constraints),
      'side': const BorderSideConverter().toJson(instance.side),
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'headerTextStyle': instance.headerTextStyle,
      'headerHintStyle': instance.headerHintStyle,
      'dividerColor': instance.dividerColor,
    };
