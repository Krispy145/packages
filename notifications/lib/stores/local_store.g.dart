// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocalNotificationsStore on _LocalNotificationsStore, Store {
  late final _$_notificationsEnabledAtom = Atom(
      name: '_LocalNotificationsStore._notificationsEnabled', context: context);

  @override
  bool get _notificationsEnabled {
    _$_notificationsEnabledAtom.reportRead();
    return super._notificationsEnabled;
  }

  @override
  set _notificationsEnabled(bool value) {
    _$_notificationsEnabledAtom.reportWrite(value, super._notificationsEnabled,
        () {
      super._notificationsEnabled = value;
    });
  }

  late final _$darwinNotificationCategoriesAtom = Atom(
      name: '_LocalNotificationsStore.darwinNotificationCategories',
      context: context);

  @override
  ObservableList<DarwinNotificationCategory> get darwinNotificationCategories {
    _$darwinNotificationCategoriesAtom.reportRead();
    return super.darwinNotificationCategories;
  }

  @override
  set darwinNotificationCategories(
      ObservableList<DarwinNotificationCategory> value) {
    _$darwinNotificationCategoriesAtom
        .reportWrite(value, super.darwinNotificationCategories, () {
      super.darwinNotificationCategories = value;
    });
  }

  late final _$requestPermissionsAsyncAction = AsyncAction(
      '_LocalNotificationsStore.requestPermissions',
      context: context);

  @override
  Future<bool> requestPermissions(NotificationPermissions? permissions) {
    return _$requestPermissionsAsyncAction
        .run(() => super.requestPermissions(permissions));
  }

  late final _$initializeAsyncAction =
      AsyncAction('_LocalNotificationsStore.initialize', context: context);

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  late final _$showAsyncAction =
      AsyncAction('_LocalNotificationsStore.show', context: context);

  @override
  Future<void> show(
      {required NotificationModel notification,
      required NotificationDetails details}) {
    return _$showAsyncAction
        .run(() => super.show(notification: notification, details: details));
  }

  late final _$periodicallyShowAsyncAction = AsyncAction(
      '_LocalNotificationsStore.periodicallyShow',
      context: context);

  @override
  Future<void> periodicallyShow(
      {required NotificationModel notification,
      required NotificationDetails details,
      required RepeatInterval interval}) {
    return _$periodicallyShowAsyncAction.run(() => super.periodicallyShow(
        notification: notification, details: details, interval: interval));
  }

  late final _$zonedScheduleAsyncAction =
      AsyncAction('_LocalNotificationsStore.zonedSchedule', context: context);

  @override
  Future<void> zonedSchedule(
      {required NotificationModel notification,
      required NotificationDetails details,
      required tz.TZDateTime time,
      ScheduledInterval interval = ScheduledInterval.exact,
      AndroidScheduleMode androidScheduleMode =
          AndroidScheduleMode.exactAllowWhileIdle}) {
    return _$zonedScheduleAsyncAction.run(() => super.zonedSchedule(
        notification: notification,
        details: details,
        time: time,
        interval: interval,
        androidScheduleMode: androidScheduleMode));
  }

  late final _$createAndroidNotificationChannelAsyncAction = AsyncAction(
      '_LocalNotificationsStore.createAndroidNotificationChannel',
      context: context);

  @override
  Future<void> createAndroidNotificationChannel(
      AndroidNotificationChannel channel) {
    return _$createAndroidNotificationChannelAsyncAction
        .run(() => super.createAndroidNotificationChannel(channel));
  }

  late final _$deleteAndroidNotificationChannelAsyncAction = AsyncAction(
      '_LocalNotificationsStore.deleteAndroidNotificationChannel',
      context: context);

  @override
  Future<void> deleteAndroidNotificationChannel(String channelId) {
    return _$deleteAndroidNotificationChannelAsyncAction
        .run(() => super.deleteAndroidNotificationChannel(channelId));
  }

  late final _$updateActiveNotificationsListAsyncAction = AsyncAction(
      '_LocalNotificationsStore.updateActiveNotificationsList',
      context: context);

  @override
  Future<void> updateActiveNotificationsList() {
    return _$updateActiveNotificationsListAsyncAction
        .run(() => super.updateActiveNotificationsList());
  }

  late final _$deleteAsyncAction =
      AsyncAction('_LocalNotificationsStore.delete', context: context);

  @override
  Future<void> delete(String id) {
    return _$deleteAsyncAction.run(() => super.delete(id));
  }

  late final _$deleteAllAsyncAction =
      AsyncAction('_LocalNotificationsStore.deleteAll', context: context);

  @override
  Future<void> deleteAll() {
    return _$deleteAllAsyncAction.run(() => super.deleteAll());
  }

  late final _$_getActiveNotificationsAsyncAction = AsyncAction(
      '_LocalNotificationsStore._getActiveNotifications',
      context: context);

  @override
  Future<ObservableList<NotificationModel?>> _getActiveNotifications() {
    return _$_getActiveNotificationsAsyncAction
        .run(() => super._getActiveNotifications());
  }

  late final _$_configureLocalTimeZoneAsyncAction = AsyncAction(
      '_LocalNotificationsStore._configureLocalTimeZone',
      context: context);

  @override
  Future<void> _configureLocalTimeZone() {
    return _$_configureLocalTimeZoneAsyncAction
        .run(() => super._configureLocalTimeZone());
  }

  late final _$_initializeDarwinAsyncAction = AsyncAction(
      '_LocalNotificationsStore._initializeDarwin',
      context: context);

  @override
  Future<DarwinInitializationSettings> _initializeDarwin() {
    return _$_initializeDarwinAsyncAction.run(() => super._initializeDarwin());
  }

  late final _$_initializeLinuxAsyncAction = AsyncAction(
      '_LocalNotificationsStore._initializeLinux',
      context: context);

  @override
  Future<LinuxInitializationSettings> _initializeLinux() {
    return _$_initializeLinuxAsyncAction.run(() => super._initializeLinux());
  }

  late final _$_handleInitialNotificationAsyncAction = AsyncAction(
      '_LocalNotificationsStore._handleInitialNotification',
      context: context);

  @override
  Future<void> _handleInitialNotification() {
    return _$_handleInitialNotificationAsyncAction
        .run(() => super._handleInitialNotification());
  }

  late final _$_onDidReceiveNotificationResponseAsyncAction = AsyncAction(
      '_LocalNotificationsStore._onDidReceiveNotificationResponse',
      context: context);

  @override
  Future<void> _onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse,
      {bool updateBadge = true}) {
    return _$_onDidReceiveNotificationResponseAsyncAction.run(() => super
        ._onDidReceiveNotificationResponse(notificationResponse,
            updateBadge: updateBadge));
  }

  late final _$_LocalNotificationsStoreActionController =
      ActionController(name: '_LocalNotificationsStore', context: context);

  @override
  NotificationDetails notificationDetails(
      {LocalAndroidNotificationDetails? localNotificationDetails}) {
    final _$actionInfo = _$_LocalNotificationsStoreActionController.startAction(
        name: '_LocalNotificationsStore.notificationDetails');
    try {
      return super.notificationDetails(
          localNotificationDetails: localNotificationDetails);
    } finally {
      _$_LocalNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDarwinNotificationCategories(
      List<DarwinNotificationCategory> categories) {
    final _$actionInfo = _$_LocalNotificationsStoreActionController.startAction(
        name: '_LocalNotificationsStore.setDarwinNotificationCategories');
    try {
      return super.setDarwinNotificationCategories(categories);
    } finally {
      _$_LocalNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  NotificationModel? _convertNotificationResponseToModel(
      NotificationResponse notificationResponse) {
    final _$actionInfo = _$_LocalNotificationsStoreActionController.startAction(
        name: '_LocalNotificationsStore._convertNotificationResponseToModel');
    try {
      return super._convertNotificationResponseToModel(notificationResponse);
    } finally {
      _$_LocalNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  ObservableList<NotificationModel?> _convertActiveNotificationsToModel(
      List<ActiveNotification> activeNotifications) {
    final _$actionInfo = _$_LocalNotificationsStoreActionController.startAction(
        name: '_LocalNotificationsStore._convertActiveNotificationsToModel');
    try {
      return super._convertActiveNotificationsToModel(activeNotifications);
    } finally {
      _$_LocalNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _onDidReceiveLocalNotification(NotificationModel? notification) {
    final _$actionInfo = _$_LocalNotificationsStoreActionController.startAction(
        name: '_LocalNotificationsStore._onDidReceiveLocalNotification');
    try {
      return super._onDidReceiveLocalNotification(notification);
    } finally {
      _$_LocalNotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
darwinNotificationCategories: ${darwinNotificationCategories}
    ''';
  }
}
