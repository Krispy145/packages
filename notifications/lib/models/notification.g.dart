// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: json['id'] as String,
      localId: json['localId'] as int,
      type: json['type'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      imageUrl: json['imageUrl'] as String?,
      topic: json['topic'] as String?,
      scheduledTime: json['scheduledTime'] == null
          ? null
          : DateTime.parse(json['scheduledTime'] as String),
      destination: json['destination'] == null
          ? null
          : AppDestination.fromJson(
              json['destination'] as Map<String, dynamic>),
      isLocalNotification: json['isLocalNotification'] as bool? ?? false,
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'localId': instance.localId,
      'type': instance.type,
      'title': instance.title,
      'body': instance.body,
      'imageUrl': instance.imageUrl,
      'topic': instance.topic,
      'scheduledTime': instance.scheduledTime?.toIso8601String(),
      'destination': instance.destination,
      'isLocalNotification': instance.isLocalNotification,
      'isRead': instance.isRead,
    };
