// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottomAppbarModelImpl _$$BottomAppbarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BottomAppbarModelImpl(
      color: json['color'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shadowColor: json['shadowColor'] as String?,
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$BottomAppbarModelImplToJson(
        _$BottomAppbarModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'elevation': instance.elevation,
      'height': instance.height,
      'surfaceTintColor': instance.surfaceTintColor,
      'shadowColor': instance.shadowColor,
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
    };
