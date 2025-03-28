import "package:mobx/mobx.dart";
import "package:utilities/layouts/list/store.dart";

part "store.g.dart";

/// [ReorderableListStore] is a class that uses [_ReorderableListStore] to manage the state of the ReorderableList feature.
class ReorderableListStore<T extends Object,
        K extends Comparable<K>> = _ReorderableListStore<T, K>
    with _$ReorderableListStore<T, K>;

/// [_ReorderableListStore] is a class that manages the state of the ReorderableList feature.
abstract class _ReorderableListStore<T extends Object, K extends Comparable<K>>
    extends ListStore<T, K> with Store {
  _ReorderableListStore({
    super.sortByKey,
    super.reverseList = false,
  });

  late final Future<void> Function(int oldIndex, int newIndex) onReorder;
}
