// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotificationsStore on _NotificationsStore, Store {
  Computed<ValueListenable<TypeBox<NotificationModel?>>>?
      _$notificationsComputed;

  @override
  ValueListenable<TypeBox<NotificationModel?>> get notifications =>
      (_$notificationsComputed ??=
              Computed<ValueListenable<TypeBox<NotificationModel?>>>(
                  () => super.notifications,
                  name: '_NotificationsStore.notifications'))
          .value;

  late final _$receivedNotificationAtom =
      Atom(name: '_NotificationsStore.receivedNotification', context: context);

  @override
  NotificationModel? get receivedNotification {
    _$receivedNotificationAtom.reportRead();
    return super.receivedNotification;
  }

  @override
  set receivedNotification(NotificationModel? value) {
    _$receivedNotificationAtom.reportWrite(value, super.receivedNotification,
        () {
      super.receivedNotification = value;
    });
  }

  late final _$requestPermissionsAsyncAction =
      AsyncAction('_NotificationsStore.requestPermissions', context: context);

  @override
  Future<void> requestPermissions(
      {NotificationsPermissionsModel permissions =
          NotificationsPermissionsModel.standard}) {
    return _$requestPermissionsAsyncAction
        .run(() => super.requestPermissions(permissions: permissions));
  }

  late final _$searchAllAsyncAction =
      AsyncAction('_NotificationsStore.searchAll', context: context);

  @override
  Future<Pair<RequestResponse, List<NotificationModel?>>> searchAll(
      Map<String, dynamic> query) {
    return _$searchAllAsyncAction.run(() => super.searchAll(query));
  }

  late final _$searchAsyncAction =
      AsyncAction('_NotificationsStore.search', context: context);

  @override
  Future<Pair<RequestResponse, NotificationModel?>> search(
      Map<String, dynamic> query) {
    return _$searchAsyncAction.run(() => super.search(query));
  }

  late final _$_NotificationsStoreActionController =
      ActionController(name: '_NotificationsStore', context: context);

  @override
  void listenForReceivedNotification(
      void Function(NotificationModel) onNotificationReceived) {
    final _$actionInfo = _$_NotificationsStoreActionController.startAction(
        name: '_NotificationsStore.listenForReceivedNotification');
    try {
      return super.listenForReceivedNotification(onNotificationReceived);
    } finally {
      _$_NotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void replaceAll(List<NotificationModel> notificationList) {
    final _$actionInfo = _$_NotificationsStoreActionController.startAction(
        name: '_NotificationsStore.replaceAll');
    try {
      return super.replaceAll(notificationList);
    } finally {
      _$_NotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
receivedNotification: ${receivedNotification},
notifications: ${notifications}
    ''';
  }
}
