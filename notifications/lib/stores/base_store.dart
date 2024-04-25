import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobx/mobx.dart';
import 'package:notifications/models/notification.dart';
import 'package:notifications/models/permissions.dart';
import 'package:utilities/data_sources/local/hive/helpers/type_box.dart';
import 'package:utilities/data_sources/local/hive/hive.dart';

part 'base_store.g.dart';

/// [NotificationsStore] is a store that houses logic for managing notifications.
class NotificationsStore = _NotificationsStore with _$NotificationsStore;

/// [_NotificationsStore] is the base class for [NotificationsStore].
abstract class _NotificationsStore extends HiveDataSource<NotificationModel> with Store {
  /// [onNotificationReceived] is a callback for when a notification is received.
  final void Function(NotificationModel notification)? onNotificationReceived;

  /// [_NotificationsStore] constructor.
  _NotificationsStore({this.onNotificationReceived})
      : super(
          'notifications',
          convertDataTypeFromMap: NotificationModel.fromStringMap,
          convertDataTypeToMap: (data) => data.toStringMap(),
        );

  /// [localNotifications] is the local notifications plugin.
  final FlutterLocalNotificationsPlugin localNotifications = FlutterLocalNotificationsPlugin();

  /// [notifications] is a list of notifications from the local data source.
  @computed
  ValueListenable<TypeBox<NotificationModel?>> get notifications => super.boxListenable;

  /// [requestPermissions] requests permission for notifications.
  @action
  Future<void> requestPermissions(NotificationPermissions? permissions) async {
    throw UnimplementedError();
  }

  /// [search] searches for notifications with the given [queries].
  @override
  @action
  Future<List<NotificationModel?>> searchAll(Map<String, dynamic> queries) {
    final results = <NotificationModel>[];
    for (final element in notifications.value.values) {
      if (element != null) {
        var isMatch = true;
        queries.forEach((key, value) {
          if (isMatch) {
            switch (key) {
              case 'id':
                isMatch = element.id == value;

                break;
              case 'type':
                isMatch = element.type == value;
                break;
              case 'title':
                isMatch = element.title == value;
                break;
              case 'body':
                isMatch = element.body == value;
                break;
              case 'isLocalNotification':
                isMatch = element.isLocalNotification == (value == 'true');
                break;
              case 'isRead':
                isMatch = element.isRead == (value == 'true');
                break;
              default:
                isMatch = false;
                break;
            }
          }
        });
        if (isMatch) {
          results.add(element);
        }
      }
    }
    return Future.value(results);
  }

  // [search] searches for the notification with the given [queries].
  @override
  @action
  Future<NotificationModel?> search(Map<String, dynamic> queries) async {
    final results = await searchAll(queries);
    return Future.value(results.isNotEmpty ? results.first : null);
  }

  /// [replaceAll] replaces all notifications with the given [notificationList].
  @action
  void replaceAll(List<NotificationModel> notificationList) {
    super.deleteAll();
    super.addAll(notificationList);
  }
}
