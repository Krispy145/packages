// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationBarModelImpl _$$NavigationBarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationBarModelImpl(
      height_double: (json['height_double'] as num?)?.toDouble(),
      backgroundColor_color: json['backgroundColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      indicatorColor_color: json['indicatorColor_color'] as String?,
      indicatorShape_shapeBorder: json['indicatorShape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['indicatorShape_shapeBorder'] as Map<String, dynamic>),
      labelTextStyle_textStyle: json['labelTextStyle_textStyle'] as String?,
      labelBehavior_enum_navigationDestinationLabelBehavior:
          $enumDecodeNullable(_$NavigationDestinationLabelBehaviorEnumMap,
              json['labelBehavior_enum_navigationDestinationLabelBehavior']),
    );

Map<String, dynamic> _$$NavigationBarModelImplToJson(
        _$NavigationBarModelImpl instance) =>
    <String, dynamic>{
      'height_double': instance.height_double,
      'backgroundColor_color': instance.backgroundColor_color,
      'elevation_double': instance.elevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'indicatorColor_color': instance.indicatorColor_color,
      'indicatorShape_shapeBorder':
          instance.indicatorShape_shapeBorder?.toJson(),
      'labelTextStyle_textStyle': instance.labelTextStyle_textStyle,
      'labelBehavior_enum_navigationDestinationLabelBehavior':
          _$NavigationDestinationLabelBehaviorEnumMap[
              instance.labelBehavior_enum_navigationDestinationLabelBehavior],
    };

const _$NavigationDestinationLabelBehaviorEnumMap = {
  NavigationDestinationLabelBehavior.alwaysShow: 'alwaysShow',
  NavigationDestinationLabelBehavior.alwaysHide: 'alwaysHide',
  NavigationDestinationLabelBehavior.onlyShowSelected: 'onlyShowSelected',
};
