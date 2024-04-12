// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_border_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxBorderModelImpl _$$BoxBorderModelImplFromJson(Map<String, dynamic> json) =>
    _$BoxBorderModelImpl(
      top: json['top'] == null
          ? null
          : BorderSideModel.fromJson(json['top'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : BorderSideModel.fromJson(json['bottom'] as Map<String, dynamic>),
      left: json['left'] == null
          ? null
          : BorderSideModel.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : BorderSideModel.fromJson(json['right'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BoxBorderModelImplToJson(
        _$BoxBorderModelImpl instance) =>
    <String, dynamic>{
      'top': instance.top?.toJson(),
      'bottom': instance.bottom?.toJson(),
      'left': instance.left?.toJson(),
      'right': instance.right?.toJson(),
    };
