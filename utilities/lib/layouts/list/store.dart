import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [ListStore] is a class that uses [_ListStore] to manage state of the topTips feature.
class ListStore<T, K extends Comparable<K>> = _ListStore<T, K>
    with _$ListStore<T, K>;

/// [_ListStore] is a class that manages the state of the topTips feature.
abstract class _ListStore<T, K extends Comparable<K>>
    with LoadStateStore, Store {
  final bool reverseList;
  final K Function(T)? sortByKey;

  /// [_ListStore] constructor.
  _ListStore({
    this.reverseList = false,
    this.sortByKey,
  });

  late final Future<Pair<RequestResponse, List<T?>>> Function()
      loadFromRepository;

  /// [results] is an observable list of [T]s.
  ObservableList<T> results = ObservableList<T>();

  final ScrollController scrollController = ScrollController();

  @computed
  bool get showLoadingSpinnerAtBottom {
    return false;
  }

  @action
  Future<void> refresh() async {
    return load(refresh: true);
  }

  @action
  Future<void> initialize() async {
    try {
      return load();
    } catch (e) {
      setError("There was a problem loading the results.");
    }
  }

  @action
  Future<void> load({bool refresh = false}) async {
    try {
      setLoading();
      if (refresh) {
        results.clear();
      }

      final _result = await loadFromRepository();
      final _requestResponse = _result.first;
      final _data = _result.second;

      if (_requestResponse == RequestResponse.success) {
        if (_data.isNotEmpty) {
          results.addAll(_data.whereType<T>());
          if (sortByKey != null) {
            results.sortBy(sortByKey!);
          }
          if (reverseList) {
            results = ObservableList.of(results.reversed);
          }
          setLoaded();
        } else {
          setEmpty("No data found.");
        }
      }
      if (_requestResponse == RequestResponse.failure) {
        setError("There was a problem loading the results.");
      }
    } catch (e) {
      setError("There was a problem loading the results.");
    }
  }
}
