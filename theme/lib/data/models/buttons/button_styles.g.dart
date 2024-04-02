// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonStylesImpl _$$ButtonStylesImplFromJson(Map<String, dynamic> json) =>
    _$ButtonStylesImpl(
      elevated: (json['elevated'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      outlined: (json['outlined'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      text: (json['text'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      icon: (json['icon'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      filled: (json['filled'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      menu: (json['menu'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      segmented: (json['segmented'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ButtonStyleModel.fromJson(e as Map<String, dynamic>)),
      ),
      floatingAction: (json['floatingAction'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, FloatingActionButtonModel.fromJson(e as Map<String, dynamic>)),
      ),
      toggle: (json['toggle'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, ToggleButtonModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ButtonStylesImplToJson(_$ButtonStylesImpl instance) =>
    <String, dynamic>{
      'elevated': instance.elevated?.map((k, e) => MapEntry(k, e.toJson())),
      'outlined': instance.outlined?.map((k, e) => MapEntry(k, e.toJson())),
      'text': instance.text?.map((k, e) => MapEntry(k, e.toJson())),
      'icon': instance.icon?.map((k, e) => MapEntry(k, e.toJson())),
      'filled': instance.filled?.map((k, e) => MapEntry(k, e.toJson())),
      'menu': instance.menu?.map((k, e) => MapEntry(k, e.toJson())),
      'segmented': instance.segmented?.map((k, e) => MapEntry(k, e.toJson())),
      'floatingAction':
          instance.floatingAction?.map((k, e) => MapEntry(k, e.toJson())),
      'toggle': instance.toggle?.map((k, e) => MapEntry(k, e.toJson())),
    };
