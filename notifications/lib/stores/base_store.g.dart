// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotificationsStore on _NotificationsStore, Store {
  Computed<ValueListenable<TypeBox<NotificationModel?>>>? _$notificationsComputed;

  @override
  ValueListenable<TypeBox<NotificationModel?>> get notifications =>
      (_$notificationsComputed ??= Computed<ValueListenable<TypeBox<NotificationModel?>>>(() => super.notifications, name: '_NotificationsStore.notifications')).value;

  late final _$requestPermissionsAsyncAction = AsyncAction('_NotificationsStore.requestPermissions', context: context);

  @override
  Future<void> requestPermissions(NotificationPermissions? permissions) {
    return _$requestPermissionsAsyncAction.run(() => super.requestPermissions(permissions));
  }

<<<<<<< HEAD
  late final _$searchAsyncAction =
      AsyncAction('_NotificationsStore.search', context: context);

  @override
  Future<NotificationModel?> search(Map<String, dynamic> queries) {
    return _$searchAsyncAction.run(() => super.search(queries));
  }

  late final _$_NotificationsStoreActionController =
      ActionController(name: '_NotificationsStore', context: context);
=======
  late final _$_NotificationsStoreActionController = ActionController(name: '_NotificationsStore', context: context);
>>>>>>> ea6f0693f4ea21fad685502f660673f55de6f4e5

  @override
  Future<List<NotificationModel?>> searchAll(Q query) {
    final _$actionInfo = _$_NotificationsStoreActionController.startAction(name: '_NotificationsStore.searchAll');
    try {
      return super.searchAll(queries);
    } finally {
      _$_NotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void replaceAll(List<NotificationModel> notificationList) {
    final _$actionInfo = _$_NotificationsStoreActionController.startAction(name: '_NotificationsStore.replaceAll');
    try {
      return super.replaceAll(notificationList);
    } finally {
      _$_NotificationsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notifications: ${notifications}
    ''';
  }
}
