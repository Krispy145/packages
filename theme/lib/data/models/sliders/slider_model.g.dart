// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      trackHeight_double: (json['trackHeight_double'] as num?)?.toDouble(),
      activeTrackColor_color: json['activeTrackColor_color'] as String?,
      inactiveTrackColor_color: json['inactiveTrackColor_color'] as String?,
      secondaryActiveTrackColor_color:
          json['secondaryActiveTrackColor_color'] as String?,
      disabledActiveTrackColor_color:
          json['disabledActiveTrackColor_color'] as String?,
      disabledInactiveTrackColor_color:
          json['disabledInactiveTrackColor_color'] as String?,
      disabledSecondaryActiveTrackColor_color:
          json['disabledSecondaryActiveTrackColor_color'] as String?,
      activeTickMarkColor_color: json['activeTickMarkColor_color'] as String?,
      inactiveTickMarkColor_color:
          json['inactiveTickMarkColor_color'] as String?,
      disabledActiveTickMarkColor_color:
          json['disabledActiveTickMarkColor_color'] as String?,
      disabledInactiveTickMarkColor_color:
          json['disabledInactiveTickMarkColor_color'] as String?,
      thumbColor_color: json['thumbColor_color'] as String?,
      overlappingShapeStrokeColor_color:
          json['overlappingShapeStrokeColor_color'] as String?,
      disabledThumbColor_color: json['disabledThumbColor_color'] as String?,
      overlayColor_color: json['overlayColor_color'] as String?,
      valueIndicatorColor_color: json['valueIndicatorColor_color'] as String?,
      showValueIndicator_enum_showValueIndicator: $enumDecodeNullable(
          _$ShowValueIndicatorEnumMap,
          json['showValueIndicator_enum_showValueIndicator']),
      allowedInteraction_enum_sliderInteraction: $enumDecodeNullable(
          _$SliderInteractionEnumMap,
          json['allowedInteraction_enum_sliderInteraction']),
      valueIndicatorTextStyle_textStyle:
          json['valueIndicatorTextStyle_textStyle'] as String?,
      minThumbSeparation_double:
          (json['minThumbSeparation_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'trackHeight_double': instance.trackHeight_double,
      'activeTrackColor_color': instance.activeTrackColor_color,
      'inactiveTrackColor_color': instance.inactiveTrackColor_color,
      'secondaryActiveTrackColor_color':
          instance.secondaryActiveTrackColor_color,
      'disabledActiveTrackColor_color': instance.disabledActiveTrackColor_color,
      'disabledInactiveTrackColor_color':
          instance.disabledInactiveTrackColor_color,
      'disabledSecondaryActiveTrackColor_color':
          instance.disabledSecondaryActiveTrackColor_color,
      'activeTickMarkColor_color': instance.activeTickMarkColor_color,
      'inactiveTickMarkColor_color': instance.inactiveTickMarkColor_color,
      'disabledActiveTickMarkColor_color':
          instance.disabledActiveTickMarkColor_color,
      'disabledInactiveTickMarkColor_color':
          instance.disabledInactiveTickMarkColor_color,
      'thumbColor_color': instance.thumbColor_color,
      'overlappingShapeStrokeColor_color':
          instance.overlappingShapeStrokeColor_color,
      'disabledThumbColor_color': instance.disabledThumbColor_color,
      'overlayColor_color': instance.overlayColor_color,
      'valueIndicatorColor_color': instance.valueIndicatorColor_color,
      'showValueIndicator_enum_showValueIndicator': _$ShowValueIndicatorEnumMap[
          instance.showValueIndicator_enum_showValueIndicator],
      'allowedInteraction_enum_sliderInteraction': _$SliderInteractionEnumMap[
          instance.allowedInteraction_enum_sliderInteraction],
      'valueIndicatorTextStyle_textStyle':
          instance.valueIndicatorTextStyle_textStyle,
      'minThumbSeparation_double': instance.minThumbSeparation_double,
    };

const _$ShowValueIndicatorEnumMap = {
  ShowValueIndicator.onlyForDiscrete: 'onlyForDiscrete',
  ShowValueIndicator.onlyForContinuous: 'onlyForContinuous',
  ShowValueIndicator.always: 'always',
  ShowValueIndicator.never: 'never',
};

const _$SliderInteractionEnumMap = {
  SliderInteraction.tapAndSlide: 'tapAndSlide',
  SliderInteraction.tapOnly: 'tapOnly',
  SliderInteraction.slideOnly: 'slideOnly',
  SliderInteraction.slideThumb: 'slideThumb',
};
