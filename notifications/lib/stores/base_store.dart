import "dart:async";

import "package:flutter/foundation.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:mobx/mobx.dart";
import "package:notifications/models/notification_model.dart";
import "package:notifications/models/notifications_permissions_model.dart";
import "package:utilities/data/sources/hive/helpers/type_box.dart";
import "package:utilities/data/sources/hive/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

part "base_store.g.dart";

/// [NotificationsStore] is a store that houses logic for managing notifications.
class NotificationsStore = _NotificationsStore with _$NotificationsStore;

/// [_NotificationsStore] is the base class for [NotificationsStore].
abstract class _NotificationsStore
    extends HiveDataSource<NotificationModel, Map<String, dynamic>> with Store {
  /// [_NotificationsStore] constructor.
  // ignore: unused_element
  _NotificationsStore()
      : super(
          "notifications",
          getIdFromDataType: (data) => data.id,
          convertDataTypeFromJson: NotificationModel.fromJson,
          convertDataTypeToJson: (data) => data.toJson(),
        );

  /// [localNotifications] is the local notifications plugin.
  final FlutterLocalNotificationsPlugin localNotifications =
      FlutterLocalNotificationsPlugin();

  @observable
  NotificationModel? receivedNotification;

  /// [notifications] is a list of notifications from the local data source.
  @computed
  ValueListenable<TypeBox<NotificationModel?>> get notifications =>
      super.boxListenable;

  @action
  void listenForReceivedNotification(
    void Function(NotificationModel notification) onNotificationReceived,
  ) {
    throw UnimplementedError();
  }

  /// [requestPermissions] requests permission for notifications.
  @action
  Future<void> requestPermissions({
    NotificationsPermissionsModel permissions =
        NotificationsPermissionsModel.standard,
  }) async {
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
  Future<Pair<RequestResponse, List<NotificationModel?>>> searchAll(
    Map<String, dynamic> query,
  ) async {
    final results = <NotificationModel>[];
    for (final element in notifications.value.values) {
      if (element != null) {
        final isMatch = matchesQuery(query, element);
        if (isMatch) {
          results.add(element);
        }
      }
    }
    if (results.isEmpty) {
      return const Pair(RequestResponse.failure, []);
    }
    return Pair(RequestResponse.success, results);
  }

  // [search] searches for the notification with the given [query].
  @override
  @action
  Future<Pair<RequestResponse, NotificationModel?>> search(
    Map<String, dynamic> query,
  ) async {
    final results = await searchAll(query);
    final result = results.second.isNotEmpty ? results.second.first : null;
    if (result != null) {
      return Pair(RequestResponse.success, result);
    }
    return const Pair(RequestResponse.failure, null);
  }

  /// [replaceAll] replaces all notifications with the given [notificationList].
  @action
  void replaceAll(List<NotificationModel> notificationList) {
    super.deleteAll();
    super.addAll(notificationList);
  }
}
