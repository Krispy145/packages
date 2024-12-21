// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListStore<T, K extends Comparable<K>> on _ListStore<T, K>, Store {
  Computed<bool>? _$showLoadingSpinnerAtBottomComputed;

  @override
  bool get showLoadingSpinnerAtBottom =>
      (_$showLoadingSpinnerAtBottomComputed ??= Computed<bool>(
              () => super.showLoadingSpinnerAtBottom,
              name: '_ListStore.showLoadingSpinnerAtBottom'))
          .value;

  late final _$refreshAsyncAction =
      AsyncAction('_ListStore.refresh', context: context);

  @override
  Future<void> refresh() {
    return _$refreshAsyncAction.run(() => super.refresh());
  }

  late final _$initializeAsyncAction =
      AsyncAction('_ListStore.initialize', context: context);

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  late final _$loadAsyncAction =
      AsyncAction('_ListStore.load', context: context);

  @override
  Future<void> load({bool refresh = false}) {
    return _$loadAsyncAction.run(() => super.load(refresh: refresh));
  }

  @override
  String toString() {
    return '''
showLoadingSpinnerAtBottom: ${showLoadingSpinnerAtBottom}
    ''';
  }
}
