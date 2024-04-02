import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// [ComponentThemeChangerStore] is a class that uses [ComponentThemeChangerBaseStore] to manage state of the colorSchemes feature.
class ComponentThemeChangerStore<T> = ComponentThemeChangerBaseStore<T>
    with _$ComponentThemeChangerStore<T>;

/// [ComponentThemeChangerBaseStore] is a class that manages the state of the colorSchemes feature.
abstract class ComponentThemeChangerBaseStore<T> with Store {
  final Map<String, dynamic> Function(T data) convertComponentThemeToMap;
  final T Function(Map<String, dynamic> data) convertComponentThemeFromMap;
  final Function(T newTheme) onUpdateComponentTheme;
  final T defaultComponentTheme;
  final T? currentComponentTheme;

  ComponentThemeChangerBaseStore({
    required this.onUpdateComponentTheme,
    required this.defaultComponentTheme,
    required this.currentComponentTheme,
    required this.convertComponentThemeToMap,
    required this.convertComponentThemeFromMap,
  });

  /// [selectedColor] is a property that stores the selected color from the current scheme.
  @observable
  // ignore: prefer_const_constructors
  late ObservableMap<String, dynamic> componentThemeMap =
      currentComponentTheme != null
          ? ObservableMap.of(
              convertComponentThemeToMap(currentComponentTheme as T))
          : ObservableMap.of(convertComponentThemeToMap(defaultComponentTheme));

  /// [getMergedMap] is a combination of the current and default component themes, with the current values taking priority
  @computed
  Map<String, dynamic> get mergedMap {
    if (currentComponentTheme != null) {
      return {
        ...convertComponentThemeToMap(defaultComponentTheme),
        ...convertComponentThemeToMap(currentComponentTheme as T)
      };
    }
    return convertComponentThemeToMap(defaultComponentTheme);
  }

  @observable
  // ignore: null_check_on_nullable_type_parameter
  late MapEntry<String, dynamic> currentMapEntry = currentComponentTheme != null
      ? convertComponentThemeToMap(currentComponentTheme as T).entries.first
      : convertComponentThemeToMap(defaultComponentTheme).entries.first;

  /// [selectedColor] is a method that sets the selected color from the current scheme.
  @action
  void setMapEntry(MapEntry<String, dynamic> value) {
    currentMapEntry = value;
    AppLogger.print(
        'currentAppbarMapEntry: $currentMapEntry', [PackageFeatures.theme]);
  }

  /// [setColorModel] is a method that sets the current model.
  @action
  T setMapEntryInMap() {
    try {
      componentThemeMap[currentMapEntry.key] = currentMapEntry.value;
      return convertComponentThemeFromMap(componentThemeMap);
    } catch (e, stackTrace) {
      AppLogger.print(
          'setAppbarModel: $e, $stackTrace', [PackageFeatures.theme],
          type: LoggerType.error);
      return convertComponentThemeFromMap(componentThemeMap);
    }
  }
}
