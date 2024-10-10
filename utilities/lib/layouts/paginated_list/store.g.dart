// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PaginatedListStore<T, K extends Comparable<K>>
    on _PaginatedListStore<T, K>, Store {
  Computed<bool>? _$showLoadingSpinnerAtBottomComputed;

  @override
  bool get showLoadingSpinnerAtBottom =>
      (_$showLoadingSpinnerAtBottomComputed ??= Computed<bool>(
              () => super.showLoadingSpinnerAtBottom,
              name: '_PaginatedListStore.showLoadingSpinnerAtBottom'))
          .value;

  late final _$requestResponseAtom =
      Atom(name: '_PaginatedListStore.requestResponse', context: context);

  @override
  RequestResponse? get requestResponse {
    _$requestResponseAtom.reportRead();
    return super.requestResponse;
  }

  @override
  set requestResponse(RequestResponse? value) {
    _$requestResponseAtom.reportWrite(value, super.requestResponse, () {
      super.requestResponse = value;
    });
  }

  late final _$refreshAsyncAction =
      AsyncAction('_PaginatedListStore.refresh', context: context);

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  late final _$loadMoreAsyncAction =
      AsyncAction('_PaginatedListStore.loadMore', context: context);

  @override
  Future<void> loadMore({int? limit, bool refresh = false}) {
    return _$loadMoreAsyncAction
        .run(() => super.loadMore(limit: limit, refresh: refresh));
  }

  @override
  String toString() {
    return '''
requestResponse: ${requestResponse},
showLoadingSpinnerAtBottom: ${showLoadingSpinnerAtBottom}
    ''';
  }
}
