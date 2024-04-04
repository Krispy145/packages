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
      indicatorColor_color: json['indicatorColor_color'] as String?,
      dividerColor_color: json['dividerColor_color'] as String?,
      indicatorSize_enum_tabBarIndicatorSize: $enumDecodeNullable(
          _$TabBarIndicatorSizeEnumMap,
          json['indicatorSize_enum_tabBarIndicatorSize']),
      dividerHeight_double: (json['dividerHeight_double'] as num?)?.toDouble(),
      labelColor_color: json['labelColor_color'] as String?,
      labelPadding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['labelPadding_edgeInsets'] as Map<String, dynamic>?),
      labelStyle_textStyle: json['labelStyle_textStyle'] as String?,
      unselectedLabelColor_color: json['unselectedLabelColor_color'] as String?,
      unselectedLabelStyle_textStyle:
          json['unselectedLabelStyle_textStyle'] as String?,
      overlayColor_color: json['overlayColor_color'] as String?,
      tabAlignment_enum_tabAlignment: $enumDecodeNullable(
          _$TabAlignmentEnumMap, json['tabAlignment_enum_tabAlignment']),
    );

Map<String, dynamic> _$$TabBarModelImplToJson(_$TabBarModelImpl instance) =>
    <String, dynamic>{
      'indicator_boxDecoration': instance.indicator_boxDecoration?.toJson(),
      'indicatorColor_color': instance.indicatorColor_color,
      'dividerColor_color': instance.dividerColor_color,
      'indicatorSize_enum_tabBarIndicatorSize': _$TabBarIndicatorSizeEnumMap[
          instance.indicatorSize_enum_tabBarIndicatorSize],
      'dividerHeight_double': instance.dividerHeight_double,
      'labelColor_color': instance.labelColor_color,
      'labelPadding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.labelPadding_edgeInsets),
      'labelStyle_textStyle': instance.labelStyle_textStyle,
      'unselectedLabelColor_color': instance.unselectedLabelColor_color,
      'unselectedLabelStyle_textStyle': instance.unselectedLabelStyle_textStyle,
      'overlayColor_color': instance.overlayColor_color,
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
