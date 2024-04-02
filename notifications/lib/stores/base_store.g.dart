// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NotificationsStore on NotificationsBaseStore, Store {
  Computed<ValueListenable<TypeBox<NotificationModel?>>>?
      _$notificationsComputed;

  @override
  ValueListenable<TypeBox<NotificationModel?>> get notifications =>
      (_$notificationsComputed ??=
              Computed<ValueListenable<TypeBox<NotificationModel?>>>(
                  () => super.notifications,
                  name: 'NotificationsBaseStore.notifications'))
          .value;

  late final _$requestPermissionsAsyncAction = AsyncAction(
      'NotificationsBaseStore.requestPermissions',
      context: context);

  @override
  Future<void> requestPermissions(NotificationPermissions? permissions) {
    return _$requestPermissionsAsyncAction
        .run(() => super.requestPermissions(permissions));
  }

  late final _$NotificationsBaseStoreActionController =
      ActionController(name: 'NotificationsBaseStore', context: context);

  @override
  Future<List<NotificationModel?>> search(Map<String, dynamic> queries) {
    final _$actionInfo = _$NotificationsBaseStoreActionController.startAction(
        name: 'NotificationsBaseStore.search');
    try {
      return super.search(queries);
    } finally {
      _$NotificationsBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void replaceAll(List<NotificationModel> notificationList) {
    final _$actionInfo = _$NotificationsBaseStoreActionController.startAction(
        name: 'NotificationsBaseStore.replaceAll');
    try {
      return super.replaceAll(notificationList);
    } finally {
      _$NotificationsBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
notifications: ${notifications}
    ''';
  }
}
