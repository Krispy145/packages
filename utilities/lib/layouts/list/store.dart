import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [ListStore] is a class that uses [_ListStore] to manage state of the topTips feature.
class ListStore<T> = _ListStore<T> with _$ListStore<T>;

/// [_ListStore] is a class that manages the state of the topTips feature.
abstract class _ListStore<T> extends LoadStateStore with Store {
  /// [_ListStore] constructor.
  _ListStore();

  /// [results] is an observable list of [T]s.
  ObservableList<T?> results = ObservableList<T?>();

  late final ScrollController scrollController = ScrollController();

  @computed
  bool get showLoadingSpinnerAtBottom {
    return false;
  }
}
