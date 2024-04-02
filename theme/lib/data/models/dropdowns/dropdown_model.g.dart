// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropdownModelImpl _$$DropdownModelImplFromJson(Map<String, dynamic> json) =>
    _$DropdownModelImpl(
      textStyle: json['textStyle'] as String?,
      inputDecoration: json['inputDecoration'] == null
          ? null
          : InputDecorationModel.fromJson(
              json['inputDecoration'] as Map<String, dynamic>),
      menuStyle: json['menuStyle'] == null
          ? null
          : MenuModel.fromJson(json['menuStyle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DropdownModelImplToJson(_$DropdownModelImpl instance) =>
    <String, dynamic>{
      'textStyle': instance.textStyle,
      'inputDecoration': instance.inputDecoration?.toJson(),
      'menuStyle': instance.menuStyle?.toJson(),
    };
