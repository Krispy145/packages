// ignore_for_file: unused_element

import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:fonts/store.dart";
import "package:mobx/mobx.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/data/models/theme/theme_model.dart";
import "package:theme/data/repositories/theme_configuration.dart";
import "package:theme/domain/repositories/base.repository.dart";
import "package:theme/domain/repositories/digital_oasis.repository.dart";
import "package:theme/domain/repositories/theme.repository.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/data/typedefs.dart";
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
  String? id;

  /// [FontsStore] is the store that will be used to manage loading fonts dynamically
  final FontsStore fontsStore = FontsStore()..initialize();

  /// [_ThemeStateStore.local] is the constructor that will be used to fetch the data from local storage.
  final ThemeStateType type;

  /// [baseThemeUrlPath] is the path that will be used to fetch the data from an api.
  final String? baseThemeUrlPath;

  /// [componentThemesUrlPath] is the path that will be used to fetch the data from an api.
  final String? componentThemesUrlPath;

  /// [baseThemeAssetPath] is the path that will be used to fetch the data from assets.
  final String? baseThemeAssetPath;

  /// [componentThemesAssetPath] is the path that will be used to fetch the data from assets.
  final String? componentThemesAssetPath;

  /// [_ThemeStateStore.local] is the constructor that will be used to fetch the data from local storage.
  _ThemeStateStore.local({
    this.id,
  })  : type = ThemeStateType.local,
        baseThemeUrlPath = null,
        componentThemesUrlPath = null,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadLocalTheme(id: id);
  }

  /// [_ThemeStateStore.assets] is the constructor that will be used to fetch the data from assets.
  _ThemeStateStore.assets({
    this.baseThemeAssetPath,
    this.componentThemesAssetPath,
    this.id,
  })  : type = ThemeStateType.assets,
        baseThemeUrlPath = null,
        componentThemesUrlPath = null {
    _loadAssetsTheme(id: id);
  }

  /// [_ThemeStateStore.api] is the constructor that will be used to fetch the data from an api.
  _ThemeStateStore.api({
    required this.id,
    required this.baseThemeUrlPath,
    this.componentThemesUrlPath,
  })  : type = ThemeStateType.api,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadApiTheme(id: id);
  }

  /// [_ThemeStateStore.supabase] is the constructor that will be used to fetch the data from an api.
  /// Serves the `Digital Oasis` Themes Tables as default.
  /// [baseUrl] is the url of the supabase server,
  /// [anonKey] is the anonymous key of the supabase server,
  /// [baseThemeTableName] is the name of the table that contains the base theme data, defaults to `"baseTheme"`.
  /// [componentThemesTableName] is the name of the table that contains the component themes data, defaults to `"componentsThemes"`.

  _ThemeStateStore.supabase({
    required String baseUrl,
    required String anonKey,
    String? baseThemeTableName,
    String? componentThemesTableName,
    this.id,
  })  : baseThemeUrlPath = baseThemeTableName ?? "baseThemes",
        componentThemesUrlPath = componentThemesTableName ?? "componentsThemes",
        type = ThemeStateType.supabase,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadSupabaseTheme(
      url: baseUrl,
      anonKey: anonKey,
      id: id ?? primaryThemeId,
    );
  }

  _ThemeStateStore.firestore({
    required UUID baseThemeId,
    String? baseThemeCollectionName,
    String? componentThemesCollectionName,
    UUID? componentThemesId,
  })  : baseThemeUrlPath = baseThemeCollectionName ?? "baseThemes",
        componentThemesUrlPath = componentThemesCollectionName ?? "componentsThemes",
        type = ThemeStateType.firestore,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadFirestoreTheme(baseThemeId: baseThemeId);
  }

  _ThemeStateStore.digitalOasis({
    this.id,
  })  : baseThemeUrlPath = "baseThemes",
        componentThemesUrlPath = "componentsThemes",
        type = ThemeStateType.digitalOasis,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadDOTheme(id: id ?? primaryThemeId);
  }

  /// [_ThemeStateStore.localAssets] is the constructor that will be used to try fetch the data from local storage and catch the error,
  /// then fetch the data from assets.
  _ThemeStateStore.localAssets({
    required this.baseThemeAssetPath,
    required this.componentThemesAssetPath,
    this.id,
  })  : type = ThemeStateType.localAssets,
        baseThemeUrlPath = null,
        componentThemesUrlPath = null {
    _loadLocalAssetsTheme(id: id);
  }

  /// [_ThemeStateStore.apiLocal] is the constructor that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from local storage.
  _ThemeStateStore.apiLocal({
    required this.baseThemeUrlPath,
    this.componentThemesUrlPath,
    this.id,
  })  : type = ThemeStateType.apiLocal,
        baseThemeAssetPath = null,
        componentThemesAssetPath = null {
    _loadApiLocalTheme(id: id);
  }

  /// [_ThemeStateStore.apiAssets] is the constructor that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from an assets.
  _ThemeStateStore.apiAssets({
    required this.baseThemeUrlPath,
    required this.baseThemeAssetPath,
    this.componentThemesUrlPath,
    this.componentThemesAssetPath,
    this.id,
  }) : type = ThemeStateType.apiAssets {
    _loadApiAssetsTheme(id: id);
  }

  /// [_ThemeStateStore.apiLocalAssets] is the constructor that will be used to try fetch the data from api and catch the error,
  /// then fetch the data from local storage and catch the error,
  /// then fetch the data from assets.
  _ThemeStateStore.apiLocalAssets({
    required this.baseThemeUrlPath,
    required this.baseThemeAssetPath,
    this.componentThemesUrlPath,
    this.componentThemesAssetPath,
    this.id,
  }) : type = ThemeStateType.apiLocalAssets {
    _loadApiLocalAssetsTheme(id: id);
  }

  // /// [baseDataSource] is an instance of [BaseThemeDataSource], (Colors and Text Styles) which takes in the appropriate source based on the [type].
  // late BaseThemeDataSource baseDataSource;

  // /// [componentThemesDataSource] is an instance of [ComponentThemesDataSource], which takes in the appropriate source based on the [type].
  // late ComponentThemesDataSource componentThemesDataSource;

  /// [repository] is an instance of [ThemeRepository] which takes in the appropriate source based on the [type].
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

  @action
  Future<void> reloadThemeModel() async {
    await repository?.fetchTheme(id: id ?? primaryThemeId);
    await repository?.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print(
      "ThemeModel - Reloaded: $baseThemeModel",
      [ThemeLoggers.theme],
    );
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
    final colorScheme = currentColorModel?.scheme;
    AppLogger.print(
      "Building App Theme: $styleType -> ${isDark ? "Dark" : "Light"}",
      [ThemeLoggers.theme],
    );
    final chipTheme = componentThemesModel?.getComponentThemeFromStyleType<ChipThemeData?>(styleType);
    AppLogger.print("ChipTheme in _build: $chipTheme", [ThemeLoggers.chips]);
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
      cardTheme: componentThemesModel?.getComponentThemeFromStyleType<CardTheme?>(styleType),
      snackBarTheme: componentThemesModel?.getComponentThemeFromStyleType<SnackBarThemeData?>(styleType),
      badgeTheme: componentThemesModel?.getComponentThemeFromStyleType<BadgeThemeData?>(styleType),
      appBarTheme: componentThemesModel?.getComponentThemeFromStyleType<AppBarTheme?>(styleType),
      bottomAppBarTheme: componentThemesModel?.getComponentThemeFromStyleType<BottomAppBarTheme?>(styleType),
      chipTheme: chipTheme,
      dialogTheme: componentThemesModel?.getComponentThemeFromStyleType<DialogTheme?>(styleType),
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
      tabBarTheme: componentThemesModel?.getComponentThemeFromStyleType<TabBarTheme?>(styleType),
    );
  }

  void _setRepository({
    ThemeConfiguration? baseThemeConfiguration,
    ThemeConfiguration? componentThemesConfiguration,
  }) {
    repository = ThemeRepository(
      baseThemeConfiguration: baseThemeConfiguration,
      componentThemesConfiguration: componentThemesConfiguration,
    );
  }

  /// [setThemeMode] is the method that will be used to set the theme mode.
  @action
  void setThemeMode(ThemeMode newThemeMode) {
    AppLogger.print("ThemeMode Changed: $newThemeMode", [ThemeLoggers.theme]);
    currentThemeMode = newThemeMode;
  }

  Future<void> _loadLocalTheme({String? id}) async {
    setLoading();
    _setRepository(
      baseThemeConfiguration: const ThemeConfiguration.local(),
      componentThemesConfiguration: const ThemeConfiguration.local(),
    );
    baseThemeModel = await repository!.fetchTheme(id: id ?? primaryThemeId);
    componentThemesModel = await repository!.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print(
      "ThemeModel - Local: $baseThemeModel",
      [ThemeLoggers.theme],
    );
    setLoaded();
  }

  Future<void> _loadAssetsTheme({String? id}) async {
    setLoading();
    ThemeConfiguration? baseThemeConfig;
    ThemeConfiguration? componentsThemeConfig;
    try {
      if (baseThemeAssetPath != null) {
        baseThemeConfig = ThemeConfiguration.assets(rootBundleKey: baseThemeAssetPath!);
      } else {
        AppLogger.print(
          "Base Theme asset path is null",
          [ThemeLoggers.theme],
          type: LoggerType.error,
        );
        baseThemeConfig = null;
      }
    } catch (e) {
      AppLogger.print(
        "Base Theme could not be loaded",
        [ThemeLoggers.theme],
        type: LoggerType.error,
      );
      baseThemeConfig = null;
    }
    try {
      if (componentThemesAssetPath != null) {
        componentsThemeConfig = ThemeConfiguration.assets(rootBundleKey: componentThemesAssetPath!);
      } else {
        AppLogger.print(
          "componentsThemeConfig Theme asset path is null",
          [ThemeLoggers.theme],
          type: LoggerType.error,
        );
        componentsThemeConfig = null;
      }
    } catch (e) {
      AppLogger.print(
        "componentsThemeConfig Theme could not be loaded",
        [ThemeLoggers.theme],
        type: LoggerType.error,
      );
      componentsThemeConfig = null;
    }

    _setRepository(
      baseThemeConfiguration: baseThemeConfig,
      componentThemesConfiguration: componentsThemeConfig,
    );
    baseThemeModel = await repository!.fetchTheme(id: id ?? primaryThemeId);
    componentThemesModel = await repository!.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print(
      "ThemeModel - Assets: $baseThemeModel",
      [ThemeLoggers.theme],
    );
    setLoaded();
  }

  Future<void> _loadSupabaseTheme({
    required String url,
    required String anonKey,
    String? id,
  }) async {
    final _client = SupabaseClient(url, anonKey);
    setLoading();
    _setRepository(
      baseThemeConfiguration: ThemeConfiguration.supabase(supabaseClient: _client),
      componentThemesConfiguration: ThemeConfiguration.supabase(supabaseClient: _client),
    );
    baseThemeModel = await repository!.fetchTheme(id: id ?? primaryThemeId);
    componentThemesModel = await repository!.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print(
      "ThemeModel - Supabase: $baseThemeModel",
      [ThemeLoggers.theme],
    );
    setLoaded();
  }

  Future<void> _loadFirestoreTheme({required UUID baseThemeId, UUID? componentThemesId}) async {
    setLoading();
    _setRepository(
      baseThemeConfiguration: ThemeConfiguration.firestore(collectionName: baseThemeUrlPath!),
      componentThemesConfiguration: ThemeConfiguration.firestore(collectionName: componentThemesUrlPath!),
    );
    baseThemeModel = await repository!.fetchTheme(id: baseThemeId);
    if (componentThemesId != null) componentThemesModel = await repository!.fetchComponentsTheme(id: componentThemesId);
    AppLogger.print(
      "ThemeModel - Firestore: $baseThemeModel",
      [ThemeLoggers.theme],
    );
    setLoaded();
  }

  Future<void> _loadDOTheme({String? id}) async {
    setLoading();
    repository = DORepository();
    baseThemeModel = await repository!.fetchTheme(id: id ?? primaryThemeId);
    componentThemesModel = await repository!.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print(
      "ThemeModel - Digital Oasis: $baseThemeModel",
      [ThemeLoggers.theme],
    );
    setLoaded();
  }

  Future<void> _loadApiTheme({String? id}) async {
    setLoading();
    _setRepository(
      baseThemeConfiguration: ThemeConfiguration.api(urlPath: baseThemeUrlPath!),
      componentThemesConfiguration: ThemeConfiguration.api(urlPath: componentThemesUrlPath!),
    );
    baseThemeModel = await repository!.fetchTheme(id: id ?? primaryThemeId);
    componentThemesModel = await repository!.fetchComponentsTheme(id: id ?? primaryThemeId);
    AppLogger.print("ThemeModel - Api: $baseThemeModel", [ThemeLoggers.theme]);
    setLoaded();
  }

  Future<void> _loadLocalAssetsTheme({String? id}) async {
    try {
      await _loadLocalTheme(id: id);
    } catch (e) {
      setError(kDebugMode ? "Error loading local from API: $id" : "Error loading theme");
      await _loadAssetsTheme(id: id);
    }
  }

  Future<void> _loadApiLocalTheme({String? id}) async {
    try {
      await _loadApiTheme(id: id);
    } catch (e) {
      setError(kDebugMode ? "Error loading theme from API: $id" : "Error loading theme");
      await _loadLocalTheme(id: id);
    }
  }

  Future<void> _loadApiAssetsTheme({String? id}) async {
    try {
      await _loadApiTheme(id: id);
    } catch (e) {
      setError(kDebugMode ? "Error loading assets from API: $id" : "Error loading theme");
      await _loadAssetsTheme(id: id);
    }
  }

  Future<void> _loadApiLocalAssetsTheme({String? id}) async {
    try {
      await _loadApiTheme(id: id);
    } catch (e) {
      setError(kDebugMode ? "Error loading theme from API: $id" : "Error loading theme");
      try {
        await _loadLocalTheme(id: id);
      } catch (e) {
        setError(kDebugMode ? "Error loading local from API: $id" : "Error loading theme");
        await _loadAssetsTheme(id: id);
      }
    }
  }
}
