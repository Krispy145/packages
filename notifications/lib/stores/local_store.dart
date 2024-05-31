// ignore_for_file: unused_element

import "dart:convert";

import "package:collection/collection.dart";
import "package:flutter/foundation.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:flutter_timezone/flutter_timezone.dart";
import "package:mobx/mobx.dart";
import "package:notifications/models/local_android_notification_details.dart";
import "package:notifications/models/notification_model.dart";
import "package:notifications/models/notifications_permissions_model.dart";
import "package:notifications/stores/base_store.dart";
import "package:notifications/utils/loggers.dart";
import "package:timezone/data/latest_all.dart" as tz;
import "package:timezone/timezone.dart" as tz;
import "package:universal_io/io.dart";
import "package:utilities/logger/logger.dart";

part "local_store.g.dart";

//TODO: Look into NotificationDetails and AndroidNotificationChannels for when creating notification channels and using them within this store

/// [LocalNotificationsStore] is the base class for all local notifications stores.
class LocalNotificationsStore = _LocalNotificationsStore with _$LocalNotificationsStore;

/// [_LocalNotificationsStore] is the base class for all notifications stores.
abstract class _LocalNotificationsStore extends NotificationsStore with Store {
  /// [_LocalNotificationsStore] constructor.
  _LocalNotificationsStore({super.onNotificationReceived});

  /// [androidLocalNotificationsChannel] is the Android local notifications channel.
  final androidLocalNotificationsChannel = const AndroidNotificationChannel(
    "local_notifications",
    "Local Notifications Channel",
    importance: Importance.max,
  );

  /// [androidLocalNotificationDetails] is the Android local notifications details.
  LocalAndroidNotificationDetails get androidLocalNotificationDetails => LocalAndroidNotificationDetails(
        androidLocalNotificationsChannel.id,
        androidLocalNotificationsChannel.name,
      ).copyWith(
        channelDescription: "Local Notifications Channel",
        ticker: "ticker",
      );

  /// [notificationDetails] is the notification details.
  @action
  NotificationDetails notificationDetails({
    LocalAndroidNotificationDetails? localNotificationDetails,
  }) =>
      NotificationDetails(
        android: localNotificationDetails ?? androidLocalNotificationDetails,
      );

  @observable
  bool _notificationsEnabled = false;

  /// [localNotificationsEnabled] is the authorization status for local notifications.
  bool get localNotificationsEnabled => _notificationsEnabled;

  /// [darwinNotificationCategories] is the list of darwin notification categories for iOS and macOS.
  /// Corresponds to the UNNotificationCategory type which is used to configure notification categories and accompanying options.
  /// https://developer.apple.com/documentation/usernotifications/unnotificationcategory
  @observable
  ObservableList<DarwinNotificationCategory> darwinNotificationCategories = ObservableList();

  /// [setDarwinNotificationCategories] sets the list of darwin notification categories for iOS and macOS.
  @action
  void setDarwinNotificationCategories(
    List<DarwinNotificationCategory> categories,
  ) {
    darwinNotificationCategories = ObservableList.of(categories);
  }

  /// [requestPermissions] requests permissions for local notifications.
  @action
  @override
  Future<bool> requestPermissions(NotificationsPermissionsModel? permissions) async {
    if (Platform.isIOS) {
      final iosImplementation = localNotifications.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>();
      final grantedNotificationPermission = await iosImplementation?.requestPermissions(
        alert: permissions?.alert ?? true,
        badge: permissions?.badge ?? true,
        provisional: permissions?.provisional ?? false,
        sound: permissions?.sound ?? true,
      );
      _notificationsEnabled = grantedNotificationPermission ?? false;
    } else if (Platform.isMacOS) {
      final macOSImplementation = localNotifications.resolvePlatformSpecificImplementation<MacOSFlutterLocalNotificationsPlugin>();
      final grantedNotificationPermission = await macOSImplementation?.requestPermissions(
        alert: permissions?.alert ?? true,
        badge: permissions?.badge ?? true,
        provisional: permissions?.provisional ?? false,
        sound: permissions?.sound ?? true,
      );
      _notificationsEnabled = grantedNotificationPermission ?? false;
    } else if (Platform.isAndroid) {
      final androidImplementation = localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
      final grantedNotificationPermission = await androidImplementation?.requestNotificationsPermission();
      _notificationsEnabled = grantedNotificationPermission ?? false;
    } else if (Platform.isLinux || kIsWeb) {
      _notificationsEnabled = true;
    }
    return _notificationsEnabled;
  }

  /// [initialize] initializes local notifications.
  @action
  Future<void> initialize() async {
    AppLogger.print(
      "Initializing local notifications",
      [NotificationsLoggers.notifications],
    );
    await _configureLocalTimeZone();
    final initializationSettings = InitializationSettings(
      android: const AndroidInitializationSettings("@mipmap/ic_launcher"),
      iOS: await _initializeDarwin(),
      macOS: await _initializeDarwin(),
      linux: await _initializeLinux(),
    );

    await localNotifications.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
    );

    await _handleInitialNotification();
  }

  /// [show]s a [NotificationModel] using flutter_local_notifications and [NotificationDetails].
  @action
  Future<void> show({
    required NotificationModel notification,
    required NotificationDetails details,
  }) async {
    await localNotifications.show(
      notification.localId,
      notification.title,
      notification.body,
      details,
      payload: json.encode(notification.toJson()),
    );
  }

  /// [periodicallyShow]s a [NotificationModel] using flutter_local_notifications and [NotificationDetails].
  @action
  Future<void> periodicallyShow({
    required NotificationModel notification,
    required NotificationDetails details,
    required RepeatInterval interval,
  }) async {
    await localNotifications.periodicallyShow(
      notification.localId,
      notification.title,
      notification.body,
      interval,
      details,
      payload: json.encode(notification.toJson()),
    );
  }

  /// [periodicallyShow]s a [NotificationModel] using flutter_local_notifications and [NotificationDetails].
  @action
  Future<void> zonedSchedule({
    required NotificationModel notification,
    required NotificationDetails details,
    required tz.TZDateTime time,
    ScheduledInterval interval = ScheduledInterval.exact,
    AndroidScheduleMode androidScheduleMode = AndroidScheduleMode.exactAllowWhileIdle,
  }) async {
    await localNotifications.zonedSchedule(
      notification.localId,
      notification.title,
      notification.body,
      time,
      details,
      payload: json.encode(notification.toJson()),
      androidScheduleMode: androidScheduleMode,
      matchDateTimeComponents: interval.toDateTimeComponents,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
    );
  }

  /// [createAndroidNotificationChannel] creates an Android notification channel.
  @action
  Future<void> createAndroidNotificationChannel(
    AndroidNotificationChannel channel,
  ) async {
    await localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(channel);
  }

  /// [deleteAndroidNotificationChannel] deletes an Android notification channel.
  @action
  Future<void> deleteAndroidNotificationChannel(String channelId) async {
    await localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.deleteNotificationChannel(channelId);
  }

  /// [updateActiveNotificationsList] updates the active notifications to the [notifications].
  @action
  Future<void> updateActiveNotificationsList() async {
    final activeNotifications = await _getActiveNotifications();
    final notificationMap = <String, NotificationModel>{};
    for (final notification in activeNotifications) {
      if (notification == null) continue;
      notificationMap[notification.id] = notification.copyWith(
        isLocalNotification: true,
      );
    }

    AppLogger.print(
      "Active notifications: $activeNotifications",
      [NotificationsLoggers.notifications],
    );
    await updateAll(notificationMap);
    AppLogger.print(
      "Local notifications: $notifications",
      [NotificationsLoggers.notifications],
    );
  }

  /// [delete] cancels a notification by [id].
  @action
  @override
  Future<void> delete(String id) async {
    final notification = notifications.value.values.firstWhereOrNull((element) => element?.id == id);
    if (notification == null) return;
    await localNotifications.cancel(notification.localId);
    await super.delete(id);
  }

  /// [deleteAll] cancels all notifications.
  @action
  @override
  Future<void> deleteAll() async {
    await localNotifications.cancelAll();
    await super.deleteAll();
  }

  @action
  Future<ObservableList<NotificationModel?>> _getActiveNotifications() async {
    if (Platform.isLinux) return ObservableList();
    return _convertActiveNotificationsToModel(
      await localNotifications.getActiveNotifications(),
    );
  }

  @action
  Future<void> _configureLocalTimeZone() async {
    if (kIsWeb || Platform.isLinux) {
      return;
    }
    tz.initializeTimeZones();
    final timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  @action
  Future<DarwinInitializationSettings> _initializeDarwin() async {
    return DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) {
        final notification = payload != null
            ? NotificationModel.fromMap(
                json.decode(payload) as Map<String, dynamic>,
              )
            : null;
        _onDidReceiveLocalNotification(notification);
      },
      notificationCategories: darwinNotificationCategories,
    );
  }

  @action
  Future<LinuxInitializationSettings> _initializeLinux() async {
    return LinuxInitializationSettings(
      defaultActionName: "Open notification",
      defaultIcon: AssetsLinuxIcon("icons/app_icon.png"),
    );
  }

  @action
  Future<void> _handleInitialNotification() async {
    final notificationAppLaunchDetails = await localNotifications.getNotificationAppLaunchDetails();
    final notificationResponse = notificationAppLaunchDetails?.notificationResponse;
    if ((notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) && notificationResponse != null) {
      await _onDidReceiveNotificationResponse(
        notificationResponse,
        updateBadge: false,
      );
    }
  }

  @action
  Future<void> _onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse, {
    bool updateBadge = true,
  }) async {
    await updateActiveNotificationsList();
    if (updateBadge) {
      //TODO: Look into updating the badge count for iOS and macOS
    } else {}
    final notification = _convertNotificationResponseToModel(notificationResponse);
    if (notification == null) return;
    await update(
      notification.id,
      notification.copyWith(isLocalNotification: true),
    );
  }

  @action
  NotificationModel? _convertNotificationResponseToModel(
    NotificationResponse notificationResponse,
  ) {
    AppLogger.print(
      "Notification response: ${notificationResponse.payload}",
      [NotificationsLoggers.notifications],
    );
    return notificationResponse.payload != null
        ? NotificationModel.fromMap(
            json.decode(notificationResponse.payload!) as Map<String, dynamic>,
          )
        : null;
  }

  @action
  ObservableList<NotificationModel?> _convertActiveNotificationsToModel(
    List<ActiveNotification> activeNotifications,
  ) =>
      ObservableList.of(
        activeNotifications.map(
          (notification) {
            return notification.payload != null
                ? NotificationModel.fromMap(
                    json.decode(notification.payload!) as Map<String, dynamic>,
                  )
                : null;
          },
        ).toList(),
      );

  @action
  void _onDidReceiveLocalNotification(
    NotificationModel? notification,
  ) {
    if (notification == null) return;
    update(notification.id, notification.copyWith(isLocalNotification: true));
  }
}
