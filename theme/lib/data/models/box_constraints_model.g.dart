// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_constraints_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxConstraintsModelImpl _$$BoxConstraintsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxConstraintsModelImpl(
      minWidth_double: (json['minWidth_double'] as num?)?.toDouble(),
      maxWidth_double: (json['maxWidth_double'] as num?)?.toDouble(),
      minHeight_double: (json['minHeight_double'] as num?)?.toDouble(),
      maxHeight_double: (json['maxHeight_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BoxConstraintsModelImplToJson(
        _$BoxConstraintsModelImpl instance) =>
    <String, dynamic>{
      'minWidth_double': instance.minWidth_double,
      'maxWidth_double': instance.maxWidth_double,
      'minHeight_double': instance.minHeight_double,
      'maxHeight_double': instance.maxHeight_double,
    };
