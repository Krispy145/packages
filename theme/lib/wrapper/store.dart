import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/app/app.dart';
import 'package:theme/data/models/colors/color_model.dart';
import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

part 'store.g.dart';

// TODO: Convert theme widget to extend extra DO colors (so no need to go through AppTheme to get them)

/// [StyleTypeThemeStore] is the store that will be used to manage the state of the theme.
class StyleTypeThemeStore = _StyleTypeStore with _$StyleTypeThemeStore;

/// [_StyleTypeStore] is the base store that will be used to manage the state of the theme.
abstract class _StyleTypeStore extends LoadStateStore with Store {
  /// [styleTypeNames] is the list of style type names that will be used to set the theme data.
  final String styleTypeName;

  /// [_StyleTypeStore] is the constructor that will be used to set the theme data.
  _StyleTypeStore({required this.styleTypeName}) {
    setStyleType(styleTypeName);
  }

  /// [baseThemeModel] is the model that will be used to store the theme data.
  @computed
  BaseThemeModel get baseThemeModel => AppTheme.baseThemeModel;

  /// [componentThemesModel] is the model that will be used to store the theme data.
  @computed
  ComponentThemesModel? get componentThemesModel => AppTheme.componentThemesModel;

  /// [currentThemeMode] is the current theme mode that will be used to store the theme data.
  @observable
  ThemeMode currentThemeMode = ThemeMode.system;

  late String styleType;

  /// [isDark] is the boolean that will be used to check if the theme is dark.
  @computed
  bool get isDark => currentThemeMode == ThemeMode.dark;

  /// [isLight] is the boolean that will be used to check if the theme is light.
  @computed
  bool get isLight => currentThemeMode == ThemeMode.light;

  @computed
  ColorModel? get currentColorModel => isDark ? baseThemeModel.colors[styleType]?.dark : baseThemeModel.colors[styleType]?.light;

  @action
  void setStyleType(String newStyleType) {
    setLoading();
    styleType = newStyleType;
    setLoaded();
  }

  @action
  void toggleThemeMode() {
    currentThemeMode = isDark ? ThemeMode.light : ThemeMode.dark;
  }

  /// [setThemeMode] is the method that will be used to set the theme mode.
  @action
  void setThemeMode(ThemeMode newThemeMode) {
    AppLogger.print("ThemeMode Changed: $newThemeMode", [ThemeLoggers.theme]);
    currentThemeMode = newThemeMode;
  }

  @computed
  ThemeData get currentTheme {
    return currentThemeMode == ThemeMode.light ? lightTheme : darkTheme;
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
    AppLogger.print("Building Theme: $styleType", [ThemeLoggers.theme]);
    final buttonStyles = componentThemesModel?.getComponentThemeFromStyleType<ThemeData>(styleType);
    final colorScheme = currentColorModel?.scheme;
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: (baseThemeModel.textStyles?[styleType] ?? baseThemeModel.textStyles?[styleType])?.theme,
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
      chipTheme: componentThemesModel?.getComponentThemeFromStyleType<ChipThemeData?>(styleType),
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
      navigationDrawerTheme: componentThemesModel?.getComponentThemeFromStyleType<NavigationDrawerThemeData?>(styleType),
      progressIndicatorTheme: componentThemesModel?.getComponentThemeFromStyleType<ProgressIndicatorThemeData?>(styleType),
      searchBarTheme: componentThemesModel?.getComponentThemeFromStyleType<SearchBarThemeData?>(styleType),
      searchViewTheme: componentThemesModel?.getComponentThemeFromStyleType<SearchViewThemeData?>(styleType),
      tabBarTheme: componentThemesModel?.getComponentThemeFromStyleType<TabBarTheme?>(styleType),
    );
  }
}
