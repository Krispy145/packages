import "package:mobx/mobx.dart";
import "package:utilities/layouts/streamed_list/store.dart";

part "store.g.dart";

/// [ReorderableStreamedListStore] is a class that uses [_ReorderableStreamedListStore] to manage the state of the ReorderableList feature.
class ReorderableStreamedListStore<T extends Object,
        K extends Comparable<K>> = _ReorderableStreamedListStore<T, K>
    with _$ReorderableStreamedListStore<T, K>;

/// [_ReorderableStreamedListStore] is a class that manages the state of the ReorderableList feature.
abstract class _ReorderableStreamedListStore<T extends Object,
    K extends Comparable<K>> extends StreamedListStore<T, K> with Store {
  _ReorderableStreamedListStore({
    super.limit = 12,
    super.sortByKey,
    super.reverseList = false,
  });

  late final Future<void> Function(int oldIndex, int newIndex) onReorder;
}
