import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [ListStore] is a class that uses [_ListStore] to manage state of the topTips feature.
class ListStore<T> = _ListStore<T> with _$ListStore<T>;

/// [_ListStore] is a class that manages the state of the topTips feature.
abstract class _ListStore<T> extends LoadStateStore with Store {
  // final int limit;

  /// [_ListStore] constructor.
  _ListStore() {
    // loadMore(limit: limit);
    // scrollController.addListener(() {
    //   if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
    //     loadMore(limit: limit);
    //   }
    // });
  }
  // late final ScrollController scrollController = ScrollController();
  // late final Future<List<T?>> Function({int? limit, bool refresh}) loadMoreFromRepository;

  /// [results] is an observable list of [T]s.
  ObservableList<T?> results = ObservableList<T?>();

  // @action
  // Future<void> refresh() async {
  //   await loadMore(limit: limit, refresh: true);
  //   return Future.delayed(Durations.long4, setLoaded);
  // }

  // /// [loadMore] loads all [T]s from the data source.
  // @action
  // Future<void> loadMore({int? limit, bool refresh = false}) async {
  //   if (currentState == LoadState.noMoreToLoad && !refresh) return;
  //   try {
  //     setLoading();
  //     final loadedResults = await loadMoreFromRepository(limit: limit, refresh: refresh);
  //     if (loadedResults.isNotEmpty) {
  //       if (refresh) results.clear();
  //       results.addAll(loadedResults);
  //       results = ObservableList.of(results.toSet().toList());
  //       return Future.delayed(Durations.long4, setLoaded);
  //     } else {
  //       if (results.isEmpty) {
  //         results.clear();
  //         return setEmpty();
  //       }
  //       return setNoMoreToLoad();
  //     }
  //   } catch (e) {
  //     setError();
  //   }
  // }
}
