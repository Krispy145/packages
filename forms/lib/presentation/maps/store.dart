import "package:forms/utils/loggers.dart";
import "package:mobx/mobx.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

class FormsMapStore = _FormsMapStore with _$FormsMapStore;

abstract class _FormsMapStore extends LoadStateStore with Store {
  final void Function(ObservableMap<String, dynamic>) onValueChanged;
  final void Function(ObservableMap<String, dynamic>)? onValueSaved;

  _FormsMapStore({
    required this.value,
    required this.onValueChanged,
    this.onValueSaved,
  }) {
    reaction((r) => value, onValueChanged);
    setLoaded();
  }

  @observable
  ObservableMap<String, dynamic> value;

  /// Inserts a new key-value pair into the map.
  /// The list of keys is used to navigate the nested maps.
  @action
  void updateValue(List<String> keys, dynamic fieldValue) {
    AppLogger
      ..print("updateValue: $keys, $fieldValue", [FormsLoggers.maps])
      ..print("before: $value", [FormsLoggers.maps]);
    _setNestedValue(value, keys, fieldValue);
    AppLogger.print("after: $value", [FormsLoggers.maps]);
    onValueChanged.call(value);
  }

  @action
  void saveValue() {
    onValueSaved?.call(value);
  }

  void _setNestedValue(
    ObservableMap<String, dynamic> currentMap,
    List<String> keys,
    dynamic value,
  ) {
    for (var i = 0; i < keys.length - 1; i++) {
      if (!currentMap.containsKey(keys[i])) {
        // Automatically convert nested maps to observable maps
        currentMap[keys[i]] = ObservableMap<String, dynamic>();
      } else if (currentMap[keys[i]] is! ObservableMap<String, dynamic>) {
        // Convert nested map to observable map if it's not already
        currentMap[keys[i]] = ObservableMap<String, dynamic>.of(
          currentMap[keys[i]] as Map<String, dynamic>,
        );
      }
      currentMap = currentMap[keys[i]] as ObservableMap<String, dynamic>;
    }
    currentMap[keys.last] = value;
  }
}
