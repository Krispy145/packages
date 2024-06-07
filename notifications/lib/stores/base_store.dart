import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:mobx/mobx.dart";
import "package:notifications/models/notification_model.dart";
import "package:notifications/models/notifications_permissions_model.dart";
import "package:utilities/data/sources/hive/helpers/type_box.dart";
import "package:utilities/data/sources/hive/source.dart";

part "base_store.g.dart";

/// [NotificationsStore] is a store that houses logic for managing notifications.
class NotificationsStore = _NotificationsStore with _$NotificationsStore;

/// [_NotificationsStore] is the base class for [NotificationsStore].
abstract class _NotificationsStore extends HiveDataSource<NotificationModel, Map<String, dynamic>> with Store {
  /// [onNotificationReceived] is a callback for when a notification is received.
  final void Function(NotificationModel notification)? onNotificationReceived;

  /// [_NotificationsStore] constructor.
  // ignore: unused_element
  _NotificationsStore({this.onNotificationReceived})
      : super(
          "notifications",
          getIdFromDataType: (data) => data.id,
          convertDataTypeFromJson: NotificationModel.fromJson,
          convertDataTypeToJson: (data) => data.toJson(),
        );

  /// [localNotifications] is the local notifications plugin.
  final FlutterLocalNotificationsPlugin localNotifications = FlutterLocalNotificationsPlugin();

  /// [notifications] is a list of notifications from the local data source.
  @computed
  ValueListenable<TypeBox<NotificationModel?>> get notifications => super.boxListenable;

  /// [requestPermissions] requests permission for notifications.
  @action
  Future<void> requestPermissions(NotificationsPermissionsModel? permissions) async {
    throw UnimplementedError();
  }

  @override
  bool matchesQuery(
    Map<String, dynamic> query,
    NotificationModel notification,
  ) {
    var isMatch = true;
    query.forEach((key, value) {
      if (isMatch) {
        switch (key) {
          case "id":
            isMatch = notification.id == value;
            break;
          case "type":
            isMatch = notification.type == value;
            break;
          case "title":
            isMatch = notification.title == value;
            break;
          case "body":
            isMatch = notification.body == value;
            break;
          case "isLocalNotification":
            isMatch = notification.isLocalNotification == (value == "true");
            break;
          case "isRead":
            isMatch = notification.isRead == (value == "true");
            break;
          default:
            isMatch = false;
            break;
        }
      }
    });
    return isMatch;
  }

  /// [search] searches for notifications with the given [query].
  @override
  @action
  Future<List<NotificationModel?>> searchAll(Map<String, dynamic> query) async {
    final results = <NotificationModel>[];
    for (final element in notifications.value.values) {
      if (element != null) {
        final isMatch = matchesQuery(query, element);
        if (isMatch) {
          results.add(element);
        }
      }
    }
    return Future.value(results);
  }

  // [search] searches for the notification with the given [query].
  @override
  @action
  Future<NotificationModel?> search(Map<String, dynamic> query) async {
    final results = await searchAll(query);
    return Future.value(results.isNotEmpty ? results.first : null);
  }

  /// [replaceAll] replaces all notifications with the given [notificationList].
  @action
  void replaceAll(List<NotificationModel> notificationList) {
    super.deleteAll();
    super.addAll(notificationList);
  }
}
