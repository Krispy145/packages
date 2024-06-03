import "package:flutter/material.dart";
import "package:notifications/models/notification_model.dart";
import "package:notifications/stores/base_store.dart";
import "package:notifications/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

/// [NotificationCard] is a Widget view that displays a notification.
class NotificationCard extends StatelessWidget {
  /// [notification] is the notification to display.
  final NotificationModel notification;

  /// [store] is the store for the notifications.
  final NotificationsStore store;

  /// [NotificationCard] is the constructor for the [NotificationCard] class.
  const NotificationCard({
    super.key,
    required this.notification,
    required this.store,
  });

  String? get _subtitle => (notification.body ?? "").length >= 80 ? ("${notification.body?.substring(0, 80)}...") : notification.body;

  @override
  Widget build(BuildContext context) {
    AppLogger.print(
      notification.toString(),
      [NotificationsLoggers.notifications],
    );
    return Dismissible(
      key: Key("${notification.id}${notification.title}"),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          store.delete(notification.id);
        }
      },
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        child: Icon(
          Icons.delete,
          color: Theme.of(context).colorScheme.onError,
        ),
      ),
      child: ListTile(
        leading: Text(notification.id),
        title: notification.title != null ? Text(notification.title!) : null,
        subtitle: _subtitle != null ? Text(_subtitle!) : null,
        onTap: () {
          // Handle tap action (e.g., open notification details)
        },
      ),
    );
  }
}
