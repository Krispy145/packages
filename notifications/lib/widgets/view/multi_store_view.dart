import "package:flutter/material.dart";
import "package:notifications/models/notification.dart";
import "package:notifications/stores/local_store.dart";
import "package:notifications/stores/push_store.dart";
import "package:notifications/widgets/view/card.dart";
import "package:utilities/data_sources/local/hive/helpers/type_box.dart";

/// [MultiStoreNotificationsView] a Widget view that displays a list of notifications.
class MultiStoreNotificationsView extends StatelessWidget {
  /// [pushNotificationsStore] is the store for the push notifications.
  final PushNotificationsStore pushNotificationsStore;

  /// [localNotificationsStore] is the store for the local notifications.
  final LocalNotificationsStore localNotificationsStore;

  /// [MultiStoreNotificationsView] is the constructor for the [MultiStoreNotificationsView] class.
  const MultiStoreNotificationsView({
    required this.pushNotificationsStore,
    required this.localNotificationsStore,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TypeBox<NotificationModel?>>(
      valueListenable: pushNotificationsStore.notifications,
      builder: (context, notificationBox, widget) => ListView.builder(
        itemCount: notificationBox.length,
        itemBuilder: (context, index) {
          final notification = notificationBox.getAt(index);

          if (notification == null) {
            return null;
          }
          return NotificationCard(
            notification: notification,
            store: notification.isLocalNotification
                ? localNotificationsStore
                : pushNotificationsStore,
          );
        },
      ),
    );
  }
}
