import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";

part "store.g.dart";

/// [StreamedListStore] is a class that uses [_StreamedListStore] to manage state of the topTips feature.
class StreamedListStore<T> = _StreamedListStore<T> with _$StreamedListStore<T>;

/// [_StreamedListStore] is a class that manages the state of the topTips feature.
abstract class _StreamedListStore<T> extends PaginatedListStore<T> with Store {
  /// [_StreamedListStore] constructor.
  _StreamedListStore({super.limit = 12, super.shouldLoadMoreInitially = false}) {
    _initializeStreamListener();
  }

  late final Stream<Pair<RequestResponse, List<T?>>> Function({int? limit, bool refresh}) dataStream;

  void _initializeStreamListener() {
    dataStream(limit: limit, refresh: false).listen((newData) {
      if (newData.second.isEmpty) {
        setNoMoreToLoad();
      } else {
        results.addAll(newData.second.whereType<T>());
      }
      if (results.isEmpty) {
        setEmpty("No data found.");
      } else {
        setLoaded();
      }
    });
  }
}
