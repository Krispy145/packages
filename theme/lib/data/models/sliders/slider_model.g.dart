// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      trackHeight_double: (json['trackHeight_double'] as num?)?.toDouble(),
      activeTrackColor_themeColorString:
          json['activeTrackColor_themeColorString'] as String?,
      inactiveTrackColor_themeColorString:
          json['inactiveTrackColor_themeColorString'] as String?,
      secondaryActiveTrackColor_themeColorString:
          json['secondaryActiveTrackColor_themeColorString'] as String?,
      disabledActiveTrackColor_themeColorString:
          json['disabledActiveTrackColor_themeColorString'] as String?,
      disabledInactiveTrackColor_themeColorString:
          json['disabledInactiveTrackColor_themeColorString'] as String?,
      disabledSecondaryActiveTrackColor_themeColorString:
          json['disabledSecondaryActiveTrackColor_themeColorString'] as String?,
      activeTickMarkColor_themeColorString:
          json['activeTickMarkColor_themeColorString'] as String?,
      inactiveTickMarkColor_themeColorString:
          json['inactiveTickMarkColor_themeColorString'] as String?,
      disabledActiveTickMarkColor_themeColorString:
          json['disabledActiveTickMarkColor_themeColorString'] as String?,
      disabledInactiveTickMarkColor_themeColorString:
          json['disabledInactiveTickMarkColor_themeColorString'] as String?,
      thumbColor_themeColorString:
          json['thumbColor_themeColorString'] as String?,
      overlappingShapeStrokeColor_themeColorString:
          json['overlappingShapeStrokeColor_themeColorString'] as String?,
      disabledThumbColor_themeColorString:
          json['disabledThumbColor_themeColorString'] as String?,
      overlayColor_themeColorString:
          json['overlayColor_themeColorString'] as String?,
      valueIndicatorColor_themeColorString:
          json['valueIndicatorColor_themeColorString'] as String?,
      showValueIndicator_enum_showValueIndicator: $enumDecodeNullable(
          _$ShowValueIndicatorEnumMap,
          json['showValueIndicator_enum_showValueIndicator']),
      allowedInteraction_enum_sliderInteraction: $enumDecodeNullable(
          _$SliderInteractionEnumMap,
          json['allowedInteraction_enum_sliderInteraction']),
      valueIndicatorTextStyle_textStyleString:
          json['valueIndicatorTextStyle_textStyleString'] as String?,
      minThumbSeparation_double:
          (json['minThumbSeparation_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'trackHeight_double': instance.trackHeight_double,
      'activeTrackColor_themeColorString':
          instance.activeTrackColor_themeColorString,
      'inactiveTrackColor_themeColorString':
          instance.inactiveTrackColor_themeColorString,
      'secondaryActiveTrackColor_themeColorString':
          instance.secondaryActiveTrackColor_themeColorString,
      'disabledActiveTrackColor_themeColorString':
          instance.disabledActiveTrackColor_themeColorString,
      'disabledInactiveTrackColor_themeColorString':
          instance.disabledInactiveTrackColor_themeColorString,
      'disabledSecondaryActiveTrackColor_themeColorString':
          instance.disabledSecondaryActiveTrackColor_themeColorString,
      'activeTickMarkColor_themeColorString':
          instance.activeTickMarkColor_themeColorString,
      'inactiveTickMarkColor_themeColorString':
          instance.inactiveTickMarkColor_themeColorString,
      'disabledActiveTickMarkColor_themeColorString':
          instance.disabledActiveTickMarkColor_themeColorString,
      'disabledInactiveTickMarkColor_themeColorString':
          instance.disabledInactiveTickMarkColor_themeColorString,
      'thumbColor_themeColorString': instance.thumbColor_themeColorString,
      'overlappingShapeStrokeColor_themeColorString':
          instance.overlappingShapeStrokeColor_themeColorString,
      'disabledThumbColor_themeColorString':
          instance.disabledThumbColor_themeColorString,
      'overlayColor_themeColorString': instance.overlayColor_themeColorString,
      'valueIndicatorColor_themeColorString':
          instance.valueIndicatorColor_themeColorString,
      'showValueIndicator_enum_showValueIndicator': _$ShowValueIndicatorEnumMap[
          instance.showValueIndicator_enum_showValueIndicator],
      'allowedInteraction_enum_sliderInteraction': _$SliderInteractionEnumMap[
          instance.allowedInteraction_enum_sliderInteraction],
      'valueIndicatorTextStyle_textStyleString':
          instance.valueIndicatorTextStyle_textStyleString,
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
