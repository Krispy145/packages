// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PushNotificationsStore on _PushNotificationsStore, Store {
  late final _$fcmTokenAtom =
      Atom(name: '_PushNotificationsStore.fcmToken', context: context);

  @override
  String? get fcmToken {
    _$fcmTokenAtom.reportRead();
    return super.fcmToken;
  }

  @override
  set fcmToken(String? value) {
    _$fcmTokenAtom.reportWrite(value, super.fcmToken, () {
      super.fcmToken = value;
    });
  }

  late final _$apnsTokenAtom =
      Atom(name: '_PushNotificationsStore.apnsToken', context: context);

  @override
  String? get apnsToken {
    _$apnsTokenAtom.reportRead();
    return super.apnsToken;
  }

  @override
  set apnsToken(String? value) {
    _$apnsTokenAtom.reportWrite(value, super.apnsToken, () {
      super.apnsToken = value;
    });
  }

  late final _$authorizationStatusAtom = Atom(
      name: '_PushNotificationsStore.authorizationStatus', context: context);

  @override
  AuthorizationStatus get authorizationStatus {
    _$authorizationStatusAtom.reportRead();
    return super.authorizationStatus;
  }

  @override
  set authorizationStatus(AuthorizationStatus value) {
    _$authorizationStatusAtom.reportWrite(value, super.authorizationStatus, () {
      super.authorizationStatus = value;
    });
  }

  late final _$requestPermissionsAsyncAction = AsyncAction(
      '_PushNotificationsStore.requestPermissions',
      context: context);

  @override
  Future<Pair<String?, AuthorizationStatus>> requestPermissions(
      NotificationPermissions? permissions) {
    return _$requestPermissionsAsyncAction
        .run(() => super.requestPermissions(permissions));
  }

  late final _$initializeAsyncAction =
      AsyncAction('_PushNotificationsStore.initialize', context: context);

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  late final _$_updateActiveNotificationsListAsyncAction = AsyncAction(
      '_PushNotificationsStore._updateActiveNotificationsList',
      context: context);

  @override
  Future<void> _updateActiveNotificationsList() {
    return _$_updateActiveNotificationsListAsyncAction
        .run(() => super._updateActiveNotificationsList());
  }

  late final _$addAsyncAction =
      AsyncAction('_PushNotificationsStore.add', context: context);

  @override
  Future<NotificationModel?> add(NotificationModel notification) {
    return _$addAsyncAction.run(() => super.add(notification));
  }

  late final _$addAllAsyncAction =
      AsyncAction('_PushNotificationsStore.addAll', context: context);

  @override
  Future<void> addAll(List<NotificationModel> notifications) {
    return _$addAllAsyncAction.run(() => super.addAll(notifications));
  }

  late final _$updateAsyncAction =
      AsyncAction('_PushNotificationsStore.update', context: context);

  @override
  Future<void> update(String id, NotificationModel notification) {
    return _$updateAsyncAction.run(() => super.update(id, notification));
  }

  late final _$updateAllAsyncAction =
      AsyncAction('_PushNotificationsStore.updateAll', context: context);

  @override
  Future<void> updateAll(Map<String, NotificationModel> notificationMap) {
    return _$updateAllAsyncAction.run(() => super.updateAll(notificationMap));
  }

  late final _$deleteAsyncAction =
      AsyncAction('_PushNotificationsStore.delete', context: context);

  @override
  Future<void> delete(String id) {
    return _$deleteAsyncAction.run(() => super.delete(id));
  }

  late final _$deleteAllAsyncAction =
      AsyncAction('_PushNotificationsStore.deleteAll', context: context);

  @override
  Future<void> deleteAll() {
    return _$deleteAllAsyncAction.run(() => super.deleteAll());
  }

  late final _$subscribeToTopicAsyncAction =
      AsyncAction('_PushNotificationsStore.subscribeToTopic', context: context);

  @override
  Future<void> subscribeToTopic(String topic) {
    return _$subscribeToTopicAsyncAction
        .run(() => super.subscribeToTopic(topic));
  }

  late final _$unSubscribeFromTopicAsyncAction = AsyncAction(
      '_PushNotificationsStore.unSubscribeFromTopic',
      context: context);

  @override
  Future<void> unSubscribeFromTopic(String topic) {
    return _$unSubscribeFromTopicAsyncAction
        .run(() => super.unSubscribeFromTopic(topic));
  }

  late final _$getTokenAsyncAction =
      AsyncAction('_PushNotificationsStore.getToken', context: context);

  @override
  Future<String?> getToken({String? webVapidKey}) {
    return _$getTokenAsyncAction
        .run(() => super.getToken(webVapidKey: webVapidKey));
  }

  late final _$deleteTokenAsyncAction =
      AsyncAction('_PushNotificationsStore.deleteToken', context: context);

  @override
  Future<void> deleteToken() {
    return _$deleteTokenAsyncAction.run(() => super.deleteToken());
  }

  late final _$getAPNSTokenAsyncAction =
      AsyncAction('_PushNotificationsStore.getAPNSToken', context: context);

  @override
  Future<String?> getAPNSToken() {
    return _$getAPNSTokenAsyncAction.run(() => super.getAPNSToken());
  }

  late final _$_receivePushNotificationAsyncAction = AsyncAction(
      '_PushNotificationsStore._receivePushNotification',
      context: context);

  @override
  Future<void> _receivePushNotification(Map<String, dynamic> notificationData,
      {bool shouldUpdateAll = true,
      bool shouldCallNotificationReceived = true}) {
    return _$_receivePushNotificationAsyncAction.run(() => super
        ._receivePushNotification(notificationData,
            shouldUpdateAll: shouldUpdateAll,
            shouldCallNotificationReceived: shouldCallNotificationReceived));
  }

  late final _$_PushNotificationsStoreActionController =
      ActionController(name: '_PushNotificationsStore', context: context);

  @override
  void handleSilentNotifications(
      {required void Function() onSilentNotificationReceived}) {
    final _$actionInfo = _$_PushNotificationsStoreActionController.startAction(
        name: '_PushNotificationsStore.handleSilentNotifications');
    try {
      return super.handleSilentNotifications(
          onSilentNotificationReceived: onSilentNotificationReceived);
    } finally {
      _$_PushNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  AndroidNotificationChannel _createAndroidForegroundPushNotificationChannel() {
    final _$actionInfo = _$_PushNotificationsStoreActionController.startAction(
        name:
            '_PushNotificationsStore._createAndroidForegroundPushNotificationChannel');
    try {
      return super._createAndroidForegroundPushNotificationChannel();
    } finally {
      _$_PushNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  NotificationModel? _convertRemoteNotificationToNotificationModel(
      Map<String, dynamic> data) {
    final _$actionInfo = _$_PushNotificationsStoreActionController.startAction(
        name:
            '_PushNotificationsStore._convertRemoteNotificationToNotificationModel');
    try {
      return super._convertRemoteNotificationToNotificationModel(data);
    } finally {
      _$_PushNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
fcmToken: ${fcmToken},
apnsToken: ${apnsToken},
authorizationStatus: ${authorizationStatus}
    ''';
  }
}
