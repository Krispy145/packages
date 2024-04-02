// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppbarModelImpl _$$AppbarModelImplFromJson(Map<String, dynamic> json) =>
    _$AppbarModelImpl(
      color: json['color'] as String?,
      backgroundColor: json['backgroundColor'] as String?,
      foregroundColor: json['foregroundColor'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      scrolledUnderElevation:
          (json['scrolledUnderElevation'] as num?)?.toDouble(),
      shadowColor: json['shadowColor'] as String?,
      surfaceTintColor: json['surfaceTintColor'] as String?,
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      centerTitle: json['centerTitle'] as bool?,
      titleSpacing: (json['titleSpacing'] as num?)?.toDouble(),
      toolbarHeight: (json['toolbarHeight'] as num?)?.toDouble(),
      toolbarTextStyle: json['toolbarTextStyle'] as String?,
      titleTextStyle: json['titleTextStyle'] as String?,
    );

Map<String, dynamic> _$$AppbarModelImplToJson(_$AppbarModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'foregroundColor': instance.foregroundColor,
      'elevation': instance.elevation,
      'scrolledUnderElevation': instance.scrolledUnderElevation,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'centerTitle': instance.centerTitle,
      'titleSpacing': instance.titleSpacing,
      'toolbarHeight': instance.toolbarHeight,
      'toolbarTextStyle': instance.toolbarTextStyle,
      'titleTextStyle': instance.titleTextStyle,
    };
