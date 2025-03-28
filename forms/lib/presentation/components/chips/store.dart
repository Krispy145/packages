import "package:forms/presentation/components/base/store.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [ChipsFormFieldStore] is a class that uses [_ChipsFormFieldStore] to manage state of the filters feature.
class ChipsFormFieldStore<T> = _ChipsFormFieldStore<T>
    with _$ChipsFormFieldStore<T>;

/// [_ChipsFormFieldStore] is a class that manages the state of the filters feature.
abstract class _ChipsFormFieldStore<T> extends BaseFormFieldStore<List<T>?>
    with LoadStateStore, Store {
  _ChipsFormFieldStore(
    this.name, {
    required Future<List<T?>> Function() loadFilters,
    required this.onSelectedChanged,
    this.canSelectMultiple = true,
    this.orderSelectedToFront = false,
  })  : _loadFilters = loadFilters,
        super(
          title: name,
          initialValue: null,
          onValueChanged: (value) => onSelectedChanged(value ?? []),
        );

  final String name;
  final Future<List<T?>> Function() _loadFilters;
  final void Function(List<T>) onSelectedChanged;
  final bool canSelectMultiple;
  final bool orderSelectedToFront;

  final ObservableList<T> _available = ObservableList();

  final ObservableList<T> _selected = ObservableList();

  @computed
  List<T> get available => _available;

  @computed
  List<T> get selected => _selected;

  @computed
  List<T> get unselected =>
      _available.where((element) => !_selected.contains(element)).toList();

  @computed
  List<T> get filters {
    if (orderSelectedToFront) {
      return [...selected, ...unselected];
    } else {
      return [..._available];
    }
  }

  /// [getFilterAtIndex] returns the filter at the given index.
  /// If the index is less than the length of selected filters, it returns the selected filter at the index.
  T getFilterAtIndex(int index) {
    if (orderSelectedToFront) {
      if (index < selected.length) {
        return selected[index];
      } else {
        return unselected[index - selected.length];
      }
    } else {
      return _available[index];
    }
  }

  bool isSelected(T filter) => _selected.contains(filter);

  @action
  void clearSelection() {
    _selected.clear();
    onSelectedChanged(_selected);
  }

  @action
  void selectFilter(T filter) {
    if (_selected.contains(filter)) {
      _selected.remove(filter);
    } else {
      if (canSelectMultiple) {
        _selected.add(filter);
      } else {
        _selected
          ..clear()
          ..add(filter);
      }
    }
    onSelectedChanged(_selected);
  }

  @action
  void selectFilters(List<T> filters) {
    _selected
      ..clear()
      ..addAll(filters);
    onSelectedChanged(_selected);
  }

  /// [loadFiltersModels] loads all [T]s from the data source.
  @action
  Future<void> loadFiltersModels() async {
    try {
      setLoading();
      final filters = await _loadFilters();
      if (filters.isNotEmpty) {
        _available
          ..clear()
          ..addAll(filters.whereType<T>());
        setLoaded();
      } else {
        setEmpty("No filters found");
      }
    } catch (e) {
      setError("There was a problem loading the filters.");
    }
  }
}
