// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DeepLinksStore on DeepLinksStoreBase, Store {
  late final _$streamSubscriptionAtom =
      Atom(name: 'DeepLinksStoreBase.streamSubscription', context: context);

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

  late final _$isUserIdentifiedAsyncAction =
      AsyncAction('DeepLinksStoreBase.isUserIdentified', context: context);

  @override
  Future<bool> isUserIdentified() {
    return _$isUserIdentifiedAsyncAction.run(() => super.isUserIdentified());
  }

  late final _$disposeAsyncAction =
      AsyncAction('DeepLinksStoreBase.dispose', context: context);

  @override
  Future<void> dispose() {
    return _$disposeAsyncAction.run(() => super.dispose());
  }

  late final _$getLatestReferringParamsAsyncAction = AsyncAction(
      'DeepLinksStoreBase.getLatestReferringParams',
      context: context);

  @override
  Future<Map<dynamic, dynamic>> getLatestReferringParams() {
    return _$getLatestReferringParamsAsyncAction
        .run(() => super.getLatestReferringParams());
  }

  late final _$getFirstReferringParamsAsyncAction = AsyncAction(
      'DeepLinksStoreBase.getFirstReferringParams',
      context: context);

  @override
  Future<Map<dynamic, dynamic>> getFirstReferringParams() {
    return _$getFirstReferringParamsAsyncAction
        .run(() => super.getFirstReferringParams());
  }

  late final _$createDeepLinkAsyncAction =
      AsyncAction('DeepLinksStoreBase.createDeepLink', context: context);

  @override
  Future<String> createDeepLink(
      {required DeepLinkModel deepLink, LinkPropertiesModel? linkProperties}) {
    return _$createDeepLinkAsyncAction.run(() => super
        .createDeepLink(deepLink: deepLink, linkProperties: linkProperties));
  }

  late final _$shareDeepLinkAsyncAction =
      AsyncAction('DeepLinksStoreBase.shareDeepLink', context: context);

  @override
  Future<dynamic> shareDeepLink(
      {required String message,
      required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties}) {
    return _$shareDeepLinkAsyncAction.run(() => super.shareDeepLink(
        message: message, deepLink: deepLink, linkProperties: linkProperties));
  }

  late final _$createQRCodeAsyncAction =
      AsyncAction('DeepLinksStoreBase.createQRCode', context: context);

  @override
  Future<dynamic> createQRCode(
      {required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties,
      QRCodeModel? qrCode}) {
    return _$createQRCodeAsyncAction.run(() => super.createQRCode(
        deepLink: deepLink, linkProperties: linkProperties, qrCode: qrCode));
  }

  late final _$DeepLinksStoreBaseActionController =
      ActionController(name: 'DeepLinksStoreBase', context: context);

  @override
  void logout() {
    final _$actionInfo = _$DeepLinksStoreBaseActionController.startAction(
        name: 'DeepLinksStoreBase.logout');
    try {
      return super.logout();
    } finally {
      _$DeepLinksStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startNewDeepLink({required String url}) {
    final _$actionInfo = _$DeepLinksStoreBaseActionController.startAction(
        name: 'DeepLinksStoreBase.startNewDeepLink');
    try {
      return super.startNewDeepLink(url: url);
    } finally {
      _$DeepLinksStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
streamSubscription: ${streamSubscription}
    ''';
  }
}
