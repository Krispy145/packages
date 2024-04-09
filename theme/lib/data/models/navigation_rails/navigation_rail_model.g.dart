// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_rail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationRailModelImpl _$$NavigationRailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationRailModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      unselectedLabelTextStyle_textStyleString:
          json['unselectedLabelTextStyle_textStyleString'] as String?,
      selectedLabelTextStyle_textStyleString:
          json['selectedLabelTextStyle_textStyleString'] as String?,
      groupAlignment_double:
          (json['groupAlignment_double'] as num?)?.toDouble(),
      labelType_enum_navigationRailLabelType: $enumDecodeNullable(
          _$NavigationRailLabelTypeEnumMap,
          json['labelType_enum_navigationRailLabelType']),
      useIndicator_bool: json['useIndicator_bool'] as bool?,
      indicatorColor_themeColorString:
          json['indicatorColor_themeColorString'] as String?,
      indicatorShape_shapeBorder: json['indicatorShape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['indicatorShape_shapeBorder'] as Map<String, dynamic>),
      minWidth_double: (json['minWidth_double'] as num?)?.toDouble(),
      minExtendedWidth_double:
          (json['minExtendedWidth_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$NavigationRailModelImplToJson(
        _$NavigationRailModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'unselectedLabelTextStyle_textStyleString':
          instance.unselectedLabelTextStyle_textStyleString,
      'selectedLabelTextStyle_textStyleString':
          instance.selectedLabelTextStyle_textStyleString,
      'groupAlignment_double': instance.groupAlignment_double,
      'labelType_enum_navigationRailLabelType':
          _$NavigationRailLabelTypeEnumMap[
              instance.labelType_enum_navigationRailLabelType],
      'useIndicator_bool': instance.useIndicator_bool,
      'indicatorColor_themeColorString':
          instance.indicatorColor_themeColorString,
      'indicatorShape_shapeBorder':
          instance.indicatorShape_shapeBorder?.toJson(),
      'minWidth_double': instance.minWidth_double,
      'minExtendedWidth_double': instance.minExtendedWidth_double,
    };

const _$NavigationRailLabelTypeEnumMap = {
  NavigationRailLabelType.none: 'none',
  NavigationRailLabelType.selected: 'selected',
  NavigationRailLabelType.all: 'all',
};
