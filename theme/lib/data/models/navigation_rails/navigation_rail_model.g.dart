// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_rail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationRailModelImpl _$$NavigationRailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationRailModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      unselectedLabelTextStyle: json['unselectedLabelTextStyle'] as String?,
      selectedLabelTextStyle: json['selectedLabelTextStyle'] as String?,
      groupAlignment: (json['groupAlignment'] as num?)?.toDouble(),
      labelType: const NavigationRailLabelConverter()
          .fromJson(json['labelType'] as String?),
      useIndicator: json['useIndicator'] as bool?,
      indicatorColor: json['indicatorColor'] as String?,
      indicatorShape: const OutlinedBorderConverter()
          .fromJson(json['indicatorShape'] as Map<String, dynamic>?),
      minWidth: (json['minWidth'] as num?)?.toDouble(),
      minExtendedWidth: (json['minExtendedWidth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$NavigationRailModelImplToJson(
        _$NavigationRailModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'elevation': instance.elevation,
      'unselectedLabelTextStyle': instance.unselectedLabelTextStyle,
      'selectedLabelTextStyle': instance.selectedLabelTextStyle,
      'groupAlignment': instance.groupAlignment,
      'labelType':
          const NavigationRailLabelConverter().toJson(instance.labelType),
      'useIndicator': instance.useIndicator,
      'indicatorColor': instance.indicatorColor,
      'indicatorShape':
          const OutlinedBorderConverter().toJson(instance.indicatorShape),
      'minWidth': instance.minWidth,
      'minExtendedWidth': instance.minExtendedWidth,
    };
