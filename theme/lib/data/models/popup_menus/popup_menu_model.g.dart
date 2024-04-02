// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popup_menu_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopupMenuModelImpl _$$PopupMenuModelImplFromJson(Map<String, dynamic> json) =>
    _$PopupMenuModelImpl(
      color: json['color'] as String?,
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      textStyle: json['textStyle'] as String?,
      labelTextStyle: json['labelTextStyle'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
      position:
          $enumDecodeNullable(_$PopupMenuPositionEnumMap, json['position']) ??
              PopupMenuPosition.under,
      iconColor: json['iconColor'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PopupMenuModelImplToJson(
        _$PopupMenuModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'textStyle': instance.textStyle,
      'labelTextStyle': instance.labelTextStyle,
      'enableFeedback': instance.enableFeedback,
      'position': _$PopupMenuPositionEnumMap[instance.position]!,
      'iconColor': instance.iconColor,
      'iconSize': instance.iconSize,
    };

const _$PopupMenuPositionEnumMap = {
  PopupMenuPosition.over: 'over',
  PopupMenuPosition.under: 'under',
};
