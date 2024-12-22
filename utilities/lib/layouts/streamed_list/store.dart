import "dart:async";

import "package:collection/collection.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

part "store.g.dart";

/// [StreamedListStore] is a class that uses [_StreamedListStore] to manage the state of the topTips feature.
class StreamedListStore<T, K extends Comparable<K>> = _StreamedListStore<T, K> with _$StreamedListStore<T, K>;

/// [_StreamedListStore] is a class that manages the state of the topTips feature.
abstract class _StreamedListStore<T, K extends Comparable<K>> extends PaginatedListStore<T, K> with Store {
  /// [_StreamedListStore] constructor.
  _StreamedListStore({
    super.limit = 12,
    super.reverseList = false,
    super.sortByKey,
  });

  StreamSubscription<Pair<RequestResponse, List<T?>>>? subscription;

  late final Stream<Pair<RequestResponse, List<T?>>> Function({int? limit}) dataStream;

  @override
  Future<void> initialize() async {
    AppLogger.print("Initializing StreamedListStore...", [UtilitiesLoggers.streamedListStore]);

    subscription = dataStream(limit: limit).listen(
      (newData) {
        try {
          AppLogger.print("New data received from stream: $newData", [UtilitiesLoggers.streamedListStore]);

          if (newData.second.isEmpty) {
            AppLogger.print("Stream received an empty data list.", [UtilitiesLoggers.streamedListStore]);
            return;
          }

          if (newData.first == RequestResponse.success) {
            final possibleResults = newData.second.whereType<T>().toList();

            if (possibleResults.isEmpty) {
              AppLogger.print("No valid results found in the new data.", [UtilitiesLoggers.streamedListStore]);
              return;
            }

            AppLogger.print("Updating results with new data.", [UtilitiesLoggers.streamedListStore]);
            results = ObservableList.of(possibleResults.toSet().toList());

            if (results.isNotEmpty) {
              if (sortByKey != null) {
                results.sortBy(sortByKey!);
                AppLogger.print("Results sorted by the provided key.", [UtilitiesLoggers.streamedListStore]);
              }
              if (reverseList) {
                results = ObservableList.of(results.reversed);
                AppLogger.print("Results reversed as per configuration.", [UtilitiesLoggers.streamedListStore]);
              }
            }
          } else {
            AppLogger.print("Stream received a failure response.", [UtilitiesLoggers.streamedListStore]);
            setNoMoreToLoad();
          }
        } catch (e, _) {
          AppLogger.print(
            "Error while processing stream data: $e",
            [UtilitiesLoggers.streamedListStore],
            type: LoggerType.error,
          );
          setError("Error streaming data");
        }
      },
      onError: (dynamic error) {
        AppLogger.print("Error occurred in the data stream: $error", [UtilitiesLoggers.streamedListStore], type: LoggerType.error);
        setError("Stream error: $error");
      },
    );

    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        AppLogger.print("Scroll reached the end. Loading more data...", [UtilitiesLoggers.streamedListStore]);
        loadMore(limit: limit);
      }
    });

    AppLogger.print("StreamedListStore initialization complete.", [UtilitiesLoggers.streamedListStore]);
    setLoaded();
  }
}
