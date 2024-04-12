// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TabBarModelImpl _$$TabBarModelImplFromJson(Map<String, dynamic> json) =>
    _$TabBarModelImpl(
      indicator_boxDecoration: json['indicator_boxDecoration'] == null
          ? null
          : BoxDecorationModel.fromJson(
              json['indicator_boxDecoration'] as Map<String, dynamic>),
      indicatorColor_themeColorString:
          json['indicatorColor_themeColorString'] as String?,
      dividerColor_themeColorString:
          json['dividerColor_themeColorString'] as String?,
      indicatorSize_enum_tabBarIndicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap,
          json['indicatorSize_enum_tabBarIndicatorSize']),
      dividerHeight_double: (json['dividerHeight_double'] as num?)?.toDouble(),
      labelColor_themeColorString:
          json['labelColor_themeColorString'] as String?,
      labelPadding_edgeInsets: json['labelPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['labelPadding_edgeInsets'] as Map<String, dynamic>),
      labelStyle_textStyleString: json['labelStyle_textStyleString'] as String?,
      unselectedLabelColor_themeColorString:
          json['unselectedLabelColor_themeColorString'] as String?,
      unselectedLabelStyle_textStyleString:
          json['unselectedLabelStyle_textStyleString'] as String?,
      overlayColor_themeColorString:
          json['overlayColor_themeColorString'] as String?,
      tabAlignment_enum_tabAlignment: $enumDecodeNullable(
          _$TabAlignmentEnumMap, json['tabAlignment_enum_tabAlignment']),
    );

Map<String, dynamic> _$$TabBarModelImplToJson(_$TabBarModelImpl instance) =>
    <String, dynamic>{
      'indicator_boxDecoration': instance.indicator_boxDecoration?.toJson(),
      'indicatorColor_themeColorString':
          instance.indicatorColor_themeColorString,
      'dividerColor_themeColorString': instance.dividerColor_themeColorString,
      'indicatorSize_enum_tabBarIndicatorSize': _$TabBarIndicatorSizeEnumMap[
          instance.indicatorSize_enum_tabBarIndicatorSize],
      'dividerHeight_double': instance.dividerHeight_double,
      'labelColor_themeColorString': instance.labelColor_themeColorString,
      'labelPadding_edgeInsets': instance.labelPadding_edgeInsets?.toJson(),
      'labelStyle_textStyleString': instance.labelStyle_textStyleString,
      'unselectedLabelColor_themeColorString':
          instance.unselectedLabelColor_themeColorString,
      'unselectedLabelStyle_textStyleString':
          instance.unselectedLabelStyle_textStyleString,
      'overlayColor_themeColorString': instance.overlayColor_themeColorString,
      'tabAlignment_enum_tabAlignment':
          _$TabAlignmentEnumMap[instance.tabAlignment_enum_tabAlignment],
    };

const _$TabBarIndicatorSizeEnumMap = {
  TabBarIndicatorSize.tab: 'tab',
  TabBarIndicatorSize.label: 'label',
};

const _$TabAlignmentEnumMap = {
  TabAlignment.start: 'start',
  TabAlignment.startOffset: 'startOffset',
  TabAlignment.fill: 'fill',
  TabAlignment.center: 'center',
};
