import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [PaginatedListStore] is a class that uses [_PaginatedListStore] to manage state of the topTips feature.
class PaginatedListStore<T> = _PaginatedListStore<T> with _$PaginatedListStore<T>;

/// [_PaginatedListStore] is a class that manages the state of the topTips feature.
abstract class _PaginatedListStore<T> extends LoadStateStore with Store {
  final int limit;

  /// [_PaginatedListStore] constructor.
  _PaginatedListStore({this.limit = 10}) {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        loadMore(limit: limit);
      }
    });
  }
  final ScrollController scrollController = ScrollController();
  late final Future<List<T?>> Function({int? limit}) loadMoreFromRepository;

  /// [results] is an observable list of [T]s.
  ObservableList<T?> results = ObservableList<T?>();

  @action
  Future<void> refresh() async {
    setLoading();
    results.clear();
    await loadMore(limit: limit);
    return Future.delayed(Durations.long4, setLoaded);
  }

  /// [loadMore] loads all [T]s from the data source.
  @action
  Future<void> loadMore({int? limit}) async {
    if (currentState == LoadState.noMoreToLoad) return;
    try {
      setLoading();
      final loadedResults = await loadMoreFromRepository(limit: limit);
      if (loadedResults.isNotEmpty) {
        results.addAll(loadedResults);
        return Future.delayed(Durations.long4, setLoaded);
      } else {
        if (results.isEmpty) return setEmpty();
        return setNoMoreToLoad();
      }
    } catch (e) {
      setError();
    }
  }
}
