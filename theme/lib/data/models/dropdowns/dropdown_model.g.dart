// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DropdownModelImpl _$$DropdownModelImplFromJson(Map<String, dynamic> json) =>
    _$DropdownModelImpl(
      textStyle_textStyleString: json['textStyle_textStyleString'] as String?,
      inputDecoration_inputDecoration:
          json['inputDecoration_inputDecoration'] == null
              ? null
              : InputDecorationModel.fromJson(
                  json['inputDecoration_inputDecoration']
                      as Map<String, dynamic>),
      menuStyle_menu: json['menuStyle_menu'] == null
          ? null
          : MenuStyleModel.fromJson(
              json['menuStyle_menu'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DropdownModelImplToJson(_$DropdownModelImpl instance) =>
    <String, dynamic>{
      'textStyle_textStyleString': instance.textStyle_textStyleString,
      'inputDecoration_inputDecoration':
          instance.inputDecoration_inputDecoration?.toJson(),
      'menuStyle_menu': instance.menuStyle_menu?.toJson(),
    };
