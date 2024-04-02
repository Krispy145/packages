// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_action_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FloatingActionButtonModelImpl _$$FloatingActionButtonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FloatingActionButtonModelImpl(
      foregroundColor: json['foregroundColor'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      splashColor: json['splashColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      focusElevation: (json['focusElevation'] as num?)?.toDouble(),
      hoverElevation: (json['hoverElevation'] as num?)?.toDouble(),
      disabledElevation: (json['disabledElevation'] as num?)?.toDouble(),
      highlightElevation: (json['highlightElevation'] as num?)?.toDouble(),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      enableFeedback: json['enableFeedback'] as bool?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      sizeConstraints: const BoxConstraintsConverter()
          .fromJson(json['sizeConstraints'] as Map<String, dynamic>?),
      smallSizeConstraints: const BoxConstraintsConverter()
          .fromJson(json['smallSizeConstraints'] as Map<String, dynamic>?),
      largeSizeConstraints: const BoxConstraintsConverter()
          .fromJson(json['largeSizeConstraints'] as Map<String, dynamic>?),
      extendedSizeConstraints: const BoxConstraintsConverter()
          .fromJson(json['extendedSizeConstraints'] as Map<String, dynamic>?),
      extendedIconLabelSpacing:
          (json['extendedIconLabelSpacing'] as num?)?.toDouble(),
      extendedPadding: const EdgeInsetsConverter()
          .fromJson(json['extendedPadding'] as Map<String, dynamic>?),
      extendedTextStyle: json['extendedTextStyle'] as String?,
    );

Map<String, dynamic> _$$FloatingActionButtonModelImplToJson(
        _$FloatingActionButtonModelImpl instance) =>
    <String, dynamic>{
      'foregroundColor': instance.foregroundColor,
      'backgroundColor': instance.backgroundColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'splashColor': instance.splashColor,
      'elevation': instance.elevation,
      'focusElevation': instance.focusElevation,
      'hoverElevation': instance.hoverElevation,
      'disabledElevation': instance.disabledElevation,
      'highlightElevation': instance.highlightElevation,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'enableFeedback': instance.enableFeedback,
      'iconSize': instance.iconSize,
      'sizeConstraints':
          const BoxConstraintsConverter().toJson(instance.sizeConstraints),
      'smallSizeConstraints':
          const BoxConstraintsConverter().toJson(instance.smallSizeConstraints),
      'largeSizeConstraints':
          const BoxConstraintsConverter().toJson(instance.largeSizeConstraints),
      'extendedSizeConstraints': const BoxConstraintsConverter()
          .toJson(instance.extendedSizeConstraints),
      'extendedIconLabelSpacing': instance.extendedIconLabelSpacing,
      'extendedPadding':
          const EdgeInsetsConverter().toJson(instance.extendedPadding),
      'extendedTextStyle': instance.extendedTextStyle,
    };
