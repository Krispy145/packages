import "package:mobx/mobx.dart";
import "package:utilities/layouts/paginated_list/store.dart";

part "store.g.dart";

/// [ReorderablePaginatedListStore] is a class that uses [_ReorderablePaginatedListStore] to manage the state of the ReorderableList feature.
class ReorderablePaginatedListStore<T extends Object,
        K extends Comparable<K>> = _ReorderablePaginatedListStore<T, K>
    with _$ReorderablePaginatedListStore<T, K>;

/// [_ReorderablePaginatedListStore] is a class that manages the state of the ReorderableList feature.
abstract class _ReorderablePaginatedListStore<T extends Object,
    K extends Comparable<K>> extends PaginatedListStore<T, K> with Store {
  _ReorderablePaginatedListStore({
    super.limit = 12,
    super.sortByKey,
    super.reverseList = false,
  });

  late final Future<void> Function(int oldIndex, int newIndex) onReorder;
}
