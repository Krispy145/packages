// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppDestinationImpl _$$AppDestinationImplFromJson(Map<String, dynamic> json) =>
    _$AppDestinationImpl(
      routeName: json['routeName'] as String,
      arguments: (json['arguments'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$AppDestinationImplToJson(
        _$AppDestinationImpl instance) =>
    <String, dynamic>{
      'routeName': instance.routeName,
      'arguments': instance.arguments,
    };
