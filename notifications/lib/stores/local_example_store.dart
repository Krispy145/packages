import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:mobx/mobx.dart";
import "package:notifications/models/notification_model.dart";
import "package:notifications/stores/local_store.dart";
import "package:timezone/timezone.dart" as tz;

part "local_example_store.g.dart";

/// [LocalNotificationsExamplesStore] is the base class for all local notifications examples stores.
class LocalNotificationsExamplesStore = _LocalNotificationsExamplesStore
    with _$LocalNotificationsExamplesStore;

/// [_LocalNotificationsExamplesStore] is the base class for all local notifications examples stores.
abstract class _LocalNotificationsExamplesStore extends LocalNotificationsStore
    with Store {
  /// [_LocalNotificationsExamplesStore] is the constructor for the [_LocalNotificationsExamplesStore] class.
  _LocalNotificationsExamplesStore();

  /// [urlLaunchActionId] is the notification action id for launching a URL.
  final String urlLaunchActionId = "id_1";

  /// [navigationActionId] is the notification action id for navigating to a page.
  final String navigationActionId = "id_3";

  /// [darwinNotificationCategoryText] is the iOS/MacOS text notification category.
  final String darwinNotificationCategoryText = "textCategory";

  /// [darwinNotificationCategoryPlain] is the iOS/MacOS plain notification category.
  final String darwinNotificationCategoryPlain = "plainCategory";

  /// [showNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails].
  @action
  Future<void> showNotification(NotificationModel notification) async {
    await show(notification: notification, details: notificationDetails());
  }

  /// [showNotificationWithActions] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with action buttons.
  @action
  Future<void> showNotificationWithActions(
    NotificationModel notification,
  ) async {
    final AndroidNotificationDetails androidNotificationDetails =
        androidLocalNotificationDetails.copyWith(
      actions: [
        const AndroidNotificationAction(
          "id_1",
          "Action 1",
          icon: DrawableResourceAndroidBitmap("food"),
          contextual: true,
        ),
        const AndroidNotificationAction(
          "id_2",
          "Action 2",
          titleColor: Colors.blue,
          icon: DrawableResourceAndroidBitmap("secondary_icon"),
        ),
        const AndroidNotificationAction(
          "id_nav_1",
          "Action 3",
          icon: DrawableResourceAndroidBitmap("secondary_icon"),
          showsUserInterface: true,
          cancelNotification: false,
        ),
      ],
    );

    final iosNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryPlain,
    );

    final macOSNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryPlain,
    );

    final linuxNotificationDetails = LinuxNotificationDetails(
      actions: <LinuxNotificationAction>[
        LinuxNotificationAction(
          key: urlLaunchActionId,
          label: "Action 1",
        ),
        LinuxNotificationAction(
          key: navigationActionId,
          label: "Action 2",
        ),
      ],
    );

    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
      macOS: macOSNotificationDetails,
      linux: linuxNotificationDetails,
    );

    await show(notification: notification, details: notificationDetails);
  }

  /// [showNotificationWithTextAction] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with text action.
  @action
  Future<void> showNotificationWithTextAction(
    NotificationModel notification,
  ) async {
    const textAction = AndroidNotificationAction(
      "text_action",
      "Enter text",
      icon: DrawableResourceAndroidBitmap("text_icon"),
      allowGeneratedReplies: true,
    );

    final AndroidNotificationDetails androidNotificationDetails =
        androidLocalNotificationDetails.copyWith(
      actions: [
        textAction,
      ],
    );

    final iosNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryPlain,
    );

    final macOSNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryPlain,
    );

    final linuxNotificationDetails = LinuxNotificationDetails(
      actions: <LinuxNotificationAction>[
        LinuxNotificationAction(
          key: urlLaunchActionId,
          label: "Action 1",
        ),
        LinuxNotificationAction(
          key: navigationActionId,
          label: "Action 2",
        ),
      ],
    );

    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: iosNotificationDetails,
      macOS: macOSNotificationDetails,
      linux: linuxNotificationDetails,
    );

    await show(notification: notification, details: notificationDetails);
  }

  /// [showNotificationWithTextChoice] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with text choice.
  @action
  Future<void> showNotificationWithTextChoice(
    NotificationModel notification,
  ) async {
    const androidAction = AndroidNotificationAction(
      "text_action",
      "Action 2",
      icon: DrawableResourceAndroidBitmap("food"),
      inputs: <AndroidNotificationActionInput>[
        AndroidNotificationActionInput(
          choices: <String>["ABC", "DEF"],
          allowFreeFormInput: false,
        ),
      ],
      contextual: true,
    );

    final AndroidNotificationDetails androidNotificationDetails =
        androidLocalNotificationDetails.copyWith(
      actions: [androidAction],
    );

    final darwinNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryText,
    );

    final macOSNotificationDetails = DarwinNotificationDetails(
      categoryIdentifier: darwinNotificationCategoryText,
    );

    final notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
      macOS: macOSNotificationDetails,
    );

    await show(notification: notification, details: notificationDetails);
  }

  /// [showNotificationCustomVibrationIconLed] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with custom vibration, icon and LED.
  @action
  Future<void> showNotificationCustomVibrationIconLed(
    NotificationModel notification,
  ) async {
    final vibrationPattern = Int64List(4);
    vibrationPattern[0] = 0;
    vibrationPattern[1] = 1000;
    vibrationPattern[2] = 5000;
    vibrationPattern[3] = 2000;
    final androidNotificationDetails = androidLocalNotificationDetails.copyWith(
      icon: "secondary_icon",
      vibrationPattern: vibrationPattern,
      enableLights: true,
      color: const Color.fromARGB(255, 255, 0, 0),
      ledColor: const Color.fromARGB(255, 255, 0, 0),
      ledOnMs: 1000,
      ledOffMs: 500,
    );

    final notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await show(notification: notification, details: notificationDetails);
  }

  /// [zonedScheduleNotification] schedules a [NotificationModel] for 5 seconds from now, using flutter_local_notifications and default [NotificationDetails].
  @action
  Future<void> zonedScheduleNotification(NotificationModel notification) async {
    await zonedSchedule(
      notification: notification,
      details: NotificationDetails(
        android: androidLocalNotificationDetails,
      ),
      time: tz.TZDateTime.now(tz.local).add(
        const Duration(seconds: 5),
      ),
    );
  }

  /// [zonedScheduleAlarmClockNotification] schedules an alarm clock [NotificationModel] for 5 seconds from now, using flutter_local_notifications and default [NotificationDetails].
  @action
  Future<void> zonedScheduleAlarmClockNotification(
    NotificationModel notification,
  ) async {
    await zonedSchedule(
      notification: notification,
      details: NotificationDetails(
        android: androidLocalNotificationDetails,
      ),
      time: tz.TZDateTime.now(tz.local).add(
        const Duration(seconds: 5),
      ),
      androidScheduleMode: AndroidScheduleMode.alarmClock,
    );
  }

  /// [repeatNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] every minute.
  @action
  Future<void> repeatNotification(NotificationModel notification) async {
    final androidNotificationDetails = androidLocalNotificationDetails;

    final notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await periodicallyShow(
      notification: notification,
      details: notificationDetails,
      interval: RepeatInterval.everyMinute,
    );
  }

  /// [showNotificationWithNoSound] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with no sound.
  @action
  Future<void> showNotificationWithNoSound() async {
    //TODO: _showNotificationWithNoSound function here
  }

  /// [showSoundUriNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with sound uri.
  @action
  Future<void> showSoundUriNotification() async {
    //TODO: _showSoundUriNotification function here
  }

  /// [showTimeoutNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with timeout.
  @action
  Future<void> showTimeoutNotification() async {
    //TODO: _showTimeoutNotification function here
  }

  /// [showInsistentNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] that is insistent.
  @action
  Future<void> showInsistentNotification() async {
    //TODO: _showInsistentNotification function here
  }

  /// [showBigPictureNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] daily at a specific time.
  @action
  Future<void> showBigPictureNotification() async {
    //TODO: _showBigPictureNotification function here
  }

  /// [showBigPictureNotificationBase64] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with big picture base64.
  @action
  Future<void> showBigPictureNotificationBase64() async {
    //TODO: _showBigPictureNotificationBase64 function here
  }

  /// [showBigPictureNotificationURL] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with big picture URL.
  @action
  Future<void> showBigPictureNotificationURL() async {
    //TODO: _showBigPictureNotificationURL function here
  }

  /// [showBigPictureNotificationHiddenLargeIcon] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with big picture hidden large icon.
  @action
  Future<void> showBigPictureNotificationHiddenLargeIcon() async {
    //TODO: _showBigPictureNotificationHiddenLargeIcon function here
  }

  /// [showNotificationMediaStyle] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with media style.
  @action
  Future<void> showNotificationMediaStyle() async {
    //TODO: _showNotificationMediaStyle function here
  }

  /// [showBigTextNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with big text.
  @action
  Future<void> showBigTextNotification() async {
    //TODO: _showBigTextNotification function here
  }

  /// [showInboxNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] with inbox.
  @action
  Future<void> showInboxNotification() async {
    //TODO: _showInboxNotification function here
  }

  /// [showMessagingNotification] shows a [NotificationModel] using flutter_local_notifications and default [NotificationDetails] using messaging setup.
  @action
  Future<void> showMessagingNotification() async {
    //TODO: _showMessagingNotification function here
  }
}
