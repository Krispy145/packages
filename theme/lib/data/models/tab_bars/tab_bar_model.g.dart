// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TabBarModelImpl _$$TabBarModelImplFromJson(Map<String, dynamic> json) =>
    _$TabBarModelImpl(
      indicator: const BoxDecorationConverter()
          .fromJson(json['indicator'] as Map<String, dynamic>?),
      indicatorColor: json['indicatorColor'] as String?,
      dividerColor: json['dividerColor'] as String?,
      dividerHeight: (json['dividerHeight'] as num?)?.toDouble(),
      labelColor: json['labelColor'] as String?,
      labelPadding: const EdgeInsetsConverter()
          .fromJson(json['labelPadding'] as Map<String, dynamic>?),
      labelStyle: json['labelStyle'] as String?,
      unselectedLabelColor: json['unselectedLabelColor'] as String?,
      unselectedLabelStyle: json['unselectedLabelStyle'] as String?,
      overlayColor: json['overlayColor'] as String?,
      tabAlignment: const TabAlignmentConverter()
          .fromJson(json['tabAlignment'] as String?),
    );

Map<String, dynamic> _$$TabBarModelImplToJson(_$TabBarModelImpl instance) =>
    <String, dynamic>{
      'indicator': const BoxDecorationConverter().toJson(instance.indicator),
      'indicatorColor': instance.indicatorColor,
      'dividerColor': instance.dividerColor,
      'dividerHeight': instance.dividerHeight,
      'labelColor': instance.labelColor,
      'labelPadding': const EdgeInsetsConverter().toJson(instance.labelPadding),
      'labelStyle': instance.labelStyle,
      'unselectedLabelColor': instance.unselectedLabelColor,
      'unselectedLabelStyle': instance.unselectedLabelStyle,
      'overlayColor': instance.overlayColor,
      'tabAlignment':
          const TabAlignmentConverter().toJson(instance.tabAlignment),
    };
