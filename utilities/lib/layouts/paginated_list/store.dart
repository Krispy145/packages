import "package:collection/collection.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/list/store.dart";

part "store.g.dart";

/// [PaginatedListStore] is a class that uses [_PaginatedListStore] to manage state of the topTips feature.
class PaginatedListStore<T, K extends Comparable<K>> = _PaginatedListStore<T, K> with _$PaginatedListStore<T, K>;

/// [_PaginatedListStore] is a class that manages the state of the topTips feature.
abstract class _PaginatedListStore<T, K extends Comparable<K>> extends ListStore<T, K> with Store {
  final int limit;

  /// [_PaginatedListStore] constructor.
  _PaginatedListStore({
    this.limit = 12,
    super.shouldLoadMoreInitially,
    super.sortByKey,
    super.reverseList = false,
  }) {
    initialize();
  }

  @override
  Future<void> initialize() async {
    if (shouldLoadMoreInitially) await loadMore(limit: limit);
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        loadMore(limit: limit);
      }
    });
  }

  late final Future<Pair<RequestResponse, List<T?>>> Function({int? limit, bool refresh}) loadMoreFromRepository;

  @observable
  RequestResponse? requestResponse;

  @override
  @action
  Future<void> refresh() async {
    return loadMore(limit: limit, refresh: true);
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

        results = ObservableList.of(results.toSet().toList()); // Ensure uniqueness

        if (results.isEmpty) {
          results.clear();
          return setEmpty("No results found");
        } else {
          if (sortByKey != null) {
            results.sortBy(sortByKey!);
          }
          if (reverseList) {
            results = ObservableList.of(results.reversed);
          }
          return setLoaded();
        }
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
