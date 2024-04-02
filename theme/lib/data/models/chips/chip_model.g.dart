// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChipModelImpl _$$ChipModelImplFromJson(Map<String, dynamic> json) =>
    _$ChipModelImpl(
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      deleteIconColor: json['deleteIconColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      selectedColor: json['selectedColor'] as String?,
      secondarySelectedColor: json['secondarySelectedColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      selectedShadowColor: json['selectedShadowColor'] as String?,
      showCheckmark: json['showCheckmark'] as bool?,
      checkmarkColor: json['checkmarkColor'] as String?,
      labelPadding: const EdgeInsetsConverter()
          .fromJson(json['labelPadding'] as Map<String, dynamic>?),
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      labelStyle: json['labelStyle'] as String?,
      secondaryLabelStyle: json['secondaryLabelStyle'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      pressElevation: (json['pressElevation'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ChipModelImplToJson(_$ChipModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'deleteIconColor': instance.deleteIconColor,
      'disabledColor': instance.disabledColor,
      'selectedColor': instance.selectedColor,
      'secondarySelectedColor': instance.secondarySelectedColor,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'selectedShadowColor': instance.selectedShadowColor,
      'showCheckmark': instance.showCheckmark,
      'checkmarkColor': instance.checkmarkColor,
      'labelPadding': const EdgeInsetsConverter().toJson(instance.labelPadding),
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'side': const BorderSideConverter().toJson(instance.side),
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'labelStyle': instance.labelStyle,
      'secondaryLabelStyle': instance.secondaryLabelStyle,
      'elevation': instance.elevation,
      'pressElevation': instance.pressElevation,
    };
