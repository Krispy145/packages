import "package:flutter/material.dart";
import "package:fonts/store.dart";
import "package:get_it/get_it.dart";
import "package:theme/app/store.dart";
import "package:theme/data/models/appbars/appbar_model.dart";
import "package:theme/data/models/appbars/bottom_appbar_model.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/box_decorations/box_decoration_model.dart";
import "package:theme/data/models/buttons/button_model.dart";
import "package:theme/data/models/buttons/floating_action_button_model.dart";
import "package:theme/data/models/buttons/toggle_button_model.dart";
import "package:theme/data/models/cards/card_model.dart";
import "package:theme/data/models/checkboxes/checkbox_model.dart";
import "package:theme/data/models/chips/chip_model.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/data/models/colors/color_schemes_model.dart";
import "package:theme/data/models/dialogs/dialog_model.dart";
import "package:theme/data/models/drawers/drawer_model.dart";
import "package:theme/data/models/dropdowns/dropdown_model.dart";
import "package:theme/data/models/input_decorations/input_decoration_model.dart";
import "package:theme/data/models/list_tiles/list_tile_model.dart";
import "package:theme/data/models/menu_bars/menu_bar_model.dart";
import "package:theme/data/models/menus/menu_style_model.dart";
import "package:theme/data/models/navigation_bars/navigation_bar_model.dart";
import "package:theme/data/models/navigation_drawers/navigation_drawer_model.dart";
import "package:theme/data/models/navigation_rails/navigation_rail_model.dart";
import "package:theme/data/models/popup_menus/popup_menu_model.dart";
import "package:theme/data/models/progress_indicators/progress_indicator_model.dart";
import "package:theme/data/models/radios/radio_model.dart";
import "package:theme/data/models/scrollbars/scrollbar_model.dart";
import "package:theme/data/models/search_bars/search_bar_model.dart";
import "package:theme/data/models/search_views/search_view_model.dart";
import "package:theme/data/models/sliders/slider_model.dart";
import "package:theme/data/models/snackbars/snackbar_model.dart";
import "package:theme/data/models/switches/switch_model.dart";
import "package:theme/data/models/tab_bars/tab_bar_model.dart";
import "package:theme/data/models/text/text_types_model.dart";
import "package:theme/data/models/theme/theme_model.dart";
import "package:theme/data/models/tooltips/tooltip_model.dart";

/// [AppTheme] is a wrapper for [ThemeStateStore] that allows you to use [ThemeStateStore] to
/// calculate the [Theme] values.
class AppTheme {
  /// [_themeStore] is a getter that returns the [ThemeStateStore] instance.
  static ThemeStateStore get _themeStore =>
      GetIt.instance.get<ThemeStateStore>();
  static BaseThemeModel? get baseThemeModel => _themeStore.baseThemeModel;
  static ComponentThemesModel? get componentThemesModel =>
      _themeStore.componentThemesModel;
  static FontsStore get fontsStore => _themeStore.fontsStore;

  /// [isDark] is the boolean that will be used to check if the theme is dark.
  static bool get isDark => _themeStore.isDark;

  /// [isLight] is the boolean that will be used to check if the theme is light.
  static bool get isLight => _themeStore.isLight;

  /// [currentTheme] is the current theme that will be used to store the theme data.
  static ThemeData get currentTheme =>
      isDark ? _themeStore.darkTheme : _themeStore.lightTheme;

  static String get styleType => _themeStore.styleType;

  /// [colorStyles] is a getter that returns the [ColorSchemesModel] instance.
  static ColorSchemesModel colorStyles({String? styleTypeName}) =>
      baseThemeModel?.colors[styleTypeName ?? styleType] ??
      const ColorSchemesModel(dark: ColorModel(), light: ColorModel());

  /// [textStyleTypes] is a getter that returns the [TextTypesModel] instance.
  static TextTypesModel? textStyleTypes({String? styleTypeName}) =>
      baseThemeModel?.textStyles?[styleTypeName ?? styleType];

  /// [textTheme] is a getter that returns the [TextTheme] instance.
  static TextTheme get textTheme => currentTheme.textTheme;

  /// [currentColorModel] is a getter that returns the [ColorModel] instance.
  static ColorModel? get currentColorModel => _themeStore.currentColorModel;

  static ButtonModel? filledButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.filledButtons?[styleTypeName ?? styleType];
  static ButtonModel? elevatedButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.elevatedButtons?[styleTypeName ?? styleType];
  static ButtonModel? outlinedButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.outlinedButtons?[styleTypeName ?? styleType];
  static ButtonModel? menuButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.menuButtons?[styleTypeName ?? styleType];
  static ButtonModel? segmentedButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.segmentedButtons?[styleTypeName ?? styleType];
  static ButtonModel? textButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.textButtons?[styleTypeName ?? styleType];
  static ButtonModel? iconButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.iconButtons?[styleTypeName ?? styleType];
  static FloatingActionButtonModel? floatingActionButtonStyle({
    String? styleTypeName,
  }) =>
      componentThemesModel?.floatingActionButtons?[styleTypeName ?? styleType];
  static ToggleButtonModel? toggleButtonStyle({String? styleTypeName}) =>
      componentThemesModel?.toggleButtons?[styleTypeName ?? styleType];

  /// [inputDecorationStyles] is a getter that returns the [InputDecorationModel] instance.
  static InputDecorationModel? inputDecorationStyles({String? styleTypeName}) =>
      componentThemesModel?.inputDecorations?[styleTypeName ?? styleType];

  /// [boxDecorationStyle] is a getter that returns the [BoxDecorationModel] instance.
  static BoxDecorationModel? boxDecorationStyle({String? styleTypeName}) =>
      componentThemesModel?.boxDecorations?[styleTypeName ?? styleType];

  /// [cardStyles] is a getter that returns the [CardModel] instance.
  static CardModel? cardStyles({String? styleTypeName}) =>
      componentThemesModel?.cards?[styleTypeName ?? styleType];

  /// [snackbarStyles] is a getter that returns the [SnackbarModel] instance.
  static SnackbarModel? snackbarStyles({String? styleTypeName}) =>
      componentThemesModel?.snackbars?[styleTypeName ?? styleType];

  /// [badgeStyles] is a getter that returns the [BadgeModel] instance.
  static BadgeModel? badgeStyles({String? styleTypeName}) =>
      componentThemesModel?.badges?[styleTypeName ?? styleType];

  /// [appbarStyles] is a getter that returns the [AppbarModel] instance.
  static AppbarModel? appbarStyles({String? styleTypeName}) =>
      componentThemesModel?.appbars?[styleTypeName ?? styleType];

  /// [bottomAppbarStyles] is a getter that returns the [BottomAppbarModel] instance.
  static BottomAppbarModel? bottomAppbarStyles({String? styleTypeName}) =>
      componentThemesModel?.bottomAppbars?[styleTypeName ?? styleType];

  /// [dropdownStyles] is a getter that returns the [DropdownModel] instance.
  static DropdownModel? dropdownStyles({String? styleTypeName}) =>
      componentThemesModel?.dropdowns?[styleTypeName ?? styleType];

  /// [chipStyles] is a getter that returns the [ChipModel] instance.
  static ChipModel? chipStyles({String? styleTypeName}) =>
      componentThemesModel?.chips?[styleTypeName ?? styleType];

  /// [dialogStyles] is a getter that returns the [DialogModel] instance.
  static DialogModel? dialogStyles({String? styleTypeName}) =>
      componentThemesModel?.dialogs?[styleTypeName ?? styleType];

  /// [popupMenuStyles] is a getter that returns the [PopupMenuModel] instance.
  static PopupMenuModel? popupMenuStyles({String? styleTypeName}) =>
      componentThemesModel?.popupMenus?[styleTypeName ?? styleType];

  /// [sliderStyles] is a getter that returns the [SliderModel] instance.
  static SliderModel? sliderStyles({String? styleTypeName}) =>
      componentThemesModel?.sliders?[styleTypeName ?? styleType];

  /// [scrollbarStyles] is a getter that returns the [ScrollbarModel] instance.
  static ScrollbarModel? scrollbarStyles({String? styleTypeName}) =>
      componentThemesModel?.scrollbars?[styleTypeName ?? styleType];

  /// [tooltipStyles] is a getter that returns the [TooltipModel] instance.
  static TooltipModel? tooltipStyles({String? styleTypeName}) =>
      componentThemesModel?.tooltips?[styleTypeName ?? styleType];

  /// [navigationRailStyles] is a getter that returns the [NavigationRailModel] instance.
  static NavigationRailModel? navigationRailStyles({String? styleTypeName}) =>
      componentThemesModel?.navigationRails?[styleTypeName ?? styleType];

  /// [checkboxStyles] is a getter that returns the [CheckboxModel] instance.
  static CheckboxModel? checkboxStyles({String? styleTypeName}) =>
      componentThemesModel?.checkboxes?[styleTypeName ?? styleType];

  /// [radioStyles] is a getter that returns the [RadioModel] instance.
  static RadioModel? radioStyles({String? styleTypeName}) =>
      componentThemesModel?.radios?[styleTypeName ?? styleType];

  /// [switchStyles] is a getter that returns the [SwitchModel] instance.
  static SwitchModel? switchStyles({String? styleTypeName}) =>
      componentThemesModel?.switches?[styleTypeName ?? styleType];

  /// [drawerStyles] is a getter that returns the [DrawerModel] instance.
  static DrawerModel? drawerStyles({String? styleTypeName}) =>
      componentThemesModel?.drawers?[styleTypeName ?? styleType];

  /// [listTileStyles] is a getter that returns the [ListTileModel] instance.
  static ListTileModel? listTileStyles({String? styleTypeName}) =>
      componentThemesModel?.listTiles?[styleTypeName ?? styleType];

  /// [menuStyles] is a getter that returns the [MenuStyleModel] instance.
  static MenuStyleModel? menuStyles({String? styleTypeName}) =>
      componentThemesModel?.menus?[styleTypeName ?? styleType];

  /// [menuBarStyles] is a getter that returns the [MenuBarModel] instance.
  static MenuBarModel? menuBarStyles({String? styleTypeName}) =>
      componentThemesModel?.menuBars?[styleTypeName ?? styleType];

  /// [navigationBarStyles] is a getter that returns the [NavigationBarModel] instance.
  static NavigationBarModel? navigationBarStyles({String? styleTypeName}) =>
      componentThemesModel?.navigationBars?[styleTypeName ?? styleType];

  /// [navigationDrawerStyles] is a getter that returns the [NavigationDrawerModel] instance.
  static NavigationDrawerModel? navigationDrawerStyles({
    String? styleTypeName,
  }) =>
      componentThemesModel?.navigationDrawers?[styleTypeName ?? styleType];

  /// [progressIndicatorStyles] is a getter that returns the [ProgressIndicatorModel] instance.
  static ProgressIndicatorModel? progressIndicatorStyles({
    String? styleTypeName,
  }) =>
      componentThemesModel?.progressIndicators?[styleTypeName ?? styleType];

  /// [searchBarStyles] is a getter that returns the [SearchBarModel] instance.
  static SearchBarModel? searchBarStyles({String? styleTypeName}) =>
      componentThemesModel?.searchBars?[styleTypeName ?? styleType];

  /// [searchViewStyles] is a getter that returns the [SearchViewModel] instance.
  static SearchViewModel? searchViewStyles({String? styleTypeName}) =>
      componentThemesModel?.searchViews?[styleTypeName ?? styleType];

  /// [tabBarStyles] is a getter that returns the [TabBarModel] instance.
  static TabBarModel? tabBarStyles({String? styleTypeName}) =>
      componentThemesModel?.tabBars?[styleTypeName ?? styleType];
}
