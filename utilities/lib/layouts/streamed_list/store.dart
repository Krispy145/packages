import "package:collection/collection.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";

part "store.g.dart";

/// [StreamedListStore] is a class that uses [_StreamedListStore] to manage state of the topTips feature.
class StreamedListStore<T, K extends Comparable<K>> = _StreamedListStore<T, K> with _$StreamedListStore<T, K>;

/// [_StreamedListStore] is a class that manages the state of the topTips feature.
abstract class _StreamedListStore<T, K extends Comparable<K>> extends PaginatedListStore<T, K> with Store {
  /// [_StreamedListStore] constructor.
  _StreamedListStore({
    super.limit = 12,
    super.shouldLoadMoreInitially = false,
    super.reverseList = false,
    super.sortByKey,
  }) {
    _initializeStreamListener();
  }

  late final Stream<Pair<RequestResponse, List<T?>>> Function({int? limit, bool refresh}) dataStream;

  Future<void> _initializeStreamListener() async {
    await super.initialize();
    dataStream(limit: limit, refresh: false).listen((newData) {
      if (newData.second.isEmpty) {
        setNoMoreToLoad();
      } else {
        results
          ..clear()
          ..addAll(newData.second.whereType<T>());
      }
      if (results.isEmpty) {
        setEmpty("No data found.");
      } else {
        if (sortByKey != null) results.sortBy(sortByKey!);
        setLoaded();
      }
    });
  }
}
