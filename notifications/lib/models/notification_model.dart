import "package:dart_mappable/dart_mappable.dart";
import "package:navigation/models/app_destination_model.dart";

part "notification_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class NotificationModel with NotificationModelMappable {
  final String id;
  final int localId;
  final String? type;
  final String? title;
  final String? body;
  final String? imageUrl;
  final String? topic;
  final DateTime? scheduledTime;
  final DateTime? sentTime;
  final AppDestinationModel? destination;
  final bool isLocalNotification;
  final bool isRead;

  const NotificationModel({
    required this.id,
    required this.localId,
    this.type,
    this.title,
    this.body,
    this.imageUrl,
    this.topic,
    this.scheduledTime,
    this.sentTime,
    this.destination,
    this.isLocalNotification = false,
    this.isRead = false,
  });

  // Note: Was converting dates to toIso8601String() in the toStringMap() method, left out for now.

  static const fromMap = NotificationModelMapper.fromMap;
  static const fromJson = NotificationModelMapper.fromJson;

  // /// [NotificationModel] constructor from string map.
  // factory NotificationModel.fromStringMap(Map<String, dynamic> map) {
  //   return NotificationModel(
  //     id: map["id"] as String,
  //     localId: int.parse(map["local_id"] as String),
  //     type: map["type"] as String?,
  //     title: map["title"] as String?,
  //     body: map["body"] as String?,
  //     imageUrl: map["image_url"] as String?,
  //     topic: map["topic"] as String?,
  //     scheduledTime: map["scheduled_time"] != null ? DateTime.parse(map["scheduled_time"] as String) : null,
  //     isLocalNotification: map["is_local_notification"] != null ? bool.parse(map["is_local_notification"] as String) : false,
  //     isRead: map["is_read"] != null ? bool.parse(map["is_read"] as String) : false,
  //     destination: map["destination"] != null
  //         ? AppDestinationModel.fromStringMap(
  //             map["destination"] as Map<String, dynamic>,
  //           )
  //         : null,
  //   );
  // }

  /// [toStringMap] converts the [NotificationModel] to a string map.
  Map<String, String> toStringMap() {
    final returnMap = <String, String>{};
    returnMap["id"] = id;
    returnMap["local_id"] = localId.toString();
    if (type != null) {
      returnMap["type"] = type!;
    }
    if (title != null) {
      returnMap["title"] = title!;
    }
    if (body != null) {
      returnMap["body"] = body!;
    }
    if (imageUrl != null) {
      returnMap["image_url"] = imageUrl!;
    }
    if (topic != null) {
      returnMap["topic"] = topic!;
    }
    if (scheduledTime != null) {
      returnMap["scheduled_time"] = scheduledTime!.toIso8601String();
    }
    returnMap["is_local_notification"] = isLocalNotification.toString();
    returnMap["is_read"] = isRead.toString();
    if (destination != null) {
      returnMap["destination"] = destination!.toStringMap().toString();
    }
    return returnMap;
  }
}
