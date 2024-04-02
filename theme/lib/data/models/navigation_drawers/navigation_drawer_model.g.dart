// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationDrawerModelImpl _$$NavigationDrawerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationDrawerModelImpl(
      tileHeight: (json['tileHeight'] as num?)?.toDouble(),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      indicatorColor: json['indicatorColor'] as String?,
      indicatorShape: const OutlinedBorderConverter()
          .fromJson(json['indicatorShape'] as Map<String, dynamic>?),
      indicatorSize: const SizeConverter()
          .fromJson(json['indicatorSize'] as Map<String, dynamic>?),
      labelTextStyle: json['labelTextStyle'] as String?,
    );

Map<String, dynamic> _$$NavigationDrawerModelImplToJson(
        _$NavigationDrawerModelImpl instance) =>
    <String, dynamic>{
      'tileHeight': instance.tileHeight,
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'indicatorColor': instance.indicatorColor,
      'indicatorShape':
          const OutlinedBorderConverter().toJson(instance.indicatorShape),
      'indicatorSize': const SizeConverter().toJson(instance.indicatorSize),
      'labelTextStyle': instance.labelTextStyle,
    };
