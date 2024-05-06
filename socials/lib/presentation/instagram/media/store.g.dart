// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InstagramMediaStore on _InstagramMediaStore, Store {
  Computed<Uri>? _$initialUriComputed;

  @override
  Uri get initialUri =>
      (_$initialUriComputed ??= Computed<Uri>(() => super.initialUri,
              name: '_InstagramMediaStore.initialUri'))
          .value;

  late final _$mediaIdsAtom =
      Atom(name: '_InstagramMediaStore.mediaIds', context: context);

  @override
  List<InstagramMediaIdModel?> get mediaIds {
    _$mediaIdsAtom.reportRead();
    return super.mediaIds;
  }

  @override
  set mediaIds(List<InstagramMediaIdModel?> value) {
    _$mediaIdsAtom.reportWrite(value, super.mediaIds, () {
      super.mediaIds = value;
    });
  }

  late final _$getUserMediaAsyncAction =
      AsyncAction('_InstagramMediaStore.getUserMedia', context: context);

  @override
  Future<List<InstagramMediaModel?>> getUserMedia(
      {int? limit, bool refresh = false}) {
    return _$getUserMediaAsyncAction
        .run(() => super.getUserMedia(limit: limit, refresh: refresh));
  }

  late final _$getUserMediaIdsAsyncAction =
      AsyncAction('_InstagramMediaStore.getUserMediaIds', context: context);

  @override
  Future<void> getUserMediaIds(
      {InstagramUserModel? user, bool refresh = false}) {
    return _$getUserMediaIdsAsyncAction
        .run(() => super.getUserMediaIds(user: user, refresh: refresh));
  }

  late final _$getMediaDetailsAsyncAction =
      AsyncAction('_InstagramMediaStore.getMediaDetails', context: context);

  @override
  Future<void> getMediaDetails(String mediaId) {
    return _$getMediaDetailsAsyncAction
        .run(() => super.getMediaDetails(mediaId));
  }

  @override
  String toString() {
    return '''
mediaIds: ${mediaIds},
initialUri: ${initialUri}
    ''';
  }
}
