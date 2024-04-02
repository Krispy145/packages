import 'dart:convert';

import 'package:archive/archive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:theme/app/store.dart';
import 'package:theme/changer/base_view.dart';
import 'package:theme/changer/components/colors/view.dart';
import 'package:theme/changer/components/options.dart';
import 'package:theme/changer/components/textStyles/view.dart';
import 'package:theme/data/models/appbars/appbar_model.dart';
import 'package:theme/data/models/appbars/bottom_appbar_model.dart';
import 'package:theme/data/models/badges/badge_model.dart';
import 'package:theme/data/models/box_decorations/box_decoration_model.dart';
import 'package:theme/data/models/buttons/button_style_model.dart';
import 'package:theme/data/models/buttons/button_styles.dart';
import 'package:theme/data/models/buttons/floating_action_button_model.dart';
import 'package:theme/data/models/buttons/toggle_button_model.dart';
import 'package:theme/data/models/cards/card_model.dart';
import 'package:theme/data/models/checkboxes/checkbox_model.dart';
import 'package:theme/data/models/chips/chip_model.dart';
import 'package:theme/data/models/colors/color_model.dart';
import 'package:theme/data/models/colors/color_schemes.dart';
import 'package:theme/data/models/dialogs/dialog_model.dart';
import 'package:theme/data/models/drawers/drawer_model.dart';
import 'package:theme/data/models/dropdowns/dropdown_model.dart';
import 'package:theme/data/models/input_decorations/input_decoration_model.dart';
import 'package:theme/data/models/list_tiles/list_tile_model.dart';
import 'package:theme/data/models/menu_bars/menu_bar_model.dart';
import 'package:theme/data/models/menus/menu_model.dart';
import 'package:theme/data/models/navigation_bars/navigation_bar_model.dart';
import 'package:theme/data/models/navigation_drawers/navigation_drawer_model.dart';
import 'package:theme/data/models/navigation_rails/navigation_rail_model.dart';
import 'package:theme/data/models/popup_menus/popup_menu_model.dart';
import 'package:theme/data/models/progress_indicators/progress_indicator_model.dart';
import 'package:theme/data/models/radios/radio_model.dart';
import 'package:theme/data/models/scrollbars/scrollbar_model.dart';
import 'package:theme/data/models/search_bars/search_bar_model.dart';
import 'package:theme/data/models/search_views/search_view_model.dart';
import 'package:theme/data/models/sliders/slider_model.dart';
import 'package:theme/data/models/snackbars/snackbar_model.dart';
import 'package:theme/data/models/switches/switch_model.dart';
import 'package:theme/data/models/tab_bars/tab_bar_model.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';
import 'package:theme/data/models/text/text_types.dart';
import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/models/tooltips/tooltip_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_map/store.dart';
import 'package:theme/presentation/theme_changer/view.dart';
import 'package:universal_html/html.dart' as html;
import 'package:utilities/logger/logger.dart';

/// [ThemeChanger] is a class that is used to change the theme of the app.
class ThemeChanger {
  /// [_themeStore] is a getter that returns the [ThemeStateStore] instance.
  static ThemeStateStore get _themeStore => GetIt.instance.get<ThemeStateStore>();
  static BaseThemeModel get _baseThemeModel => _themeStore.baseThemeModel;
  static ComponentThemesModel? get _componentThemesModel => _themeStore.componentThemesModel;
  static final String styleType = _themeStore.styleType;

  static Future<void> currentThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(context: context, builder: (context) => const ThemeChangerView());
  }

  /// [changeBaseThemeModel] is a function that is used to change the theme of the app.
  static changeBaseThemeModel({required BaseThemeModel model}) {
    _themeStore.changeBaseThemeModel(model);
    AppLogger.print("Base Theme changed: $model", [PackageFeatures.theme]);
  }

  /// [changeComponentThemesModel] is a function that is used to change the theme of the app.
  static changeComponentThemesModel({required ComponentThemesModel model}) {
    _themeStore.changeComponentThemesModel(model);
    AppLogger.print("Component Theme changed: $model", [PackageFeatures.theme]);
  }

  static changeCurrentThemeStyle({
    required ColorModel colorModel,
  }) {
    if (_themeStore.isDark) {
      changeDarkThemeStyle(colorModel: colorModel);
      AppLogger.print("Dark theme changed: $colorModel", [PackageFeatures.theme]);
    } else {
      changeLightThemeStyle(colorModel: colorModel);
      AppLogger.print("Light theme changed: $colorModel", [PackageFeatures.theme]);
    }
  }

  static Future<void> currentColorThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(context: context, builder: (context) => ColorsView());
  }

  /// [changeLightThemeStyle] is a function that is used to change the light theme of the app.
  static changeLightThemeStyle({
    required ColorModel colorModel,
  }) {
    final newThemeModel = _baseThemeModel.copyWith(colors: _colorStyles(colorModel, false));
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Light theme changed: $colorModel", [PackageFeatures.theme]);
  }

  /// [changeDarkThemeStyle] is a function that is used to change the dark theme of the app.
  static changeDarkThemeStyle({
    required ColorModel colorModel,
  }) {
    final newThemeModel = _baseThemeModel.copyWith(colors: _colorStyles(colorModel, true));
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Dark theme changed: $colorModel", [PackageFeatures.theme]);
  }

  static Future<void> currentTextStylesThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(context: context, builder: (context) => TextStyleView());
  }

  /// [changeTextTypeStyle] is a function that is used to change the text style of the app.
  static changeTextTypeStyle({
    required TextType textType,
    required TextStyleSizes textStyle,
  }) {
    final Map<String, TextTypes>? textStyles = _textStyles(textType, textStyle);
    final newThemeModel = _baseThemeModel.copyWith(textStyles: textStyles);
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Text style changed: $textStyle", [PackageFeatures.theme]);
  }

  /// [componentThemeChanger] is a function that is used to change the components of the theme of the app.
  static Future<void> componentThemeChanger<T>({
    required ChangerOptions componentOption,
    required BuildContext context,
    required Map<String, dynamic> Function(T data) convertComponentThemeToMap,
    required T Function(Map<String, dynamic> data) convertComponentThemeFromMap,
    required Function(T newTheme) onUpdateComponentTheme,
    // required T defaultComponentTheme,
    T? currentComponentTheme,
    Widget Function(BuildContext)? headerBuilder,
  }) {
    // final store = ComponentThemeChangerStore<T>(
    //   defaultComponentTheme: defaultComponentTheme,
    //   currentComponentTheme: currentComponentTheme,
    //   convertComponentThemeToMap: convertComponentThemeToMap,
    //   convertComponentThemeFromMap: convertComponentThemeFromMap,
    //   onUpdateComponentTheme: onUpdateComponentTheme,
    // );
    // Set map from the current version, filling any missing values with the default version
    final Map<String, dynamic> mergedMap;
    if (currentComponentTheme != null) {
      mergedMap = convertComponentThemeToMap(currentComponentTheme);
    } else {
      mergedMap = convertComponentThemeToMap(convertComponentThemeFromMap({}));
    }

    final mapEditorStore = MapEditorStore(
      onMapChanged: (newMap) {
        onUpdateComponentTheme(convertComponentThemeFromMap(newMap));
      },
      initialData: mergedMap,
    );
    return showDialog(
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(64.0),
              child: ThemeComponentEditor(
                title: componentOption.name,
                mapEditorStore: mapEditorStore,
                headerBuilder: headerBuilder,
              ),
            ));
  }

  /// [changeButtonStyle] is a function that is used to change the button style of the app
  /// T can equal [ButtonStyleModel], [ToggleButtonModel], [FloatingActionButtonModel].
  static changeButtonStyle<T>({required ButtonStyleModelType buttonType, required T buttonStyle}) {
    print(T.toString());
    // TODO: Tidy this
    if (T.toString() == "ButtonStyleModel" || T.toString() == "ButtonStyleModel?") {
      _changeButtonStyleModel(buttonType: buttonType, buttonStyle: buttonStyle as ButtonStyleModel);
    } else if (T.toString() == "ToggleButtonModel" || T.toString() == "ToggleButtonModel?") {
      changeToggleButtonStyle(buttonStyle: buttonStyle as ToggleButtonModel);
    } else if (T.toString() == "FloatingActionButtonModel" || T.toString() == "FloatingActionButtonModel?") {
      changeFloatingActionButtonStyle(buttonStyle: buttonStyle as FloatingActionButtonModel);
    }
    AppLogger.print("Button style changed: $buttonStyle", [PackageFeatures.theme]);
  }

  /// [changeToggleButtonStyle] is a function that is used to change the toggle button style of the app.
  static changeToggleButtonStyle({required ToggleButtonModel buttonStyle}) {
    final Map<String, ToggleButtonModel> toggleButtonStyle = _toggleButtons(buttonStyle);
    ComponentThemesModel? newComponentThemesModel = _componentThemesModel?.copyWith(toggleButtons: toggleButtonStyle);
    newComponentThemesModel ??= ComponentThemesModel(id: primaryThemeId, toggleButtons: toggleButtonStyle);
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print("Toggle button style changed: $buttonStyle", [PackageFeatures.theme]);
  }

  /// [changeFloatingActionButtonStyle] is a function that is used to change the floating action button style of the app.
  static changeFloatingActionButtonStyle({required FloatingActionButtonModel buttonStyle}) {
    final Map<String, FloatingActionButtonModel> floatingActionButtonStyle = _floatingActionButton(buttonStyle);
    ComponentThemesModel? newComponentThemesModel = _componentThemesModel?.copyWith(floatingActionButtons: floatingActionButtonStyle);
    newComponentThemesModel ??= ComponentThemesModel(id: primaryThemeId, floatingActionButtons: floatingActionButtonStyle);
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print("Floating action button style changed: $buttonStyle", [PackageFeatures.theme]);
  }

  /// [changeCheckboxStyle] is a function that is used to change the checkbox style of the app.
  static changeCheckboxStyle({required CheckboxModel checkboxStyle}) {
    final Map<String, CheckboxModel>? checkboxStyles = _checkboxes(checkboxStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(checkboxes: checkboxStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, checkboxes: checkboxStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Checkbox style changed: $checkboxStyle", [PackageFeatures.theme]);
  }

  /// [changeRadioStyle] is a function that is used to change the radio style of the app.
  static changeRadioStyle({required RadioModel radioStyle}) {
    final Map<String, RadioModel>? radioStyles = _radios(radioStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(radios: radioStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, radios: radioStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Radio style changed: $radioStyle", [PackageFeatures.theme]);
  }

  /// [changeInputDecorationStyle] is a function that is used to change the input decoration style of the app.
  static changeInputDecorationStyle({required InputDecorationModel inputDecorationStyle}) {
    final Map<String, InputDecorationModel>? inputDecorationStyles = _inputDecorations(inputDecorationStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(inputDecorations: inputDecorationStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, inputDecorations: inputDecorationStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Input decoration style changed: $inputDecorationStyle", [PackageFeatures.theme]);
  }

  /// [changeBoxDecorationStyle] is a function that is used to change the box decoration style of the app.
  static changeBoxDecorationStyle({required BoxDecorationModel boxDecorationStyle}) {
    final Map<String, BoxDecorationModel>? boxDecorationStyles = _boxDecorations(boxDecorationStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(boxDecorations: boxDecorationStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, boxDecorations: boxDecorationStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Box decoration style changed: $boxDecorationStyle", [PackageFeatures.theme]);
  }

  /// [changeCardStyle] is a function that is used to change the card style of the app.
  static changeCardStyle({required CardModel cardStyle}) {
    final Map<String, CardModel>? cardStyles = _cardStyles(cardStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(cards: cardStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, cards: cardStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Card style changed: $cardStyle", [PackageFeatures.theme]);
  }

  /// [changeSnackbarStyle] is a function that is used to change the snackbar style of the app.
  static changeSnackbarStyle({required SnackbarModel snackbarStyle}) {
    final Map<String, SnackbarModel>? snackbarStyles = _snackbarStyles(snackbarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(snackbars: snackbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, snackbars: snackbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Snackbar style changed: $snackbarStyle", [PackageFeatures.theme]);
  }

  /// [changeBadgeStyle] is a function that is used to change the badge style of the app.
  static changeBadgeStyle({required BadgeModel badgeStyle}) {
    final Map<String, BadgeModel>? badgeStyles = _badgeStyles(badgeStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(badges: badgeStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, badges: badgeStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Badge style changed: $badgeStyle", [PackageFeatures.theme]);
  }

  static changeAppbarStyle({required AppbarModel appbarStyle}) {
    Map<String, AppbarModel> appbarStyles = _componentThemesModel?.appbars ?? {styleType: appbarStyle};
    appbarStyles[styleType] = appbarStyle;
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(appbars: appbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, appbars: appbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Appbar style changed: $newThemeModel", [PackageFeatures.theme]);
  }

  /// [changeBottomAppbarStyle] is a function that is used to change the bottom appbar style of the app.
  static changeBottomAppbarStyle({required BottomAppbarModel bottomAppbarStyle}) {
    final Map<String, BottomAppbarModel>? bottomAppbarStyles = _bottomAppbarStyles(bottomAppbarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(bottomAppbars: bottomAppbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, bottomAppbars: bottomAppbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Bottom appbar style changed: $bottomAppbarStyle", [PackageFeatures.theme]);
  }

  /// [changeDropdownStyle] is a function that is used to change the dropdown style of the app.
  static changeDropdownStyle({required DropdownModel dropdownStyle}) {
    final Map<String, DropdownModel>? dropdownStyles = _dropdownStyles(dropdownStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(dropdowns: dropdownStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, dropdowns: dropdownStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Dropdown style changed: $dropdownStyle", [PackageFeatures.theme]);
  }

  /// [changeChipStyle] is a function that is used to change the chip style of the app.
  static changeChipStyle({required ChipModel chipStyle}) {
    final Map<String, ChipModel>? chipStyles = _chipStyles(chipStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(chips: chipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, chips: chipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Chip style changed: $chipStyle", [PackageFeatures.theme]);
  }

  /// [changeDialogStyle] is a function that is used to change the dialog style of the app.
  static changeDialogStyle({required DialogModel dialogStyle}) {
    final Map<String, DialogModel>? dialogStyles = _dialogStyles(dialogStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(dialogs: dialogStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, dialogs: dialogStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Dialog style changed: $dialogStyle", [PackageFeatures.theme]);
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static changePopupMenuStyle({required PopupMenuModel popupMenuStyle}) {
    final Map<String, PopupMenuModel>? popupMenuStyles = _popupMenuStyles(popupMenuStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(popupMenus: popupMenuStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, popupMenus: popupMenuStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Popup menu style changed: $popupMenuStyle", [PackageFeatures.theme]);
  }

  /// [changeSliderStyle] is a function that is used to change the slider style of the app.
  static changeSliderStyle({required SliderModel sliderStyle}) {
    final Map<String, SliderModel>? sliderStyles = _sliderStyles(sliderStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(sliders: sliderStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, sliders: sliderStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Slider style changed: $sliderStyle", [PackageFeatures.theme]);
  }

  /// [changeScrollbarStyle] is a function that is used to change the scrollbar style of the app.
  static changeScrollbarStyle({required ScrollbarModel scrollbarStyle}) {
    final Map<String, ScrollbarModel>? scrollbarStyles = _scrollbarStyles(scrollbarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(scrollbars: scrollbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, scrollbars: scrollbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Scrollbar style changed: $scrollbarStyle", [PackageFeatures.theme]);
  }

  /// [changeTooltipStyle] is a function that is used to change the tooltip style of the app.
  static changeTooltipStyle({required TooltipModel tooltipStyle}) {
    final Map<String, TooltipModel>? tooltipStyles = _tooltipStyles(tooltipStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(tooltips: tooltipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, tooltips: tooltipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Tooltip style changed: $tooltipStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationRailStyle] is a function that is used to change the navigation rail style of the app.
  static changeNavigationRailStyle({required NavigationRailModel navigationRailStyle}) {
    final Map<String, NavigationRailModel>? navigationRailStyles = _navigationRailStyles(navigationRailStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(navigationRails: navigationRailStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationRails: navigationRailStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation rail style changed: $navigationRailStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static changeSwitchStyle({required SwitchModel switchStyle}) {
    final Map<String, SwitchModel>? switchStyles = _switchStyles(switchStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(switches: switchStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, switches: switchStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Switch style changed: $switchStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static changeDrawerStyle({required DrawerModel drawerStyle}) {
    final Map<String, DrawerModel>? drawerStyles = _drawerStyles(drawerStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(drawers: drawerStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, drawers: drawerStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Drawer style changed: $drawerStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static changeListTileStyle({required ListTileModel listTileStyle}) {
    final Map<String, ListTileModel>? listTileStyles = _listTileStyles(listTileStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(listTiles: listTileStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, listTiles: listTileStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("List tile style changed: $listTileStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static changeMenuStyle({required MenuModel menuStyle}) {
    final Map<String, MenuModel>? menuStyles = _menuStyles(menuStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(menus: menuStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, menus: menuStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Menu style changed: $menuStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuBarStyle] is a function that is used to change the menu bar style of the app.
  static changeMenuBarStyle({required MenuBarModel menuBarStyle}) {
    final Map<String, MenuBarModel>? menuBarStyles = _menuBarStyles(menuBarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(menuBars: menuBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, menuBars: menuBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Menu bar style changed: $menuBarStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationBarStyle] is a function that is used to change the navigation bar style of the app.
  static changeNavigationBarStyle({required NavigationBarModel navigationBarStyle}) {
    final Map<String, NavigationBarModel>? navigationBarStyles = _navigationBarStyles(navigationBarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(navigationBars: navigationBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationBars: navigationBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation bar style changed: $navigationBarStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationDrawerStyle] is a function that is used to change the navigation drawer style of the app.
  static changeNavigationDrawerStyle({required NavigationDrawerModel navigationDrawerStyle}) {
    final Map<String, NavigationDrawerModel>? navigationDrawerStyles = _navigationDrawerStyles(navigationDrawerStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(navigationDrawers: navigationDrawerStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationDrawers: navigationDrawerStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation drawer style changed: $navigationDrawerStyle", [PackageFeatures.theme]);
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static changeProgressIndicatorStyle({required ProgressIndicatorModel progressIndicatorStyle}) {
    final Map<String, ProgressIndicatorModel>? progressIndicatorStyles = _progressIndicatorStyles(progressIndicatorStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(progressIndicators: progressIndicatorStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, progressIndicators: progressIndicatorStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Progress indicator style changed: $progressIndicatorStyle", [PackageFeatures.theme]);
  }

  /// [changeSearchBarStyle] is a function that is used to change the search bar style of the app.
  static changeSearchBarStyle({required SearchBarModel searchBarStyle}) {
    final Map<String, SearchBarModel>? searchBarStyles = _searchBarStyles(searchBarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(searchBars: searchBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, searchBars: searchBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Search bar style changed: $searchBarStyle", [PackageFeatures.theme]);
  }

  /// [changeSearchViewStyle] is a function that is used to change the search view style of the app.
  static changeSearchViewStyle({required SearchViewModel searchViewStyle}) {
    final Map<String, SearchViewModel>? searchViewStyles = _searchViewStyles(searchViewStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(searchViews: searchViewStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, searchViews: searchViewStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Search view style changed: $searchViewStyle", [PackageFeatures.theme]);
  }

  /// [changeTabBarStyle] is a function that is used to change the tab bar style of the app.
  static changeTabBarStyle({required TabBarModel tabBarStyle}) {
    final Map<String, TabBarModel>? tabBarStyles = _tabBarStyles(tabBarStyle);
    ComponentThemesModel? newThemeModel = _componentThemesModel?.copyWith(tabBars: tabBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, tabBars: tabBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Tab bar style changed: $tabBarStyle", [PackageFeatures.theme]);
  }

  /// [saveJsonToFile] is a function that is used to save the json to a file.
  static saveJsonToFile() {
    // Convert theme model to JSON
    final String baseThemeJson = jsonEncode(_baseThemeModel.toJson());
    final String componentThemesJson = jsonEncode(_componentThemesModel?.toJson());

    // Create a zip archive
    final archive = Archive()
      ..addFile(ArchiveFile('base_theme.json', baseThemeJson.length, baseThemeJson.codeUnits))
      ..addFile(ArchiveFile('component_themes.json', componentThemesJson.length, componentThemesJson.codeUnits));

    // Convert the archive to a byte list
    final List<int>? zipBytes = ZipEncoder().encode(archive);
    if (zipBytes == null) return;

    // Create a Blob from the zip byte list
    final blob = html.Blob([Uint8List.fromList(zipBytes)]);

    // Create download link for the zip file
    final anchor = html.AnchorElement(href: html.Url.createObjectUrlFromBlob(blob))
      ..style.display = 'none'
      ..download = 'themes.zip';

    // Add the link to the body
    html.document.body?.children.add(anchor);

    // Trigger download
    anchor.click();

    // Clean up
    html.document.body?.children.remove(anchor);
    html.Url.revokeObjectUrl(anchor.href!);
  }

  static _colorStyles(ColorModel colorModel, bool isDark) {
    Map<String, ColorSchemes>? colorStyles = _baseThemeModel.colors;
    colorStyles[styleType] = _colorSchemes(colorModel, isDark);
    return colorStyles;
  }

  static ColorSchemes _colorSchemes(ColorModel colorModel, bool isDark) {
    ColorSchemes colorSchemes = _baseThemeModel.colors[styleType]!; // ?? ColorSchemes.defaultSchemes();
    switch (isDark) {
      case true:
        colorSchemes = colorSchemes.copyWith(dark: colorModel);
        break;
      case false:
        colorSchemes = colorSchemes.copyWith(light: colorModel);
        break;
    }
    return colorSchemes;
  }

  static Map<String, TextTypes>? _textStyles(TextType textType, TextStyleSizes textStyle) {
    Map<String, TextTypes>? textStyles = _baseThemeModel.textStyles ?? {};
    textStyles[styleType] = _textTypes(textType, textStyle);
    return textStyles;
  }

  static TextTypes _textTypes(TextType textType, TextStyleSizes textStyle) {
    TextTypes textTypes = _baseThemeModel.textStyles?[styleType] ?? const TextTypes();
    switch (textType) {
      case TextType.display:
        textTypes = textTypes.copyWith(display: textStyle);
        break;
      case TextType.headline:
        textTypes = textTypes.copyWith(headline: textStyle);
        break;
      case TextType.title:
        textTypes = textTypes.copyWith(title: textStyle);
        break;
      case TextType.body:
        textTypes = textTypes.copyWith(body: textStyle);
        break;
      case TextType.label:
        textTypes = textTypes.copyWith(label: textStyle);
        break;
    }
    return textTypes;
  }

  static _changeButtonStyleModel({required ButtonStyleModelType buttonType, required ButtonStyleModel buttonStyle}) {
    ComponentThemesModel? newComponentThemesModel;
    if (_componentThemesModel == null) {
      AppLogger.print("Component themes model is null in _changeButtonStyleModel", [PackageFeatures.theme], type: LoggerType.warning);
      return;
    }
    switch (buttonType) {
      case ButtonStyleModelType.elevated:
        // if (_componentThemesModel?.elevatedButtons != null) {
        //   _componentThemesModel!.elevatedButtons![styleType] = buttonStyle;
        // } else {
        //   _componentThemesModel!.elevatedButtons = {styleType: buttonStyle};
        // }
        Map<String, ButtonStyleModel> elevatedButtonStyle = _componentThemesModel?.elevatedButtons ?? {styleType: buttonStyle};
        elevatedButtonStyle[styleType] = buttonStyle;
        newComponentThemesModel = _componentThemesModel!.copyWith(elevatedButtons: elevatedButtonStyle);
        _themeStore.changeComponentThemesModel(newComponentThemesModel);
        return;
      case ButtonStyleModelType.outlined:
        Map<String, ButtonStyleModel> outlinedButtonStyle = _outlinedButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(outlinedButtons: outlinedButtonStyle);
        break;
      case ButtonStyleModelType.text:
        Map<String, ButtonStyleModel> textButtonStyle = _textButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(textButtons: textButtonStyle);
        break;
      case ButtonStyleModelType.icon:
        Map<String, ButtonStyleModel> iconButtonStyle = _iconButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(iconButtons: iconButtonStyle); // Todo: Fix typo
        break;
      case ButtonStyleModelType.filled:
        Map<String, ButtonStyleModel> filledButtonStyle = _filledButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(filledButtons: filledButtonStyle);
        break;
      case ButtonStyleModelType.menu:
        Map<String, ButtonStyleModel> menuButtonStyle = _menuButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(menuButtons: menuButtonStyle);
        break;
      case ButtonStyleModelType.segmented:
        Map<String, ButtonStyleModel> segmentedButtonStyle = _segmentedButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(segmentedButtons: segmentedButtonStyle);
        break;
      default:
        break;
    }
    if (newComponentThemesModel != null) {
      _themeStore.changeComponentThemesModel(newComponentThemesModel);
    }
  }

  static Map<String, ButtonStyleModel> _elevatedButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> elevatedButtonStyle = _componentThemesModel?.elevatedButtons ?? {styleType: buttonStyle};
    elevatedButtonStyle[styleType] = buttonStyle;
    return elevatedButtonStyle;
  }

  static Map<String, ButtonStyleModel> _filledButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> filledButtonStyle = _componentThemesModel?.filledButtons ?? {styleType: buttonStyle};
    filledButtonStyle[styleType] = buttonStyle;
    return filledButtonStyle;
  }

  static Map<String, ButtonStyleModel> _outlinedButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> outlinedButtonStyle = _componentThemesModel?.outlinedButtons ?? {styleType: buttonStyle};
    outlinedButtonStyle[styleType] = buttonStyle;
    return outlinedButtonStyle;
  }

  static Map<String, ButtonStyleModel> _menuButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> menuButtonStyle = _componentThemesModel?.menuButtons ?? {styleType: buttonStyle};
    menuButtonStyle[styleType] = buttonStyle;
    return menuButtonStyle;
  }

  static Map<String, ButtonStyleModel> _textButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> textButtonStyle = _componentThemesModel?.textButtons ?? {styleType: buttonStyle};
    textButtonStyle[styleType] = buttonStyle;
    return textButtonStyle;
  }

  static Map<String, ToggleButtonModel> _toggleButtons(ToggleButtonModel buttonStyle) {
    Map<String, ToggleButtonModel> toggleButtonStyle = _componentThemesModel?.toggleButtons ?? {styleType: buttonStyle};
    toggleButtonStyle[styleType] = buttonStyle;
    return toggleButtonStyle;
  }

  static Map<String, ButtonStyleModel> _iconButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> iconButtonStyle = _componentThemesModel?.iconButtons ?? {styleType: buttonStyle};
    iconButtonStyle[styleType] = buttonStyle;
    return iconButtonStyle;
  }

  static Map<String, FloatingActionButtonModel> _floatingActionButton(FloatingActionButtonModel buttonStyle) {
    Map<String, FloatingActionButtonModel> floatingActionButtonStyle = _componentThemesModel?.floatingActionButtons ?? {styleType: buttonStyle};
    floatingActionButtonStyle[styleType] = buttonStyle;
    return floatingActionButtonStyle;
  }

  static Map<String, ButtonStyleModel> _segmentedButtons(ButtonStyleModel buttonStyle) {
    Map<String, ButtonStyleModel> segmentedButtonStyle = _componentThemesModel?.segmentedButtons ?? {styleType: buttonStyle};
    segmentedButtonStyle[styleType] = buttonStyle;
    return segmentedButtonStyle;
  }

  static Map<String, CheckboxModel>? _checkboxes(CheckboxModel checkboxStyle) {
    Map<String, CheckboxModel> checkboxStyles = _componentThemesModel?.checkboxes ?? {styleType: checkboxStyle};
    checkboxStyles[styleType] = checkboxStyle;
    return checkboxStyles;
  }

  static Map<String, RadioModel>? _radios(RadioModel radioStyle) {
    Map<String, RadioModel> radioStyles = _componentThemesModel?.radios ?? {styleType: radioStyle};
    radioStyles[styleType] = radioStyle;
    return radioStyles;
  }

  static Map<String, InputDecorationModel>? _inputDecorations(InputDecorationModel inputDecorationStyle) {
    Map<String, InputDecorationModel> inputDecorationStyles = _componentThemesModel?.inputDecorations ?? {styleType: inputDecorationStyle};
    inputDecorationStyles[styleType] = inputDecorationStyle;
    return inputDecorationStyles;
  }

  static Map<String, BoxDecorationModel>? _boxDecorations(BoxDecorationModel boxDecorationStyle) {
    Map<String, BoxDecorationModel> boxDecorationStyles = _componentThemesModel?.boxDecorations ?? {styleType: boxDecorationStyle};
    boxDecorationStyles[styleType] = boxDecorationStyle;
    return boxDecorationStyles;
  }

  static Map<String, CardModel>? _cardStyles(CardModel cardStyle) {
    Map<String, CardModel> cardStyles = _componentThemesModel?.cards ?? {styleType: cardStyle};
    cardStyles[styleType] = cardStyle;
    return cardStyles;
  }

  static Map<String, SnackbarModel>? _snackbarStyles(SnackbarModel snackbarStyle) {
    Map<String, SnackbarModel> snackbarStyles = _componentThemesModel?.snackbars ?? {styleType: snackbarStyle};
    snackbarStyles[styleType] = snackbarStyle;
    return snackbarStyles;
  }

  static Map<String, BadgeModel>? _badgeStyles(BadgeModel badgeStyle) {
    Map<String, BadgeModel> badgeStyles = _componentThemesModel?.badges ?? {styleType: badgeStyle};
    badgeStyles[styleType] = badgeStyle;
    return badgeStyles;
  }

  static Map<String, BottomAppbarModel>? _bottomAppbarStyles(BottomAppbarModel bottomAppbarStyle) {
    Map<String, BottomAppbarModel> bottomAppbarStyles = _componentThemesModel?.bottomAppbars ?? {styleType: bottomAppbarStyle};
    bottomAppbarStyles[styleType] = bottomAppbarStyle;
    return bottomAppbarStyles;
  }

  static Map<String, DropdownModel>? _dropdownStyles(DropdownModel dropdownStyle) {
    Map<String, DropdownModel> dropdownStyles = _componentThemesModel?.dropdowns ?? {styleType: dropdownStyle};
    dropdownStyles[styleType] = dropdownStyle;
    return dropdownStyles;
  }

  static Map<String, ChipModel>? _chipStyles(ChipModel chipStyle) {
    Map<String, ChipModel> chipStyles = _componentThemesModel?.chips ?? {styleType: chipStyle};
    chipStyles[styleType] = chipStyle;
    return chipStyles;
  }

  static Map<String, DialogModel>? _dialogStyles(DialogModel dialogStyle) {
    Map<String, DialogModel> dialogStyles = _componentThemesModel?.dialogs ?? {styleType: dialogStyle};
    dialogStyles[styleType] = dialogStyle;
    return dialogStyles;
  }

  static Map<String, PopupMenuModel>? _popupMenuStyles(PopupMenuModel popupMenuStyle) {
    Map<String, PopupMenuModel> popupMenuStyles = _componentThemesModel?.popupMenus ?? {styleType: popupMenuStyle};
    popupMenuStyles[styleType] = popupMenuStyle;
    return popupMenuStyles;
  }

  static Map<String, SliderModel>? _sliderStyles(SliderModel sliderStyle) {
    Map<String, SliderModel> sliderStyles = _componentThemesModel?.sliders ?? {styleType: sliderStyle};
    sliderStyles[styleType] = sliderStyle;
    return sliderStyles;
  }

  static Map<String, ScrollbarModel>? _scrollbarStyles(ScrollbarModel scrollbarStyle) {
    Map<String, ScrollbarModel> scrollbarStyles = _componentThemesModel?.scrollbars ?? {styleType: scrollbarStyle};
    scrollbarStyles[styleType] = scrollbarStyle;
    return scrollbarStyles;
  }

  static Map<String, TooltipModel>? _tooltipStyles(TooltipModel tooltipStyle) {
    Map<String, TooltipModel> tooltipStyles = _componentThemesModel?.tooltips ?? {styleType: tooltipStyle};
    tooltipStyles[styleType] = tooltipStyle;
    return tooltipStyles;
  }

  static Map<String, NavigationRailModel>? _navigationRailStyles(NavigationRailModel navigationRailStyle) {
    Map<String, NavigationRailModel> navigationRailStyles = _componentThemesModel?.navigationRails ?? {styleType: navigationRailStyle};
    navigationRailStyles[styleType] = navigationRailStyle;
    return navigationRailStyles;
  }

  static Map<String, SwitchModel>? _switchStyles(SwitchModel switchStyle) {
    Map<String, SwitchModel> switchStyles = _componentThemesModel?.switches ?? {styleType: switchStyle};
    switchStyles[styleType] = switchStyle;
    return switchStyles;
  }

  static Map<String, DrawerModel>? _drawerStyles(DrawerModel drawerStyle) {
    Map<String, DrawerModel> drawerStyles = _componentThemesModel?.drawers ?? {styleType: drawerStyle};
    drawerStyles[styleType] = drawerStyle;
    return drawerStyles;
  }

  static Map<String, ListTileModel>? _listTileStyles(ListTileModel listTileStyle) {
    Map<String, ListTileModel> listTileStyles = _componentThemesModel?.listTiles ?? {styleType: listTileStyle};
    listTileStyles[styleType] = listTileStyle;
    return listTileStyles;
  }

  static Map<String, MenuModel>? _menuStyles(MenuModel menuStyle) {
    Map<String, MenuModel> menuStyles = _componentThemesModel?.menus ?? {styleType: menuStyle};
    menuStyles[styleType] = menuStyle;
    return menuStyles;
  }

  static Map<String, MenuBarModel>? _menuBarStyles(MenuBarModel menuBarStyle) {
    Map<String, MenuBarModel> menuBarStyles = _componentThemesModel?.menuBars ?? {styleType: menuBarStyle};
    menuBarStyles[styleType] = menuBarStyle;
    return menuBarStyles;
  }

  static Map<String, NavigationBarModel>? _navigationBarStyles(NavigationBarModel navigationBarStyle) {
    Map<String, NavigationBarModel> navigationBarStyles = _componentThemesModel?.navigationBars ?? {styleType: navigationBarStyle};
    navigationBarStyles[styleType] = navigationBarStyle;
    return navigationBarStyles;
  }

  static Map<String, NavigationDrawerModel>? _navigationDrawerStyles(NavigationDrawerModel navigationDrawerStyle) {
    Map<String, NavigationDrawerModel> navigationDrawerStyles = _componentThemesModel?.navigationDrawers ?? {styleType: navigationDrawerStyle};
    navigationDrawerStyles[styleType] = navigationDrawerStyle;
    return navigationDrawerStyles;
  }

  static Map<String, ProgressIndicatorModel>? _progressIndicatorStyles(ProgressIndicatorModel progressIndicatorStyle) {
    Map<String, ProgressIndicatorModel> progressIndicatorStyles = _componentThemesModel?.progressIndicators ?? {styleType: progressIndicatorStyle};
    progressIndicatorStyles[styleType] = progressIndicatorStyle;
    return progressIndicatorStyles;
  }

  static Map<String, SearchBarModel>? _searchBarStyles(SearchBarModel searchBarStyle) {
    Map<String, SearchBarModel> searchBarStyles = _componentThemesModel?.searchBars ?? {styleType: searchBarStyle};
    searchBarStyles[styleType] = searchBarStyle;
    return searchBarStyles;
  }

  static Map<String, SearchViewModel>? _searchViewStyles(SearchViewModel searchViewStyle) {
    Map<String, SearchViewModel> searchViewStyles = _componentThemesModel?.searchViews ?? {styleType: searchViewStyle};
    searchViewStyles[styleType] = searchViewStyle;
    return searchViewStyles;
  }

  static Map<String, TabBarModel>? _tabBarStyles(TabBarModel tabBarStyle) {
    Map<String, TabBarModel> tabBarStyles = _componentThemesModel?.tabBars ?? {styleType: tabBarStyle};
    tabBarStyles[styleType] = tabBarStyle;
    return tabBarStyles;
  }
}
