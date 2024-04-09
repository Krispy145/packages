// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popup_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopupMenuModelImpl _$$PopupMenuModelImplFromJson(Map<String, dynamic> json) =>
    _$PopupMenuModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      textStyle_textStyleString: json['textStyle_textStyleString'] as String?,
      labelTextStyle_textStyleString:
          json['labelTextStyle_textStyleString'] as String?,
      enableFeedback_bool: json['enableFeedback_bool'] as bool?,
      position:
          $enumDecodeNullable(_$PopupMenuPositionEnumMap, json['position']) ??
              PopupMenuPosition.under,
      iconColor_themeColorString: json['iconColor_themeColorString'] as String?,
      iconSize_double: (json['iconSize_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PopupMenuModelImplToJson(
        _$PopupMenuModelImpl instance) =>
    <String, dynamic>{
      'color_themeColorString': instance.color_themeColorString,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'elevation_double': instance.elevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'textStyle_textStyleString': instance.textStyle_textStyleString,
      'labelTextStyle_textStyleString': instance.labelTextStyle_textStyleString,
      'enableFeedback_bool': instance.enableFeedback_bool,
      'position': _$PopupMenuPositionEnumMap[instance.position]!,
      'iconColor_themeColorString': instance.iconColor_themeColorString,
      'iconSize_double': instance.iconSize_double,
    };

const _$PopupMenuPositionEnumMap = {
  PopupMenuPosition.over: 'over',
  PopupMenuPosition.under: 'under',
};
