// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DeepLinksStore on _DeepLinksStore, Store {
  late final _$receivedDeepLinkAtom =
      Atom(name: '_DeepLinksStore.receivedDeepLink', context: context);

  @override
  DeepLinkModel? get receivedDeepLink {
    _$receivedDeepLinkAtom.reportRead();
    return super.receivedDeepLink;
  }

  @override
  set receivedDeepLink(DeepLinkModel? value) {
    _$receivedDeepLinkAtom.reportWrite(value, super.receivedDeepLink, () {
      super.receivedDeepLink = value;
    });
  }

  late final _$streamSubscriptionAtom =
      Atom(name: '_DeepLinksStore.streamSubscription', context: context);

  @override
  StreamSubscription<Map<dynamic, dynamic>>? get streamSubscription {
    _$streamSubscriptionAtom.reportRead();
    return super.streamSubscription;
  }

  @override
  set streamSubscription(StreamSubscription<Map<dynamic, dynamic>>? value) {
    _$streamSubscriptionAtom.reportWrite(value, super.streamSubscription, () {
      super.streamSubscription = value;
    });
  }

  late final _$handleDeepLinkAsyncAction =
      AsyncAction('_DeepLinksStore.handleDeepLink', context: context);

  @override
  Future<void> handleDeepLink(void Function(DeepLinkModel) onDeepLink) {
    return _$handleDeepLinkAsyncAction
        .run(() => super.handleDeepLink(onDeepLink));
  }

  late final _$isUserIdentifiedAsyncAction =
      AsyncAction('_DeepLinksStore.isUserIdentified', context: context);

  @override
  Future<bool> isUserIdentified() {
    return _$isUserIdentifiedAsyncAction.run(() => super.isUserIdentified());
  }

  late final _$disposeAsyncAction =
      AsyncAction('_DeepLinksStore.dispose', context: context);

  @override
  Future<void> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  late final _$getLatestReferringParamsAsyncAction =
      AsyncAction('_DeepLinksStore.getLatestReferringParams', context: context);

  @override
  Future<Map<dynamic, dynamic>> getLatestReferringParams() {
    return _$getLatestReferringParamsAsyncAction
        .run(() => super.getLatestReferringParams());
  }

  late final _$getFirstReferringParamsAsyncAction =
      AsyncAction('_DeepLinksStore.getFirstReferringParams', context: context);

  @override
  Future<Map<dynamic, dynamic>> getFirstReferringParams() {
    return _$getFirstReferringParamsAsyncAction
        .run(() => super.getFirstReferringParams());
  }

  late final _$createDeepLinkAsyncAction =
      AsyncAction('_DeepLinksStore.createDeepLink', context: context);

  @override
  Future<String> createDeepLink(
      {required DeepLinkModel deepLink, LinkPropertiesModel? linkProperties}) {
    return _$createDeepLinkAsyncAction.run(() => super
        .createDeepLink(deepLink: deepLink, linkProperties: linkProperties));
  }

  late final _$shareDeepLinkAsyncAction =
      AsyncAction('_DeepLinksStore.shareDeepLink', context: context);

  @override
  Future<String?> shareDeepLink(
      {required String message,
      required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties}) {
    return _$shareDeepLinkAsyncAction.run(() => super.shareDeepLink(
        message: message, deepLink: deepLink, linkProperties: linkProperties));
  }

  late final _$createQRCodeAsyncAction =
      AsyncAction('_DeepLinksStore.createQRCode', context: context);

  @override
  Future<dynamic> createQRCode(
      {required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties,
      QRCodeModel? qrCode}) {
    return _$createQRCodeAsyncAction.run(() => super.createQRCode(
        deepLink: deepLink, linkProperties: linkProperties, qrCode: qrCode));
  }

  late final _$_DeepLinksStoreActionController =
      ActionController(name: '_DeepLinksStore', context: context);

  @override
  void _listenForReceivedDeepLink() {
    final _$actionInfo = _$_DeepLinksStoreActionController.startAction(
        name: '_DeepLinksStore._listenForReceivedDeepLink');
    try {
      return super._listenForReceivedDeepLink();
    } finally {
      _$_DeepLinksStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void logout() {
    final _$actionInfo = _$_DeepLinksStoreActionController.startAction(
        name: '_DeepLinksStore.logout');
    try {
      return super.logout();
    } finally {
      _$_DeepLinksStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startNewDeepLink({required String url}) {
    final _$actionInfo = _$_DeepLinksStoreActionController.startAction(
        name: '_DeepLinksStore.startNewDeepLink');
    try {
      return super.startNewDeepLink(url: url);
    } finally {
      _$_DeepLinksStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
receivedDeepLink: ${receivedDeepLink},
streamSubscription: ${streamSubscription}
    ''';
  }
}
