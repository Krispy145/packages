import "package:forms/utils/loggers.dart";
import "package:mobx/mobx.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

class FormsMapStore = _FormsMapStore with _$FormsMapStore;

abstract class _FormsMapStore with Store {
  _FormsMapStore(
      {required this.onMapChanged, Map<String, dynamic>? initialData,})
      : mapData = ObservableMap.of(initialData ?? {});

  /// Callback that is called whenever the map is changed.
  final void Function(Map<String, dynamic> data)? onMapChanged;

  @observable
  late ObservableMap<String, dynamic> mapData;

  /// Inserts a new key-value pair into the map.
  /// The list of keys is used to navigate the nested maps.
  @action
  void updateValue(List<String> keys, dynamic value) {
    AppLogger
      ..print("updateValue: $keys, $value", [FormsLoggers.maps])
      ..print("before: $mapData", [FormsLoggers.maps]);
    _setNestedValue(mapData, keys, value);
    AppLogger.print("after: $mapData", [FormsLoggers.maps]);
    onMapChanged?.call(mapData);
  }

  void _setNestedValue(ObservableMap<String, dynamic> currentMap,
      List<String> keys, dynamic value,) {
    for (var i = 0; i < keys.length - 1; i++) {
      if (!currentMap.containsKey(keys[i])) {
        // Automatically convert nested maps to observable maps
        currentMap[keys[i]] = ObservableMap<String, dynamic>();
      } else if (currentMap[keys[i]] is! ObservableMap<String, dynamic>) {
        // Convert nested map to observable map if it's not already
        currentMap[keys[i]] = ObservableMap<String, dynamic>.of(
            currentMap[keys[i]] as Map<String, dynamic>,);
      }
      currentMap = currentMap[keys[i]] as ObservableMap<String, dynamic>;
    }
    currentMap[keys.last] = value;
  }
}
