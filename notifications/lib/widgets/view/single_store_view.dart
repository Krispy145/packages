import "package:flutter/material.dart";
import "package:notifications/models/notification.dart";
import "package:notifications/stores/base_store.dart";
import "package:notifications/widgets/view/card.dart";
import "package:utilities/data_sources/hive/helpers/type_box.dart";

/// [SingleStoreNotificationsView] a Widget view that displays a list of notifications.
class SingleStoreNotificationsView extends StatelessWidget {
  /// [store] is the store for the notifications.
  final NotificationsStore store;

  /// [SingleStoreNotificationsView] is the constructor for the [SingleStoreNotificationsView] class.
  const SingleStoreNotificationsView({
    required this.store,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TypeBox<NotificationModel?>>(
      valueListenable: store.notifications,
      builder: (context, notificationBox, widget) => ListView.builder(
        itemCount: notificationBox.length,
        itemBuilder: (context, index) {
          final notification = notificationBox.getAt(index);

          if (notification == null) {
            return null;
          }
          return NotificationCard(
            notification: notification,
            store: store,
          );
        },
      ),
    );
  }
}
