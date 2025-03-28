import "package:mobx/mobx.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

/// [ComponentThemeChangerStore] is a class that uses [_ComponentThemeChangerStore] to manage state of the colorSchemes feature.
class ComponentThemeChangerStore<T> = _ComponentThemeChangerStore<T>
    with _$ComponentThemeChangerStore<T>;

/// [_ComponentThemeChangerStore] is a class that manages the state of the colorSchemes feature.
abstract class _ComponentThemeChangerStore<T> with Store {
  final Map<String, dynamic> Function(T data) convertComponentThemeToMap;
  final T Function(Map<String, dynamic> data) convertComponentThemeFromMap;
  final void Function(T newTheme) onUpdateComponentTheme;
  final T defaultComponentTheme;
  final T? currentComponentTheme;

  _ComponentThemeChangerStore({
    required this.onUpdateComponentTheme,
    required this.defaultComponentTheme,
    required this.currentComponentTheme,
    required this.convertComponentThemeToMap,
    required this.convertComponentThemeFromMap,
  });

  /// [componentThemeMap] is a map that stores the current component theme.
  @observable
  // ignore: prefer_const_constructors
  late ObservableMap<String, dynamic> componentThemeMap =
      currentComponentTheme != null
          ? ObservableMap.of(
              convertComponentThemeToMap(currentComponentTheme as T),
            )
          : ObservableMap.of(convertComponentThemeToMap(defaultComponentTheme));

  /// [mergedMap] is a map that merges the default and current component theme.
  @computed
  Map<String, dynamic> get mergedMap {
    if (currentComponentTheme != null) {
      return {
        ...convertComponentThemeToMap(defaultComponentTheme),
        ...convertComponentThemeToMap(currentComponentTheme as T),
      };
    }
    return convertComponentThemeToMap(defaultComponentTheme);
  }

  @observable
  // ignore: null_check_on_nullable_type_parameter
  late MapEntry<String, dynamic> currentMapEntry = currentComponentTheme != null
      ? convertComponentThemeToMap(currentComponentTheme as T).entries.first
      : convertComponentThemeToMap(defaultComponentTheme).entries.first;

  /// [setMapEntry] is a method that sets the current map entry.
  @action
  void setMapEntry(MapEntry<String, dynamic> value) {
    currentMapEntry = value;
    AppLogger.print(
      "currentAppbarMapEntry: $currentMapEntry",
      [ThemeLoggers.changer],
    );
  }

  /// [setMapEntryInMap] is a method that sets the current map entry in the map.
  @action
  T setMapEntryInMap() {
    try {
      componentThemeMap[currentMapEntry.key] = currentMapEntry.value;
      return convertComponentThemeFromMap(componentThemeMap);
    } catch (e, stackTrace) {
      AppLogger.print(
        "setAppbarModel: $e, $stackTrace",
        [ThemeLoggers.changer],
        type: LoggerType.error,
      );
      return convertComponentThemeFromMap(componentThemeMap);
    }
  }
}
