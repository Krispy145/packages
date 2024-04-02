// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationPermissionsImpl _$$NotificationPermissionsImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationPermissionsImpl(
      alert: json['alert'] as bool? ?? true,
      announcement: json['announcement'] as bool? ?? false,
      badge: json['badge'] as bool? ?? true,
      carPlay: json['carPlay'] as bool? ?? false,
      criticalAlert: json['criticalAlert'] as bool? ?? false,
      provisional: json['provisional'] as bool? ?? false,
      sound: json['sound'] as bool? ?? true,
      webVapidKey: json['webVapidKey'] as String?,
    );

Map<String, dynamic> _$$NotificationPermissionsImplToJson(
        _$NotificationPermissionsImpl instance) =>
    <String, dynamic>{
      'alert': instance.alert,
      'announcement': instance.announcement,
      'badge': instance.badge,
      'carPlay': instance.carPlay,
      'criticalAlert': instance.criticalAlert,
      'provisional': instance.provisional,
      'sound': instance.sound,
      'webVapidKey': instance.webVapidKey,
    };
