// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationBarModelImpl _$$NavigationBarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationBarModelImpl(
      height: (json['height'] as num?)?.toDouble(),
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      indicatorColor: json['indicatorColor'] as String?,
      indicatorShape: const OutlinedBorderConverter()
          .fromJson(json['indicatorShape'] as Map<String, dynamic>?),
      labelTextStyle: json['labelTextStyle'] as String?,
      labelBehavior: const NavigationDestinationLabelConverter()
          .fromJson(json['labelBehavior'] as String?),
    );

Map<String, dynamic> _$$NavigationBarModelImplToJson(
        _$NavigationBarModelImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'indicatorColor': instance.indicatorColor,
      'indicatorShape':
          const OutlinedBorderConverter().toJson(instance.indicatorShape),
      'labelTextStyle': instance.labelTextStyle,
      'labelBehavior': const NavigationDestinationLabelConverter()
          .toJson(instance.labelBehavior),
    };
