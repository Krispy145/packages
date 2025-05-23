import "dart:async";

import "package:collection/collection.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/stream_wrapper.dart";
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

  late final StreamWrapper<Pair<RequestResponse, List<T?>>> dataStream;

  @override
  Future<void> initialize() async {
    AppLogger.print(
      "Initializing StreamedListStore...",
      [UtilitiesLoggers.streamedListStore],
    );

    dataStream.startListening(
      onData: (newData) {
        try {
          AppLogger.print(
            "New data received from stream: $newData",
            [UtilitiesLoggers.streamedListStore],
          );

          if (newData.second.isEmpty) {
            AppLogger.print(
              "Stream received an empty data list.",
              [UtilitiesLoggers.streamedListStore],
            );
            setEmpty("No results found");
          }

          if (newData.first == RequestResponse.success) {
            final possibleResults = newData.second.whereType<T>().toList();

            if (possibleResults.isEmpty) {
              AppLogger.print(
                "No valid results found in the new data.",
                [UtilitiesLoggers.streamedListStore],
              );
            }

            AppLogger.print(
              "Updating results with new data.",
              [UtilitiesLoggers.streamedListStore],
            );
            results = ObservableList.of(possibleResults.toSet().toList());

            if (results.isNotEmpty) {
              if (sortByKey != null) {
                results.sortBy(sortByKey!);
                AppLogger.print(
                  "Results sorted by the provided key.",
                  [UtilitiesLoggers.streamedListStore],
                );
              }
              if (reverseList) {
                results = ObservableList.of(results.reversed);
                AppLogger.print(
                  "Results reversed as per configuration.",
                  [UtilitiesLoggers.streamedListStore],
                );
              }
            } else {
              AppLogger.print(
                "No results found in the new data.",
                [UtilitiesLoggers.streamedListStore],
              );
              setEmpty("No results found");
            }
          } else {
            AppLogger.print(
              "Stream received a failure response.",
              [UtilitiesLoggers.streamedListStore],
            );
            setNoMoreToLoad();
          }
          AppLogger.print(
            "StreamedListStore initialization complete.",
            [UtilitiesLoggers.streamedListStore],
          );
        } catch (e, _) {
          AppLogger.print(
            "Error while processing stream data for: $e",
            [UtilitiesLoggers.streamedListStore],
            type: LoggerType.error,
          );
          setError("Error streaming data");
        }
      },
      onError: (dynamic error) {
        // dataStream.cancel();
        setError("Stream error: $error");
      },
    );

    scrollController.addListener(() {
      try {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent) {
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
          [UtilitiesLoggers.streamedListStore],
        );
      }
    });
    setLoaded();
  }
}
