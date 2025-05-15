import "package:flutter/material.dart";
import "package:fonts/store.dart";
import "package:mobx/mobx.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/data/models/theme/theme_model.dart";
import "package:theme/data/repositories/theme_configuration.dart";
import "package:theme/domain/repositories/base.repository.dart";
import "package:theme/domain/repositories/theme.repository.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

const String primaryStyle = "primary";
const String primaryThemeId = "ee27317d-e505-478a-9cb3-54586968f123";

/// [ThemeStateType] is the enum that will be used to define the type of the theme state.
enum ThemeStateType {
  /// [local] is the type that will be used to fetch the data from local storage.
  local,

  /// [assets] is the type that will be used to fetch the data from assets.
  assets,

  /// [api] is the type that will be used to fetch the data from an api.
  api,

  /// [supabase] is the type that will be used to fetch the data from supabase.
  supabase,

  /// [firestore] is the type that will be used to fetch the data from firestore.
  firestore,

  /// [digitalOasis] is the type that will be used to fetch the data from supabase.
  // ignore: constant_identifier_names
  digitalOasis,

  /// [localAssets] is the type that will be used to try fetch the data from local storage and catch the error,
  /// then fetch the data from assets.
  localAssets,

  /// [apiLocal] is the type that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from local storage.
  apiLocal,

  /// [apiAssets] is the type that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from an assets.
  apiAssets,

  /// [apiLocalAssets] is the type that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from local storage and catch the error,
  /// then fetch the data from assets.
  apiLocalAssets,
  ;
}

/// [ThemeStateStore] is the store that will be used to manage the state of the theme.
class ThemeStateStore = _ThemeStateStore with _$ThemeStateStore;

/// [_ThemeStateStore] is the base store that will be used to manage the state of the theme.
abstract class _ThemeStateStore with LoadStateStore, Store {
  /// [_ThemeStateStore] constructor.
  _ThemeStateStore({
    required ThemeConfiguration initialBaseThemeConfiguration,
    ThemeConfiguration? initialComponentThemesConfiguration,
  }) {
    _setRepository(
      initialBaseThemeConfiguration: initialBaseThemeConfiguration,
      initialComponentThemesConfiguration: initialComponentThemesConfiguration,
    );
  }

  /// [FontsStore] is the store that will be used to manage loading fonts dynamically
  final FontsStore fontsStore = FontsStore()..initialize();

  @observable
  late ThemeConfiguration baseThemeConfiguration;

  @observable
  ThemeConfiguration? componentThemesConfiguration;

  /// [repository] is an instance of [ThemeRepository] which takes in the appropriate source based on the [ThemeStateType].
  BaseThemeRepository? repository;

  /// [baseThemeModel] is the model that will be used to store the theme data.
  @observable
  BaseThemeModel? baseThemeModel;

  /// [componentThemesModel] is the model that will be used to store the theme data.
  @observable
  ComponentThemesModel? componentThemesModel;

  /// [currentThemeMode] is the current theme mode that will be used to store the theme data.
  @observable
  ThemeMode currentThemeMode = ThemeMode.system;

  @observable
  String styleType = primaryStyle;

  /// [isDark] is the boolean that will be used to check if the theme is dark.
  @computed
  bool get isDark => currentThemeMode == ThemeMode.dark;

  /// [isLight] is the boolean that will be used to check if the theme is light.
  @computed
  bool get isLight => currentThemeMode == ThemeMode.light;

  @computed
  ColorModel? get currentColorModel =>
      isDark ? (baseThemeModel?.colors[styleType] ?? baseThemeModel?.colors[styleType])?.dark : (baseThemeModel?.colors[styleType] ?? baseThemeModel?.colors[styleType])?.light;

  @action
  Future<void> changeThemeConfiguration({
    required ThemeConfiguration newBaseThemeConfiguration,
    required ThemeConfiguration newComponentThemesConfiguration,
    ThemeConfiguration? fallbackBaseThemeConfiguration,
    ThemeConfiguration? fallbackComponentThemesConfiguration,
  }) async {
    baseThemeConfiguration = newBaseThemeConfiguration;
    componentThemesConfiguration = newComponentThemesConfiguration;
    repository = ThemeRepository(
      baseThemeConfiguration: newBaseThemeConfiguration,
      componentThemesConfiguration: newComponentThemesConfiguration,
    );
    final response = await _changeThemeModel();
    if (!response && fallbackBaseThemeConfiguration != null) {
      baseThemeConfiguration = fallbackBaseThemeConfiguration;
      componentThemesConfiguration = fallbackComponentThemesConfiguration;
      repository = ThemeRepository(
        baseThemeConfiguration: fallbackBaseThemeConfiguration,
        componentThemesConfiguration: fallbackComponentThemesConfiguration,
      );
      await _changeThemeModel();
    }
  }

  @action
  void changeBaseThemeModel(BaseThemeModel model) {
    toggleThemeMode();
    baseThemeModel = model;
    toggleThemeMode();
  }

  @action
  void changeComponentThemesModel(ComponentThemesModel model) {
    toggleThemeMode();
    componentThemesModel = model;
    toggleThemeMode();
  }

  @action
  void setStyleType(String newStyleType) {
    toggleThemeMode();
    styleType = newStyleType;
    toggleThemeMode();
  }

  @action
  void toggleThemeMode() {
    currentThemeMode = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  Future<void> _loadThemeModel() async {
    try {
      baseThemeModel = await repository?.fetchTheme(id: baseThemeConfiguration.id);
      if (componentThemesConfiguration != null) {
        componentThemesModel = await repository?.fetchComponentsTheme(
          id: componentThemesConfiguration!.id,
        );
      }
    } catch (e) {
      AppLogger.print("Error loading theme model: $e", [ThemeLoggers.theme]);
    }
  }

  /// [lightTheme] is the light theme that will be used to store the theme data.
  @computed
  ThemeData get lightTheme {
    return _buildTheme();
  }

  /// [darkTheme] is the dark theme that will be used to store the theme data.
  @computed
  ThemeData get darkTheme {
    return _buildTheme();
  }

  ThemeData _buildTheme() {
    final buttonStyles = componentThemesModel?.getComponentThemeFromStyleType<ThemeData>(styleType);
    final colorScheme = currentColorModel?.scheme(isDark);
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: (baseThemeModel?.textStyles?[styleType] ?? baseThemeModel?.textStyles?[styleType])?.theme,
      elevatedButtonTheme: buttonStyles?.elevatedButtonTheme,
      iconButtonTheme: buttonStyles?.iconButtonTheme,
      iconTheme: IconThemeData(color: colorScheme?.primary),
      outlinedButtonTheme: buttonStyles?.outlinedButtonTheme,
      textButtonTheme: buttonStyles?.textButtonTheme,
      toggleButtonsTheme: buttonStyles?.toggleButtonsTheme,
      filledButtonTheme: buttonStyles?.filledButtonTheme,
      menuButtonTheme: buttonStyles?.menuButtonTheme,
      floatingActionButtonTheme: buttonStyles?.floatingActionButtonTheme,
      segmentedButtonTheme: buttonStyles?.segmentedButtonTheme,
      dropdownMenuTheme: componentThemesModel?.getComponentThemeFromStyleType<DropdownMenuThemeData?>(styleType),
      inputDecorationTheme: componentThemesModel?.getComponentThemeFromStyleType<InputDecorationTheme?>(styleType),
      cardTheme: componentThemesModel?.getComponentThemeFromStyleType<CardThemeData?>(styleType),
      snackBarTheme: componentThemesModel?.getComponentThemeFromStyleType<SnackBarThemeData?>(styleType),
      badgeTheme: componentThemesModel?.getComponentThemeFromStyleType<BadgeThemeData?>(styleType),
      appBarTheme: componentThemesModel?.getComponentThemeFromStyleType<AppBarTheme?>(styleType),
      bottomAppBarTheme: componentThemesModel?.getComponentThemeFromStyleType<BottomAppBarTheme?>(styleType),
      chipTheme: componentThemesModel?.getComponentThemeFromStyleType<ChipThemeData?>(styleType),
      dialogTheme: componentThemesModel?.getComponentThemeFromStyleType<DialogThemeData?>(styleType),
      popupMenuTheme: componentThemesModel?.getComponentThemeFromStyleType<PopupMenuThemeData?>(styleType),
      sliderTheme: componentThemesModel?.getComponentThemeFromStyleType<SliderThemeData?>(styleType),
      scrollbarTheme: componentThemesModel?.getComponentThemeFromStyleType<ScrollbarThemeData?>(styleType),
      tooltipTheme: componentThemesModel?.getComponentThemeFromStyleType<TooltipThemeData?>(styleType),
      navigationRailTheme: componentThemesModel?.getComponentThemeFromStyleType<NavigationRailThemeData?>(styleType),
      checkboxTheme: componentThemesModel?.getComponentThemeFromStyleType<CheckboxThemeData?>(styleType),
      radioTheme: componentThemesModel?.getComponentThemeFromStyleType<RadioThemeData?>(styleType),
      switchTheme: componentThemesModel?.getComponentThemeFromStyleType<SwitchThemeData?>(styleType),
      drawerTheme: componentThemesModel?.getComponentThemeFromStyleType<DrawerThemeData?>(styleType),
      listTileTheme: componentThemesModel?.getComponentThemeFromStyleType<ListTileThemeData?>(styleType),
      menuBarTheme: componentThemesModel?.getComponentThemeFromStyleType<MenuBarThemeData?>(styleType),
      menuTheme: componentThemesModel?.getComponentThemeFromStyleType<MenuThemeData?>(styleType),
      navigationBarTheme: componentThemesModel?.getComponentThemeFromStyleType<NavigationBarThemeData?>(styleType),
      navigationDrawerTheme: componentThemesModel?.getComponentThemeFromStyleType<NavigationDrawerThemeData?>(
        styleType,
      ),
      progressIndicatorTheme: componentThemesModel?.getComponentThemeFromStyleType<ProgressIndicatorThemeData?>(
        styleType,
      ),
      searchBarTheme: componentThemesModel?.getComponentThemeFromStyleType<SearchBarThemeData?>(styleType),
      searchViewTheme: componentThemesModel?.getComponentThemeFromStyleType<SearchViewThemeData?>(styleType),
      tabBarTheme: componentThemesModel?.getComponentThemeFromStyleType<TabBarThemeData?>(styleType),
    );
  }

  Future<void> _setRepository({
    required ThemeConfiguration initialBaseThemeConfiguration,
    ThemeConfiguration? initialComponentThemesConfiguration,
  }) async {
    setLoading();
    baseThemeConfiguration = initialBaseThemeConfiguration;
    componentThemesConfiguration = initialComponentThemesConfiguration;
    repository = ThemeRepository(
      baseThemeConfiguration: initialBaseThemeConfiguration,
      componentThemesConfiguration: initialComponentThemesConfiguration,
    );
    await _loadThemeModel();
    setLoaded();
  }

  Future<bool> _changeThemeModel() async {
    try {
      baseThemeModel = await repository?.fetchTheme(id: baseThemeConfiguration.id);
      if (componentThemesConfiguration != null) {
        componentThemesModel = await repository?.fetchComponentsTheme(
          id: componentThemesConfiguration!.id,
        );
      }
      return baseThemeModel != null;
    } catch (e) {
      AppLogger.print("Error loading theme model: $e", [ThemeLoggers.theme]);
      return false;
    }
  }

  /// [setThemeMode] is the method that will be used to set the theme mode.
  @action
  void setThemeMode(ThemeMode newThemeMode) {
    AppLogger.print("ThemeMode Changed: $newThemeMode", [ThemeLoggers.theme]);
    currentThemeMode = newThemeMode;
  }
}
