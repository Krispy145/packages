// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrawerModelImpl _$$DrawerModelImplFromJson(Map<String, dynamic> json) =>
    _$DrawerModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      scrimColor: json['scrimColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      endShape: const OutlinedBorderConverter()
          .fromJson(json['endShape'] as Map<String, dynamic>?),
      width: (json['width'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DrawerModelImplToJson(_$DrawerModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'scrimColor': instance.scrimColor,
      'elevation': instance.elevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'endShape': const OutlinedBorderConverter().toJson(instance.endShape),
      'width': instance.width,
    };
