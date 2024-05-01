// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GooglePlaceSearchFormFieldStore
    on _GooglePlaceSearchFormFieldStore, Store {
  late final _$searchQueryAsyncAction = AsyncAction(
      '_GooglePlaceSearchFormFieldStore.searchQuery',
      context: context);

  @override
  Future<List<GooglePlace>> searchQuery(String query) {
    return _$searchQueryAsyncAction.run(() => super.searchQuery(query));
  }

  late final _$onSelectedPlaceAsyncAction = AsyncAction(
      '_GooglePlaceSearchFormFieldStore.onSelectedPlace',
      context: context);

  @override
  Future<void> onSelectedPlace(GooglePlace? googlePlace) {
    return _$onSelectedPlaceAsyncAction
        .run(() => super.onSelectedPlace(googlePlace));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
