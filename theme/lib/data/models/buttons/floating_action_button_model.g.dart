// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_action_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FloatingActionButtonModelImpl _$$FloatingActionButtonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FloatingActionButtonModelImpl(
      foregroundColor_color: json['foregroundColor_color'] as String?,
      backgroundColor_color: json['backgroundColor_color'] as String?,
      focusColor_color: json['focusColor_color'] as String?,
      hoverColor_color: json['hoverColor_color'] as String?,
      splashColor_color: json['splashColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      focusElevation_double:
          (json['focusElevation_double'] as num?)?.toDouble(),
      hoverElevation_double:
          (json['hoverElevation_double'] as num?)?.toDouble(),
      disabledElevation_double:
          (json['disabledElevation_double'] as num?)?.toDouble(),
      highlightElevation_double:
          (json['highlightElevation_double'] as num?)?.toDouble(),
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      enableFeedback_bool: json['enableFeedback_bool'] as bool?,
      iconSize_double: (json['iconSize_double'] as num?)?.toDouble(),
      sizeConstraints_boxConstraints: json['sizeConstraints_boxConstraints'] ==
              null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['sizeConstraints_boxConstraints'] as Map<String, dynamic>),
      smallSizeConstraints_boxConstraints:
          json['smallSizeConstraints_boxConstraints'] == null
              ? const BoxConstraintsModel()
              : BoxConstraintsModel.fromJson(
                  json['smallSizeConstraints_boxConstraints']
                      as Map<String, dynamic>),
      largeSizeConstraints_boxConstraints:
          json['largeSizeConstraints_boxConstraints'] == null
              ? const BoxConstraintsModel()
              : BoxConstraintsModel.fromJson(
                  json['largeSizeConstraints_boxConstraints']
                      as Map<String, dynamic>),
      extendedSizeConstraints_boxConstraints:
          json['extendedSizeConstraints_boxConstraints'] == null
              ? const BoxConstraintsModel()
              : BoxConstraintsModel.fromJson(
                  json['extendedSizeConstraints_boxConstraints']
                      as Map<String, dynamic>),
      extendedIconLabelSpacing_double:
          (json['extendedIconLabelSpacing_double'] as num?)?.toDouble(),
      extendedPadding_edgeInsets: json['extendedPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['extendedPadding_edgeInsets'] as Map<String, dynamic>),
      extendedTextStyle_textStyle:
          json['extendedTextStyle_textStyle'] as String?,
    );

Map<String, dynamic> _$$FloatingActionButtonModelImplToJson(
        _$FloatingActionButtonModelImpl instance) =>
    <String, dynamic>{
      'foregroundColor_color': instance.foregroundColor_color,
      'backgroundColor_color': instance.backgroundColor_color,
      'focusColor_color': instance.focusColor_color,
      'hoverColor_color': instance.hoverColor_color,
      'splashColor_color': instance.splashColor_color,
      'elevation_double': instance.elevation_double,
      'focusElevation_double': instance.focusElevation_double,
      'hoverElevation_double': instance.hoverElevation_double,
      'disabledElevation_double': instance.disabledElevation_double,
      'highlightElevation_double': instance.highlightElevation_double,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'enableFeedback_bool': instance.enableFeedback_bool,
      'iconSize_double': instance.iconSize_double,
      'sizeConstraints_boxConstraints':
          instance.sizeConstraints_boxConstraints?.toJson(),
      'smallSizeConstraints_boxConstraints':
          instance.smallSizeConstraints_boxConstraints?.toJson(),
      'largeSizeConstraints_boxConstraints':
          instance.largeSizeConstraints_boxConstraints?.toJson(),
      'extendedSizeConstraints_boxConstraints':
          instance.extendedSizeConstraints_boxConstraints?.toJson(),
      'extendedIconLabelSpacing_double':
          instance.extendedIconLabelSpacing_double,
      'extendedPadding_edgeInsets':
          instance.extendedPadding_edgeInsets?.toJson(),
      'extendedTextStyle_textStyle': instance.extendedTextStyle_textStyle,
    };
