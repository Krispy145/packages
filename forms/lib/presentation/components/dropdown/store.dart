import "package:flutter/material.dart";
import "package:mobx/mobx.dart";

import "../base/store.dart";

part "store.g.dart";

class DropdownFormFieldStore<T> = _DropdownFormFieldStore<T> with _$DropdownFormFieldStore;

abstract class _DropdownFormFieldStore<T> extends BaseFormFieldStore<T?> with Store {
  _DropdownFormFieldStore({
    required super.value,
    required super.onValueChanged,
    required super.title,
    required this.labelBuilder,
    this.subtitleBuilder,
    this.leadingBuilder,
    this.itemFetcher,
    this.initialItems,
    this.selectedItem,
  }) {
    initialLoad();
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

  Future<void> initialLoad() async {
    setLoading();
    if (initialItems != null) {
      items.addAll(initialItems!);
    }
    if (itemFetcher != null) {
      final loadedItems = await itemFetcher!("");
      if (loadedItems != null) {
        items.addAll(loadedItems);
      }
    }
    if (items.isEmpty) {
      setEmpty();
    } else {
      setLoaded();
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
