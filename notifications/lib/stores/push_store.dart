// ignore_for_file: unused_element

import "dart:convert";

import "package:firebase_messaging/firebase_messaging.dart";
import "package:flutter/foundation.dart";
import "package:flutter_local_notifications/flutter_local_notifications.dart";
import "package:mobx/mobx.dart";
import "package:notifications/models/local_android_notification_details.dart";
import "package:notifications/models/notification.dart";
import "package:notifications/models/permissions.dart";
import "package:notifications/stores/base_store.dart";
import "package:notifications/utils/loggers.dart";
import "package:universal_io/io.dart";
import "package:utilities/data_sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

part "push_store.g.dart";

/// [PushNotificationsStore] is the base class for all push notifications stores.
class PushNotificationsStore = _PushNotificationsStore with _$PushNotificationsStore;

/// [_PushNotificationsStore] is the base class for all notifications stores.
abstract class _PushNotificationsStore extends NotificationsStore with Store {
  /// [remoteDataSource] is the remote data source for notifications.
  final DataSource<NotificationModel>? remoteDataSource;

  /// [storeNotificationsLocally] is a flag to store notifications locally.
  final bool storeNotificationsLocally;

  /// [_PushNotificationsStore] constructor.
  _PushNotificationsStore({
    this.remoteDataSource,
    this.storeNotificationsLocally = true,
    this.fcmToken,
    this.apnsToken,
    super.onNotificationReceived,
  }) {
    initialize();
  }

  /// [_pushNotifications] is the push notifications plugin.
  final FirebaseMessaging _pushNotifications = FirebaseMessaging.instance;

  /// [androidPushNotificationsChannel] is the Android push notifications channel.
  final androidPushNotificationsChannel = const AndroidNotificationChannel(
    "push_notification_channel_id",
    "Push Notifications Channel",
    importance: Importance.max,
  );

  /// [fcmToken] is the token for push notifications.
  @observable
  String? fcmToken;

  /// [apnsToken] is the APNS token for Apple push notifications.
  @observable
  String? apnsToken;

  /// [authorizationStatus] is the authorization status for push notifications.
  @observable
  AuthorizationStatus authorizationStatus = AuthorizationStatus.notDetermined;

  /// [requestPermissions] requests permissions for push notifications.
  /// returns a [Pair] of the token and the authorization status.
  @action
  @override
  Future<Pair<String?, AuthorizationStatus>> requestPermissions(
    NotificationPermissions? permissions,
  ) async {
    // Request permissions if we don't already have them
    final settings = await _pushNotifications.requestPermission(
      alert: permissions?.alert ?? true,
      announcement: permissions?.announcement ?? false,
      badge: permissions?.badge ?? true,
      carPlay: permissions?.carPlay ?? false,
      criticalAlert: permissions?.criticalAlert ?? false,
      provisional: permissions?.provisional ?? false,
      sound: permissions?.sound ?? true,
    );

    if (Platform.isIOS || Platform.isMacOS) {
      apnsToken = await getAPNSToken();
      AppLogger.print(
        "APNS Token: $apnsToken",
        [NotificationsLoggers.notifications],
      );
    }
    fcmToken = await getToken(webVapidKey: kIsWeb ? permissions?.webVapidKey : null);
    AppLogger.print(
      "FCM Token: $fcmToken",
      [NotificationsLoggers.notifications],
    );
    authorizationStatus = settings.authorizationStatus;

    if (settings.authorizationStatus == AuthorizationStatus.authorized && fcmToken != null) {
      AppLogger.print(
        "User granted permission",
        [NotificationsLoggers.notifications],
      );
      return Pair(fcmToken, authorizationStatus);
    } else if (authorizationStatus == AuthorizationStatus.authorized && fcmToken == null) {
      AppLogger.print(
        "User granted permission but token is null",
        [NotificationsLoggers.notifications],
      );
      return Pair(null, authorizationStatus);
    } else {
      AppLogger.print(
        "User declined or has not accepted permission",
        [NotificationsLoggers.notifications],
      );
      return Pair(null, authorizationStatus);
    }
  }

  /// [initialize] registers for push notifications.
  @action
  Future<void> initialize() async {
    // Get any messages which caused the application to open from a terminated state.
    final initialMessage = await _pushNotifications.getInitialMessage();

    // Set foreground notification presentation options to allow heads up notifications for apple.
    await _pushNotifications.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // set up the Android channel for foreground notifications
    final _channel = _createAndroidForegroundPushNotificationChannel();

    if (initialMessage != null) {
      await _receivePushNotification(initialMessage.data);
    }

    _pushNotifications.onTokenRefresh.listen((token) {
      if (token.isNotEmpty && token != fcmToken) {
        fcmToken = token;
        AppLogger.print(
          "FCM Token Changed: $token",
          [NotificationsLoggers.notifications],
        );
      }
    });

    // Also handle any interaction when the app is in the background via a Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      _receivePushNotification(message.data);
    });

    // Also handle any interaction when the app is in the foreground via a Stream listener
    FirebaseMessaging.onMessage.listen((message) {
      final notification = _convertRemoteNotificationToNotificationModel(message.data);
      final android = message.notification?.android;

      // for Android, we create a local notification to show to users using the created channel.
      if (notification != null && android != null) {
        localNotifications.show(
          notification.localId,
          notification.title,
          notification.body,
          NotificationDetails(
            android: LocalAndroidNotificationDetails(
              _channel.id,
              _channel.name,
            ).copyWith(
              channelDescription: "Push Notifications Channel",
              ticker: "ticker",
              icon: android.smallIcon ?? "@mipmap/ic_launcher",
            ),
          ),
          payload: jsonEncode(notification.toJson()),
        );
      }
      _receivePushNotification(
        message.data,
        shouldUpdateAll: false,
        shouldCallNotificationReceived: false,
      );
    });
    // handleSilentNotifications(onSilentNotificationReceived: () {});
  }

  /// [_updateActiveNotificationsList] updates the active notifications to the [notifications].
  @action
  Future<void> _updateActiveNotificationsList() async {
    final activeNotifications = await remoteDataSource?.getAll() ?? await getAll();
    final notificationMap = <String, NotificationModel>{};
    for (final notificationResponse in activeNotifications) {
      if (notificationResponse != null) {
        final notification = notificationResponse;
        notificationMap[notification.id] = notification;
      }
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

  /// [add] adds a notification with [notification].
  @action
  @override
  Future<NotificationModel?> add(NotificationModel notification) async {
    await remoteDataSource?.add(notification);
    if (storeNotificationsLocally) await super.add(notification);
    return notification;
  }

  /// [addAll] adds all notifications with [notifications].
  @action
  @override
  Future<void> addAll(List<NotificationModel> notifications) async {
    await remoteDataSource?.addAll(notifications);
    if (storeNotificationsLocally) await super.addAll(notifications);
  }

  /// [update] updates a notification by [id] with [notification].
  @action
  @override
  Future<void> update(String id, NotificationModel notification) async {
    await remoteDataSource?.update(id, notification);
    if (storeNotificationsLocally) await super.update(id, notification);
  }

  /// [updateAll] updates all notifications with [notificationMap].
  @action
  @override
  Future<void> updateAll(Map<String, NotificationModel> notificationMap) async {
    await remoteDataSource?.updateAll(notificationMap);
    if (storeNotificationsLocally) await super.updateAll(notificationMap);
  }

  /// [delete] cancels a notification by [id].
  @action
  @override
  Future<void> delete(String id) async {
    await remoteDataSource?.delete(id);
    if (storeNotificationsLocally) await super.delete(id);
  }

  /// [deleteAll] cancels all notifications.
  @action
  @override
  Future<void> deleteAll() async {
    await remoteDataSource?.deleteAll();
    if (storeNotificationsLocally) await super.deleteAll();
  }

  /// [handleSilentNotifications] handles silent notifications.
  /// [onSilentNotificationReceived] is the callback for when a silent notification is received.
  /// This is used to update the UI when the app is in the background.
  /// Should be called at the top of the app.
  /// If you're going to use other Firebase services in the background, such as Firestore,
  /// make sure you call `initializeApp` before using other Firebase services.
  /// `await Firebase.initializeApp();`
  @action
  void handleSilentNotifications({
    required void Function() onSilentNotificationReceived,
  }) {
    FirebaseMessaging.onBackgroundMessage(
      (message) => _firebaseMessagingBackgroundHandler(
        message,
        onSilentNotificationReceived,
      ),
    );
  }

  /// [subscribeToTopic] subscribes to a topic for notifications to be sent to user.
  @action
  Future<void> subscribeToTopic(String topic) async {
    await _pushNotifications.subscribeToTopic(topic);
  }

  /// [unSubscribeFromTopic] unsubscribes from a topic for notifications.
  @action
  Future<void> unSubscribeFromTopic(String topic) async {
    await _pushNotifications.unsubscribeFromTopic(topic);
  }

  /// [getToken] gets the token for push notifications.
  @action
  Future<String?> getToken({String? webVapidKey}) async {
    return _pushNotifications.getToken(vapidKey: webVapidKey).then((token) {
      AppLogger.print(
        "FCM Token: $token",
        [NotificationsLoggers.notifications],
      );
      return token;
    });
  }

  /// [deleteToken] deletes the token for push notifications.
  @action
  Future<void> deleteToken() async {
    return _pushNotifications.deleteToken().then((_) {
      AppLogger.print(
        "FCM Token Deleted",
        [NotificationsLoggers.notifications],
      );
    });
  }

  /// [getAPNSToken] gets the APNS token for Apple push notifications.
  @action
  Future<String?> getAPNSToken() async {
    final _token = await _pushNotifications.getAPNSToken();
    AppLogger.print(
      "APNS Token: $_token",
      [NotificationsLoggers.notifications],
    );
    return _token;
  }

  /// [_receivePushNotification] receives a push notification.
  @action
  Future<void> _receivePushNotification(
    Map<String, dynamic> notificationData, {
    bool shouldUpdateAll = true,
    bool shouldCallNotificationReceived = true,
  }) async {
    if (shouldUpdateAll) await _updateActiveNotificationsList();
    final notification = NotificationModel.fromStringMap(notificationData);
    if (shouldCallNotificationReceived) {
      onNotificationReceived?.call(notification);
    }
    if (notification.destination != null) {
      AppLogger.print(
        "Notification Destination: ${notification.destination}",
        [NotificationsLoggers.notifications],
      );
    }
    await update(notification.id, notification);
  }

  @action
  AndroidNotificationChannel _createAndroidForegroundPushNotificationChannel() {
    // Create an Android Notification Channel using local notifications.
    localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(androidPushNotificationsChannel);
    return androidPushNotificationsChannel;
  }

  @pragma("vm:entry-point")
  Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
    void Function() onSilentNotificationReceived,
  ) async {
    onSilentNotificationReceived.call();
    //?: Sentry or backend database call for performance monitoring
    AppLogger.print(
      "Handling a background message: ${message.messageId}",
      [NotificationsLoggers.notifications],
    );
  }

  @action
  NotificationModel? _convertRemoteNotificationToNotificationModel(
    Map<String, dynamic> data,
  ) {
    if (data["id"] == null) return null;
    final notification = NotificationModel.fromStringMap(data);
    AppLogger.print(
      "Notification: $notification",
      [NotificationsLoggers.notifications],
    );
    return notification;
  }
}
