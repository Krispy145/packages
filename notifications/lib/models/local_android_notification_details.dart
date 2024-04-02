import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// [ScheduledInterval] is the interval for a zoned scheduled notification.
enum ScheduledInterval {
  /// Every day at the same time.
  daily,

  /// Every day of the week at the same time.
  dayOfWeekAndTime,

  /// Every day of the month at the same time.
  dayOfMonthAndTime,

  /// The exact date and time.
  exact;

  /// [ScheduledInterval] to [DateTimeComponents] getter.
  DateTimeComponents get toDateTimeComponents {
    switch (this) {
      case ScheduledInterval.daily:
        return DateTimeComponents.time;
      case ScheduledInterval.dayOfWeekAndTime:
        return DateTimeComponents.dayOfWeekAndTime;
      case ScheduledInterval.dayOfMonthAndTime:
        return DateTimeComponents.dayOfMonthAndTime;
      case ScheduledInterval.exact:
        return DateTimeComponents.dateAndTime;
    }
  }
}

/// [LocalAndroidNotificationDetails] is the Android local notifications details extension.
class LocalAndroidNotificationDetails extends AndroidNotificationDetails {
  /// [LocalAndroidNotificationDetails] constructor.
  LocalAndroidNotificationDetails(
    super.channelId,
    super.channelName, {
    super.channelDescription,
    super.icon,
    super.importance = Importance.max,
    super.priority = Priority.high,
    super.styleInformation,
    super.playSound = true,
    super.sound,
    super.enableVibration = true,
    super.vibrationPattern,
    super.groupKey,
    super.setAsGroupSummary = false,
    super.groupAlertBehavior = GroupAlertBehavior.all,
    super.autoCancel = true,
    super.ongoing = false,
    super.color,
    super.largeIcon,
    super.onlyAlertOnce = false,
    super.showWhen = true,
    super.when,
    super.usesChronometer = false,
    super.chronometerCountDown = false,
    super.channelShowBadge = true,
    super.showProgress = false,
    super.maxProgress = 0,
    super.progress = 0,
    super.indeterminate = false,
    super.channelAction = AndroidNotificationChannelAction.createIfNotExists,
    super.enableLights = false,
    super.ledColor,
    super.ledOnMs,
    super.ledOffMs,
    super.ticker,
    super.visibility,
    super.timeoutAfter,
    super.category,
    super.fullScreenIntent = false,
    super.shortcutId,
    super.additionalFlags,
    super.subText,
    super.tag,
    super.actions,
    super.colorized = false,
    super.number,
    super.audioAttributesUsage = AudioAttributesUsage.notification,
  });

  /// [LocalAndroidNotificationDetails] copyWith method.
  LocalAndroidNotificationDetails copyWith({
    String? icon,
    String? channelId,
    String? channelName,
    String? channelDescription,
    bool? channelShowBadge,
    Importance? importance,
    Priority? priority,
    bool? playSound,
    AndroidNotificationSound? sound,
    bool? enableVibration,
    bool? enableLights,
    Int64List? vibrationPattern,
    StyleInformation? styleInformation,
    String? groupKey,
    bool? setAsGroupSummary,
    GroupAlertBehavior? groupAlertBehavior,
    bool? autoCancel,
    bool? ongoing,
    Color? color,
    AndroidBitmap<Object>? largeIcon,
    bool? onlyAlertOnce,
    bool? showWhen,
    int? when,
    bool? usesChronometer,
    bool? chronometerCountDown,
    bool? showProgress,
    int? maxProgress,
    int? progress,
    bool? indeterminate,
    Color? ledColor,
    int? ledOnMs,
    int? ledOffMs,
    String? ticker,
    AndroidNotificationChannelAction? channelAction,
    NotificationVisibility? visibility,
    int? timeoutAfter,
    AndroidNotificationCategory? category,
    bool? fullScreenIntent,
    String? shortcutId,
    Int32List? additionalFlags,
    List<AndroidNotificationAction>? actions,
    String? subText,
    String? tag,
    bool? colorized,
    int? number,
    AudioAttributesUsage? audioAttributesUsage,
  }) {
    return LocalAndroidNotificationDetails(
      super.channelId,
      super.channelName,
      icon: icon ?? this.icon,
      channelDescription: channelDescription ?? this.channelDescription,
      channelShowBadge: channelShowBadge ?? this.channelShowBadge,
      importance: importance ?? this.importance,
      priority: priority ?? this.priority,
      playSound: playSound ?? this.playSound,
      sound: sound ?? this.sound,
      enableVibration: enableVibration ?? this.enableVibration,
      enableLights: enableLights ?? this.enableLights,
      vibrationPattern: vibrationPattern ?? this.vibrationPattern,
      styleInformation: styleInformation ?? this.styleInformation,
      groupKey: groupKey ?? this.groupKey,
      setAsGroupSummary: setAsGroupSummary ?? this.setAsGroupSummary,
      groupAlertBehavior: groupAlertBehavior ?? this.groupAlertBehavior,
      autoCancel: autoCancel ?? this.autoCancel,
      ongoing: ongoing ?? this.ongoing,
      color: color ?? this.color,
      largeIcon: largeIcon ?? this.largeIcon,
      onlyAlertOnce: onlyAlertOnce ?? this.onlyAlertOnce,
      showWhen: showWhen ?? this.showWhen,
      when: when ?? this.when,
      usesChronometer: usesChronometer ?? this.usesChronometer,
      chronometerCountDown: chronometerCountDown ?? this.chronometerCountDown,
      showProgress: showProgress ?? this.showProgress,
      maxProgress: maxProgress ?? this.maxProgress,
      progress: progress ?? this.progress,
      indeterminate: indeterminate ?? this.indeterminate,
      ledColor: ledColor ?? this.ledColor,
      ledOnMs: ledOnMs ?? this.ledOnMs,
      ledOffMs: ledOffMs ?? this.ledOffMs,
      ticker: ticker ?? this.ticker,
      channelAction: channelAction ?? this.channelAction,
      visibility: visibility ?? this.visibility,
      timeoutAfter: timeoutAfter ?? this.timeoutAfter,
      category: category ?? this.category,
      fullScreenIntent: fullScreenIntent ?? this.fullScreenIntent,
      shortcutId: shortcutId ?? this.shortcutId,
      additionalFlags: additionalFlags ?? this.additionalFlags,
      actions: actions ?? this.actions,
      subText: subText ?? this.subText,
      tag: tag ?? this.tag,
      colorized: colorized ?? this.colorized,
      number: number ?? this.number,
      audioAttributesUsage: audioAttributesUsage ?? this.audioAttributesUsage,
    );
  }
}
