// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InstagramUserStore on _InstagramUserStore, Store {
  Computed<Uri>? _$initialUriComputed;

  @override
  Uri get initialUri =>
      (_$initialUriComputed ??= Computed<Uri>(() => super.initialUri,
              name: '_InstagramUserStore.initialUri'))
          .value;

  late final _$userAtom =
      Atom(name: '_InstagramUserStore.user', context: context);

  @override
  InstagramUserModel? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(InstagramUserModel? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$mediaIdsAtom =
      Atom(name: '_InstagramUserStore.mediaIds', context: context);

  @override
  InstagramMediaIdsResponse? get mediaIds {
    _$mediaIdsAtom.reportRead();
    return super.mediaIds;
  }

  @override
  set mediaIds(InstagramMediaIdsResponse? value) {
    _$mediaIdsAtom.reportWrite(value, super.mediaIds, () {
      super.mediaIds = value;
    });
  }

  late final _$mediaAtom =
      Atom(name: '_InstagramUserStore.media', context: context);

  @override
  ObservableList<InstagramMediaModel> get media {
    _$mediaAtom.reportRead();
    return super.media;
  }

  @override
  set media(ObservableList<InstagramMediaModel> value) {
    _$mediaAtom.reportWrite(value, super.media, () {
      super.media = value;
    });
  }

  late final _$setLocalUserAsyncAction =
      AsyncAction('_InstagramUserStore.setLocalUser', context: context);

  @override
  Future<void> setLocalUser(InstagramUserModel user) {
    return _$setLocalUserAsyncAction.run(() => super.setLocalUser(user));
  }

  late final _$tryAuthenticateAsyncAction =
      AsyncAction('_InstagramUserStore.tryAuthenticate', context: context);

  @override
  Future<void> tryAuthenticate() {
    return _$tryAuthenticateAsyncAction.run(() => super.tryAuthenticate());
  }

  late final _$getLocalUserAsyncAction =
      AsyncAction('_InstagramUserStore.getLocalUser', context: context);

  @override
  Future<void> getLocalUser() {
    return _$getLocalUserAsyncAction.run(() => super.getLocalUser());
  }

  late final _$clearLocalUserAsyncAction =
      AsyncAction('_InstagramUserStore.clearLocalUser', context: context);

  @override
  Future<void> clearLocalUser() {
    return _$clearLocalUserAsyncAction.run(() => super.clearLocalUser());
  }

  late final _$getAccessTokenFromCodeAsyncAction = AsyncAction(
      '_InstagramUserStore.getAccessTokenFromCode',
      context: context);

  @override
  Future<void> getAccessTokenFromCode(WebUri? uri) {
    return _$getAccessTokenFromCodeAsyncAction
        .run(() => super.getAccessTokenFromCode(uri));
  }

  @override
  String toString() {
    return '''
user: ${user},
mediaIds: ${mediaIds},
media: ${media},
initialUri: ${initialUri}
    ''';
  }
}
