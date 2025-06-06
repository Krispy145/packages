import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "../base/store.dart";

part "store.g.dart";

class DropdownFormFieldStore<T> = _DropdownFormFieldStore<T>
    with _$DropdownFormFieldStore;

abstract class _DropdownFormFieldStore<T> extends BaseFormFieldStore<T?>
    with LoadStateStore, Store {
  final String emptyMessage;
  final String errorMessage;
  final bool showSearch;

  _DropdownFormFieldStore({
    String? selectedId,
    bool Function(String id, T item)? matcher,
    this.showSearch = true,
    required super.initialValue,
    required super.onValueChanged,
    required super.title,
    required this.labelBuilder,
    this.subtitleBuilder,
    this.leadingBuilder,
    this.itemFetcher,
    this.initialItems,
    this.selectedItem,
    this.emptyMessage = "No items found",
    this.errorMessage = "Error loading items",
  }) {
    initialLoad(selectedId, matcher);
    // On Value Changed
    reaction<T?>((reaction) => value, (newValue) {
      if (newValue != null) {
        final item = items.firstWhere((element) => element == newValue);
        if (item != null) {
          selectedItem = item;
        }
      }
    });
  }

  Future<void> initialLoad(
    String? initialId,
    bool Function(String id, T item)? matcher,
  ) async {
    try {
      if (initialItems != null) {
        items.addAll(initialItems!);
      }
      if (itemFetcher != null) {
        final loadedItems = await itemFetcher!("");
        if (loadedItems != null) {
          items.addAll(loadedItems);
        }

        if (initialId != null) {
          final item =
              items.firstWhereOrNull((element) => matcher!(initialId, element));
          if (item != null) {
            selectedItem = item;
          }
        }
        if (items.isEmpty) {
          setEmpty(emptyMessage);
        } else {
          setLoaded();
        }
      }
    } catch (e) {
      setError(errorMessage);
    }
  }

  final ObservableList<T> items = ObservableList();

  @observable
  T? selectedItem;

  final List<T>? initialItems;
  final Future<List<T>?> Function(String?)? itemFetcher;
  final String Function(T) labelBuilder;
  final String? Function(T)? subtitleBuilder;
  final Widget? Function(T)? leadingBuilder;
}
