import "package:dart_mappable/dart_mappable.dart";
import "package:navigation/models/app_destination_model.dart";

part "notification_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class NotificationModel with NotificationModelMappable {
  final String id;
  final int localId; // TODO: David - sprinkle coding dust around here
  final String? type;
  final String? title;
  final String? body;
  final String? imageUrl;
  final String? topic;
  final DateTime? scheduledTime;
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
    this.destination,
    this.isLocalNotification = false,
    this.isRead = false,
  });

  // Note: Was converting dates to toIso8601String() in the toStringMap() method, left out for now.

  static const fromMap = NotificationModelMapper.fromMap;
  static const fromJson = NotificationModelMapper.fromJson;

  // static const empty = NotificationModel(id: "", localId: 0);

  // static const notificationOne = NotificationModel(
  //   id: "notificationOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const notificationTwo = NotificationModel(
  //   id: "notificationTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const notificationThree = NotificationModel(
  //   id: "notificationThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  static final List<NotificationModel> fakeData = [
    // notificationOne,
    // notificationTwo,
    // notificationThree,
  ];
}




// /// [NotificationModel] is the model for a notification.
// @freezed
// class NotificationModel with _$NotificationModel {
//   /// [NotificationModel] constructor.
//   const factory NotificationModel({
//     required String id,
//     required int localId,
//     String? type,
//     String? title,
//     String? body,
//     String? imageUrl,
//     String? topic,
//     DateTime? scheduledTime,
//     AppDestination? destination,
//     @Default(false) bool isLocalNotification,
//     @Default(false) bool isRead,
//   }) = _NotificationModel;
//   const NotificationModel._();

//   /// [NotificationModel] constructor from string map.
//   factory NotificationModel.fromStringMap(Map<String, dynamic> map) {
//     return NotificationModel(
//       id: map["id"] as String,
//       localId: int.parse(map["localId"] as String),
//       type: map["type"] as String?,
//       title: map["title"] as String?,
//       body: map["body"] as String?,
//       imageUrl: map["imageUrl"] as String?,
//       topic: map["topic"] as String?,
//       scheduledTime: map["scheduledTime"] != null ? DateTime.parse(map["scheduledTime"] as String) : null,
//       isLocalNotification: map["isLocalNotification"] != null ? bool.parse(map["isLocalNotification"] as String) : false,
//       isRead: map["isRead"] != null ? bool.parse(map["isRead"] as String) : false,
//       destination: map["destination"] != null
//           ? AppDestination.fromStringMap(
//               map["destination"] as Map<String, dynamic>,
//             )
//           : null,
//     );
//   }

//   /// [toStringMap] converts the [NotificationModel] to a string map.
//   Map<String, String?> toStringMap() {
//     final returnMap = <String, String>{};
//     returnMap["id"] = id;
//     returnMap["localId"] = localId.toString();
//     if (type != null) {
//       returnMap["type"] = type!;
//     }
//     if (title != null) {
//       returnMap["title"] = title!;
//     }
//     if (body != null) {
//       returnMap["body"] = body!;
//     }
//     if (imageUrl != null) {
//       returnMap["imageUrl"] = imageUrl!;
//     }
//     if (topic != null) {
//       returnMap["topic"] = topic!;
//     }
//     if (scheduledTime != null) {
//       returnMap["scheduledTime"] = scheduledTime!.toIso8601String();
//     }

//     returnMap["isLocalNotification"] = isLocalNotification.toString();
//     returnMap["isRead"] = isRead.toString();
//     if (destination != null) {
//       returnMap["destination"] = destination!.toStringMap().toString();
//     }
//     return returnMap;
//     // return {
//     //   'id': id,
//     //   'localId': localId.toString(),
//     //   'type': type,
//     //   'title': title,
//     //   'body': body,
//     //   'imageUrl': imageUrl,
//     //   'topic': topic,
//     //   'scheduledTime': scheduledTime?.toIso8601String(),
//     //   'isLocalNotification': isLocalNotification.toString(),
//     //   'isRead': isRead.toString(),
//     //   'destination': destination?.toStringMap().toString(),
//     // };
//   }

//   /// [NotificationModel] constructor from JSON.
//   factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);
// }
