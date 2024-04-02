import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

class MapEditorStore = _MapEditorStore with _$MapEditorStore;

// TODO: Think about how to integrate the LoadStateStore, here or for individual form fields
abstract class _MapEditorStore with Store {
  _MapEditorStore({required this.onMapChanged, Map<String, dynamic>? initialData}) : mapData = ObservableMap.of(initialData ?? {});

  /// Callback that is called whenever the map is changed.
  final void Function(Map<String, dynamic> data)? onMapChanged;

  @observable
  late ObservableMap<String, dynamic> mapData;

  /// Inserts a new key-value pair into the map.
  /// The list of keys is used to navigate the nested maps.
  @action
  void updateValue(List<String> keys, dynamic value) {
    AppLogger.print("updateValue: $keys, $value", [PackageFeatures.theme]);
    AppLogger.print("before: $mapData", [PackageFeatures.theme]);
    _setNestedValue(mapData, keys, value);
    AppLogger.print("after: $mapData", [PackageFeatures.theme]);
    onMapChanged?.call(mapData);
  }

  void _setNestedValue(ObservableMap<String, dynamic> currentMap, List<String> keys, dynamic value) {
    for (var i = 0; i < keys.length - 1; i++) {
      if (!currentMap.containsKey(keys[i])) {
        // Automatically convert nested maps to observable maps
        currentMap[keys[i]] = ObservableMap<String, dynamic>();
      } else if (currentMap[keys[i]] is! ObservableMap<String, dynamic>) {
        // Convert nested map to observable map if it's not already
        currentMap[keys[i]] = ObservableMap<String, dynamic>.of(currentMap[keys[i]] as Map<String, dynamic>);
      }
      currentMap = currentMap[keys[i]] as ObservableMap<String, dynamic>;
    }
    currentMap[keys.last] = value;
  }
}
