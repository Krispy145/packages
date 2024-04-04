// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_bar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuBarModelImpl _$$MenuBarModelImplFromJson(Map<String, dynamic> json) =>
    _$MenuBarModelImpl(
      style: json['style'] == null
          ? null
          : MenuStyleModel.fromJson(json['style'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MenuBarModelImplToJson(_$MenuBarModelImpl instance) =>
    <String, dynamic>{
      'style': instance.style?.toJson(),
    };
