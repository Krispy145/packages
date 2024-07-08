import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/list/store.dart";

part "store.g.dart";

/// [PaginatedListStore] is a class that uses [_PaginatedListStore] to manage state of the topTips feature.
class PaginatedListStore<T> = _PaginatedListStore<T> with _$PaginatedListStore<T>;

/// [_PaginatedListStore] is a class that manages the state of the topTips feature.
abstract class _PaginatedListStore<T> extends ListStore<T> with Store {
  final int limit;

  /// [_PaginatedListStore] constructor.
  _PaginatedListStore({this.limit = 12}) {
    loadMore(limit: limit);
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        loadMore(limit: limit);
      }
    });
  }
  late final Future<Pair<RequestResponse, List<T?>>> Function({int? limit, bool refresh}) loadMoreFromRepository;

  @observable
  RequestResponse? requestResponse;

  /// [results] is an observable list of [T]s.
  @override
  ObservableList<T> results = ObservableList<T>();

  @action
  Future<void> refresh() async {
    await loadMore(limit: limit, refresh: true);
    return Future.delayed(Durations.long4, setLoaded);
  }

  /// [loadMore] loads all [T]s from the data source.
  @action
  Future<void> loadMore({int? limit, bool refresh = false}) async {
    if (isNoMoreToLoad && !refresh) return;
    try {
      setLoading();
      final loadedResults = await loadMoreFromRepository(limit: limit, refresh: refresh);
      requestResponse = loadedResults.first;
      if (loadedResults.second.isNotEmpty || refresh) {
        if (refresh) results.clear();
        results.addAll(loadedResults.second.whereType<T>());
        results = ObservableList.of(results.toSet().toList());
        if (results.isEmpty) {
          results.clear();
          return setEmpty("No results found");
        }
        return setLoaded();
      } else {
        if (results.isEmpty) {
          results.clear();
          return setEmpty("No results found");
        }
        return setNoMoreToLoad();
      }
    } catch (e) {
      setError("There was a problem loading the results.");
    }
  }

  @override
  @computed
  bool get showLoadingSpinnerAtBottom => isLoading;
}
