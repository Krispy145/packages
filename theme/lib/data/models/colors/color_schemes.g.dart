// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_schemes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$themeColorStringSchemesImpl _$$themeColorStringSchemesImplFromJson(
        Map<String, dynamic> json) =>
    _$themeColorStringSchemesImpl(
      light: ColorModel.fromJson(json['light'] as Map<String, dynamic>),
      dark: ColorModel.fromJson(json['dark'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$themeColorStringSchemesImplToJson(
        _$themeColorStringSchemesImpl instance) =>
    <String, dynamic>{
      'light': instance.light.toJson(),
      'dark': instance.dark.toJson(),
    };
