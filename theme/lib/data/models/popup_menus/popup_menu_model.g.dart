// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popup_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopupMenuModelImpl _$$PopupMenuModelImplFromJson(Map<String, dynamic> json) =>
    _$PopupMenuModelImpl(
      color_color: json['color_color'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      labelTextStyle_textStyle: json['labelTextStyle_textStyle'] as String?,
      enableFeedback_bool: json['enableFeedback_bool'] as bool?,
      position:
          $enumDecodeNullable(_$PopupMenuPositionEnumMap, json['position']) ??
              PopupMenuPosition.under,
      iconColor_color: json['iconColor_color'] as String?,
      iconSize_double: (json['iconSize_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PopupMenuModelImplToJson(
        _$PopupMenuModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'elevation_double': instance.elevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'textStyle_textStyle': instance.textStyle_textStyle,
      'labelTextStyle_textStyle': instance.labelTextStyle_textStyle,
      'enableFeedback_bool': instance.enableFeedback_bool,
      'position': _$PopupMenuPositionEnumMap[instance.position]!,
      'iconColor_color': instance.iconColor_color,
      'iconSize_double': instance.iconSize_double,
    };

const _$PopupMenuPositionEnumMap = {
  PopupMenuPosition.over: 'over',
  PopupMenuPosition.under: 'under',
};
