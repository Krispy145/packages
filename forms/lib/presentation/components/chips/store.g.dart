// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ChipsFormFieldStore<T> on _ChipsFormFieldStore<T>, Store {
  Computed<List<T>>? _$availableComputed;

  @override
  List<T> get available =>
      (_$availableComputed ??= Computed<List<T>>(() => super.available,
              name: '_ChipsFormFieldStore.available'))
          .value;
  Computed<List<T>>? _$selectedComputed;

  @override
  List<T> get selected =>
      (_$selectedComputed ??= Computed<List<T>>(() => super.selected,
              name: '_ChipsFormFieldStore.selected'))
          .value;
  Computed<List<T>>? _$unselectedComputed;

  @override
  List<T> get unselected =>
      (_$unselectedComputed ??= Computed<List<T>>(() => super.unselected,
              name: '_ChipsFormFieldStore.unselected'))
          .value;
  Computed<List<T>>? _$filtersComputed;

  @override
  List<T> get filters =>
      (_$filtersComputed ??= Computed<List<T>>(() => super.filters,
              name: '_ChipsFormFieldStore.filters'))
          .value;

  late final _$loadFiltersModelsAsyncAction =
      AsyncAction('_ChipsFormFieldStore.loadFiltersModels', context: context);

  @override
  Future<void> loadFiltersModels() {
    return _$loadFiltersModelsAsyncAction.run(() => super.loadFiltersModels());
  }

  late final _$_ChipsFormFieldStoreActionController =
      ActionController(name: '_ChipsFormFieldStore', context: context);

  @override
  void clearSelection() {
    final _$actionInfo = _$_ChipsFormFieldStoreActionController.startAction(
        name: '_ChipsFormFieldStore.clearSelection');
    try {
      return super.clearSelection();
    } finally {
      _$_ChipsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectFilter(T filter) {
    final _$actionInfo = _$_ChipsFormFieldStoreActionController.startAction(
        name: '_ChipsFormFieldStore.selectFilter');
    try {
      return super.selectFilter(filter);
    } finally {
      _$_ChipsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectFilters(List<T> filters) {
    final _$actionInfo = _$_ChipsFormFieldStoreActionController.startAction(
        name: '_ChipsFormFieldStore.selectFilters');
    try {
      return super.selectFilters(filters);
    } finally {
      _$_ChipsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
available: ${available},
selected: ${selected},
unselected: ${unselected},
filters: ${filters}
    ''';
  }
}
