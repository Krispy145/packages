// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationBarModelImpl _$$NavigationBarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationBarModelImpl(
      height_double: (json['height_double'] as num?)?.toDouble(),
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      indicatorColor_themeColorString:
          json['indicatorColor_themeColorString'] as String?,
      indicatorShape_shapeBorder: json['indicatorShape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['indicatorShape_shapeBorder'] as Map<String, dynamic>),
      labelTextStyle_textStyleString:
          json['labelTextStyle_textStyleString'] as String?,
      labelBehavior_enum_navigationDestinationLabelBehavior:
          $enumDecodeNullable(_$NavigationDestinationLabelBehaviorEnumMap,
              json['labelBehavior_enum_navigationDestinationLabelBehavior']),
    );

Map<String, dynamic> _$$NavigationBarModelImplToJson(
        _$NavigationBarModelImpl instance) =>
    <String, dynamic>{
      'height_double': instance.height_double,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'indicatorColor_themeColorString':
          instance.indicatorColor_themeColorString,
      'indicatorShape_shapeBorder':
          instance.indicatorShape_shapeBorder?.toJson(),
      'labelTextStyle_textStyleString': instance.labelTextStyle_textStyleString,
      'labelBehavior_enum_navigationDestinationLabelBehavior':
          _$NavigationDestinationLabelBehaviorEnumMap[
              instance.labelBehavior_enum_navigationDestinationLabelBehavior],
    };

const _$NavigationDestinationLabelBehaviorEnumMap = {
  NavigationDestinationLabelBehavior.alwaysShow: 'alwaysShow',
  NavigationDestinationLabelBehavior.alwaysHide: 'alwaysHide',
  NavigationDestinationLabelBehavior.onlyShowSelected: 'onlyShowSelected',
};
