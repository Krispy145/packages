// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_schemes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColorSchemesImpl _$$ColorSchemesImplFromJson(Map<String, dynamic> json) =>
    _$ColorSchemesImpl(
      light: ColorModel.fromJson(json['light'] as Map<String, dynamic>),
      dark: ColorModel.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ColorSchemesImplToJson(_$ColorSchemesImpl instance) =>
    <String, dynamic>{
      'light': instance.light.toJson(),
      'dark': instance.dark.toJson(),
    };
