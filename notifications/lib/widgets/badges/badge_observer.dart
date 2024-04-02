import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:notifications/models/notification.dart';
import 'package:notifications/widgets/badges/badge.dart';

/// [NotificationBadgeObserver] is a widget that allows you to add a notification badge to a widget.
class NotificationBadgeObserver extends StatelessWidget {
  /// [valueListenable] is the builder of the notification badge.
  final ValueListenable<Box<NotificationModel?>> valueListenable;

  /// [builder] is the builder of the notification badge.
  final NotificationBadge Function(
      BuildContext, Box<NotificationModel?>, Widget?) builder;

  /// [NotificationBadgeObserver] constructor.
  const NotificationBadgeObserver({
    super.key,
    required this.builder,
    required this.valueListenable,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box<NotificationModel?>>(
      valueListenable: valueListenable,
      builder: builder,
    );
  }
}
