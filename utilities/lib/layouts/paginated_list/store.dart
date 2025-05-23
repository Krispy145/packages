import "dart:async";

import "package:collection/collection.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/list/store.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

part "store.g.dart";

/// [PaginatedListStore] is a class that uses [_PaginatedListStore] to manage state of the topTips feature.
class PaginatedListStore<T, K extends Comparable<K>> = _PaginatedListStore<T, K>
    with _$PaginatedListStore<T, K>;

/// [_PaginatedListStore] is a class that manages the state of the topTips feature.
abstract class _PaginatedListStore<T, K extends Comparable<K>>
    extends ListStore<T, K> with Store {
  final int limit;

  /// [_PaginatedListStore] constructor.
  _PaginatedListStore({
    this.limit = 12,
    super.sortByKey,
    super.reverseList = false,
  });

  Timer? debounceTimer;

  @override
  Future<void> initialize() async {
    try {
      scrollController.addListener(() {
        try {
          if (scrollController.position.pixels >=
              scrollController.position.maxScrollExtent) {
            if (debounceTimer?.isActive ?? false) return;

            debounceTimer = Timer(const Duration(milliseconds: 300), () {
              AppLogger.print(
                "Debounced scroll reached end. Loading more data...",
                [UtilitiesLoggers.streamedListStore],
              );
              loadMore(limit: limit);
            });
          }
        } catch (e, _) {
          AppLogger.print(
            "Error while processing scroll listener: $e",
            [UtilitiesLoggers.paginatedListStore],
          );
        }
      });
      return loadMore(limit: limit);
    } catch (e) {
      setError("There was a problem loading the results.");
    }
  }

  late final Future<Pair<RequestResponse, List<T?>>> Function({
    int? limit,
    bool refresh,
  }) loadMoreFromRepository;

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
    if ((isNoMoreToLoad && !refresh) || isLoading) return;
    try {
      setLoading();
      final loadedResults =
          await loadMoreFromRepository(limit: limit, refresh: refresh);
      requestResponse = loadedResults.first;
      if (loadedResults.second.isNotEmpty || refresh) {
        if (refresh) {
          results.clear();
        }

        // Add new items to the existing list
        final newItems = loadedResults.second.whereType<T>().toList();
        for (final item in newItems) {
          if (!results.contains(item)) {
            results.add(item);
          }
        }

        if (results.isEmpty) {
          return setEmpty("No results found");
        } else {
          // Sort and reverse in place
          if (sortByKey != null) {
            results.sortBy(sortByKey!);
          }
          if (reverseList) {
            final items = results.toList();
            results
              ..clear()
              ..addAll(items.reversed);
          }

          return setLoaded();
        }
      } else {
        if (results.isEmpty) {
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
