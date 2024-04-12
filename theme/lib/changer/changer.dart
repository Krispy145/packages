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
import 'package:theme/data/models/menus/menu_style_model.dart';
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

// TODO: Move to relevant place

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
  static void changeBaseThemeModel({required BaseThemeModel model}) {
    _themeStore.changeBaseThemeModel(model);
    AppLogger.print("Base Theme changed: $model", [PackageFeatures.theme]);
  }

  /// [changeComponentThemesModel] is a function that is used to change the theme of the app.
  static void changeComponentThemesModel({required ComponentThemesModel model}) {
    _themeStore.changeComponentThemesModel(model);
    AppLogger.print("Component Theme changed: $model", [PackageFeatures.theme]);
  }

  static void changeCurrentThemeStyle({
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
  static void changeLightThemeStyle({
    required ColorModel colorModel,
  }) {
    final newThemeModel = _baseThemeModel.copyWith(colors: _themeColorStringStyles(colorModel, false));
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Light theme changed: $colorModel", [PackageFeatures.theme]);
  }

  /// [changeDarkThemeStyle] is a function that is used to change the dark theme of the app.
  static void changeDarkThemeStyle({
    required ColorModel colorModel,
  }) {
    final newThemeModel = _baseThemeModel.copyWith(colors: _themeColorStringStyles(colorModel, true));
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Dark theme changed: $colorModel", [PackageFeatures.theme]);
  }

  static Future<void> currentTextStylesThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(context: context, builder: (context) => TextStyleView());
  }

  /// [changeTextTypeStyle] is a function that is used to change the text style of the app.
  static void changeTextTypeStyle({
    required TextType textType,
    required TextStyleSizes textStyle,
  }) {
    final textStyles = _textStyleStrings(textType, textStyle);
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
    required void Function(T newTheme) onUpdateComponentTheme,
    required T? defaultComponentTheme,
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
    final Map<String, dynamic> componentThemeAsMap;
    if (currentComponentTheme != null) {
      componentThemeAsMap = convertComponentThemeToMap(currentComponentTheme);
    } else {
      componentThemeAsMap = convertComponentThemeToMap(convertComponentThemeFromMap({}));
    }

    final mergedMap = defaultComponentTheme != null ? {...convertComponentThemeToMap(defaultComponentTheme), ...componentThemeAsMap} : componentThemeAsMap;

    final mapEditorStore = MapEditorStore(
      onMapChanged: (newMap) {
        onUpdateComponentTheme(convertComponentThemeFromMap(newMap));
      },
      initialData: mergedMap,
    );
    return showDialog(
      context: context,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(64),
        child: ThemeComponentEditor(
          title: componentOption.name,
          mapEditorStore: mapEditorStore,
          headerBuilder: headerBuilder,
        ),
      ),
    );
  }

  /// [changeButtonStyle] is a function that is used to change the button style of the app
  /// T can equal [ButtonStyleModel], [ToggleButtonModel], [FloatingActionButtonModel].
  static void changeButtonStyle<T>({required ButtonStyleModelType buttonType, required T buttonStyle}) {
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
  static void changeToggleButtonStyle({required ToggleButtonModel buttonStyle}) {
    final toggleButtonStyle = _toggleButtons(buttonStyle);
    var newComponentThemesModel = _componentThemesModel?.copyWith(toggleButtons: toggleButtonStyle);
    newComponentThemesModel ??= ComponentThemesModel(id: primaryThemeId, toggleButtons: toggleButtonStyle);
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print("Toggle button style changed: $buttonStyle", [PackageFeatures.theme]);
  }

  /// [changeFloatingActionButtonStyle] is a function that is used to change the floating action button style of the app.
  static void changeFloatingActionButtonStyle({required FloatingActionButtonModel buttonStyle}) {
    final floatingActionButtonStyle = _floatingActionButton(buttonStyle);
    var newComponentThemesModel = _componentThemesModel?.copyWith(floatingActionButtons: floatingActionButtonStyle);
    newComponentThemesModel ??= ComponentThemesModel(id: primaryThemeId, floatingActionButtons: floatingActionButtonStyle);
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print("Floating action button style changed: $buttonStyle", [PackageFeatures.theme]);
  }

  /// [changeCheckboxStyle] is a function that is used to change the checkbox style of the app.
  static void changeCheckboxStyle({required CheckboxModel checkboxStyle}) {
    final checkboxStyles = _checkboxes(checkboxStyle);
    var newThemeModel = _componentThemesModel?.copyWith(checkboxes: checkboxStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, checkboxes: checkboxStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Checkbox style changed: $checkboxStyle", [PackageFeatures.theme]);
  }

  /// [changeRadioStyle] is a function that is used to change the radio style of the app.
  static void changeRadioStyle({required RadioModel radioStyle}) {
    final radioStyles = _radios(radioStyle);
    var newThemeModel = _componentThemesModel?.copyWith(radios: radioStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, radios: radioStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Radio style changed: $radioStyle", [PackageFeatures.theme]);
  }

  /// [changeInputDecorationStyle] is a function that is used to change the input decoration style of the app.
  static void changeInputDecorationStyle({required InputDecorationModel inputDecorationStyle}) {
    final inputDecorationStyles = _inputDecorations(inputDecorationStyle);
    var newThemeModel = _componentThemesModel?.copyWith(inputDecorations: inputDecorationStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, inputDecorations: inputDecorationStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Input decoration style changed: $inputDecorationStyle", [PackageFeatures.theme]);
  }

  /// [changeBoxDecorationStyle] is a function that is used to change the box decoration style of the app.
  static void changeBoxDecorationStyle({required BoxDecorationModel boxDecorationStyle}) {
    final boxDecorationStyles = _boxDecorations(boxDecorationStyle);
    var newThemeModel = _componentThemesModel?.copyWith(boxDecorations: boxDecorationStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, boxDecorations: boxDecorationStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Box decoration style changed: $boxDecorationStyle", [PackageFeatures.theme]);
  }

  /// [changeCardStyle] is a function that is used to change the card style of the app.
  static void changeCardStyle({required CardModel cardStyle}) {
    final cardStyles = _cardStyles(cardStyle);
    var newThemeModel = _componentThemesModel?.copyWith(cards: cardStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, cards: cardStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Card style changed: $cardStyle", [PackageFeatures.theme]);
  }

  /// [changeSnackbarStyle] is a function that is used to change the snackbar style of the app.
  static void changeSnackbarStyle({required SnackbarModel snackbarStyle}) {
    final snackbarStyles = _snackbarStyles(snackbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(snackbars: snackbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, snackbars: snackbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Snackbar style changed: $snackbarStyle", [PackageFeatures.theme]);
  }

  /// [changeBadgeStyle] is a function that is used to change the badge style of the app.
  static void changeBadgeStyle({required BadgeModel badgeStyle}) {
    final badgeStyles = _badgeStyles(badgeStyle);
    var newThemeModel = _componentThemesModel?.copyWith(badges: badgeStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, badges: badgeStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Badge style changed: $badgeStyle", [PackageFeatures.theme]);
  }

  /// [changeAppbarStyle] is a function that is used to change the appbar style of the app.
  static void changeAppbarStyle({required AppbarModel appbarStyle}) {
    final appbarStyles = _componentThemesModel?.appbars ?? {styleType: appbarStyle};
    appbarStyles[styleType] = appbarStyle;
    var newThemeModel = _componentThemesModel?.copyWith(appbars: appbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, appbars: appbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Appbar style changed: $newThemeModel", [PackageFeatures.theme]);
  }

  /// [changeBottomAppbarStyle] is a function that is used to change the bottom appbar style of the app.
  static void changeBottomAppbarStyle({required BottomAppbarModel bottomAppbarStyle}) {
    final bottomAppbarStyles = _bottomAppbarStyles(bottomAppbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(bottomAppbars: bottomAppbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, bottomAppbars: bottomAppbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Bottom appbar style changed: $bottomAppbarStyle", [PackageFeatures.theme]);
  }

  /// [changeDropdownStyle] is a function that is used to change the dropdown style of the app.
  static void changeDropdownStyle({required DropdownModel dropdownStyle}) {
    final dropdownStyles = _dropdownStyles(dropdownStyle);
    var newThemeModel = _componentThemesModel?.copyWith(dropdowns: dropdownStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, dropdowns: dropdownStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Dropdown style changed: $dropdownStyle", [PackageFeatures.theme]);
  }

  /// [changeChipStyle] is a function that is used to change the chip style of the app.
  static void changeChipStyle({required ChipModel chipStyle}) {
    final chipStyles = _chipStyles(chipStyle);
    var newThemeModel = _componentThemesModel?.copyWith(chips: chipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, chips: chipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Chip style changed: $chipStyle", [PackageFeatures.theme]);
  }

  /// [changeDialogStyle] is a function that is used to change the dialog style of the app.
  static void changeDialogStyle({required DialogModel dialogStyle}) {
    final dialogStyles = _dialogStyles(dialogStyle);
    var newThemeModel = _componentThemesModel?.copyWith(dialogs: dialogStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, dialogs: dialogStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Dialog style changed: $dialogStyle", [PackageFeatures.theme]);
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static void changePopupMenuStyle({required PopupMenuModel popupMenuStyle}) {
    final popupMenuStyles = _popupMenuStyles(popupMenuStyle);
    var newThemeModel = _componentThemesModel?.copyWith(popupMenus: popupMenuStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, popupMenus: popupMenuStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Popup menu style changed: $popupMenuStyle", [PackageFeatures.theme]);
  }

  /// [changeSliderStyle] is a function that is used to change the slider style of the app.
  static void changeSliderStyle({required SliderModel sliderStyle}) {
    final sliderStyles = _sliderStyles(sliderStyle);
    var newThemeModel = _componentThemesModel?.copyWith(sliders: sliderStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, sliders: sliderStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Slider style changed: $sliderStyle", [PackageFeatures.theme]);
  }

  /// [changeScrollbarStyle] is a function that is used to change the scrollbar style of the app.
  static void changeScrollbarStyle({required ScrollbarModel scrollbarStyle}) {
    final scrollbarStyles = _scrollbarStyles(scrollbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(scrollbars: scrollbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, scrollbars: scrollbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Scrollbar style changed: $scrollbarStyle", [PackageFeatures.theme]);
  }

  /// [changeTooltipStyle] is a function that is used to change the tooltip style of the app.
  static void changeTooltipStyle({required TooltipModel tooltipStyle}) {
    final tooltipStyles = _tooltipStyles(tooltipStyle);
    var newThemeModel = _componentThemesModel?.copyWith(tooltips: tooltipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, tooltips: tooltipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Tooltip style changed: $tooltipStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationRailStyle] is a function that is used to change the navigation rail style of the app.
  static void changeNavigationRailStyle({required NavigationRailModel navigationRailStyle}) {
    final navigationRailStyles = _navigationRailStyles(navigationRailStyle);
    var newThemeModel = _componentThemesModel?.copyWith(navigationRails: navigationRailStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationRails: navigationRailStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation rail style changed: $navigationRailStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeSwitchStyle({required SwitchModel switchStyle}) {
    final switchStyles = _switchStyles(switchStyle);
    var newThemeModel = _componentThemesModel?.copyWith(switches: switchStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, switches: switchStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Switch style changed: $switchStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeDrawerStyle({required DrawerModel drawerStyle}) {
    final drawerStyles = _drawerStyles(drawerStyle);
    var newThemeModel = _componentThemesModel?.copyWith(drawers: drawerStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, drawers: drawerStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Drawer style changed: $drawerStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeListTileStyle({required ListTileModel listTileStyle}) {
    final listTileStyles = _listTileStyles(listTileStyle);
    var newThemeModel = _componentThemesModel?.copyWith(listTiles: listTileStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, listTiles: listTileStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("List tile style changed: $listTileStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeMenuStyle({required MenuStyleModel menuStyle}) {
    final menuStyles = _menuStyles(menuStyle);
    var newThemeModel = _componentThemesModel?.copyWith(menus: menuStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, menus: menuStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Menu style changed: $menuStyle", [PackageFeatures.theme]);
  }

  /// [changeMenuBarStyle] is a function that is used to change the menu bar style of the app.
  static void changeMenuBarStyle({required MenuBarModel menuBarStyle}) {
    final menuBarStyles = _menuBarStyles(menuBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(menuBars: menuBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, menuBars: menuBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Menu bar style changed: $menuBarStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationBarStyle] is a function that is used to change the navigation bar style of the app.
  static void changeNavigationBarStyle({required NavigationBarModel navigationBarStyle}) {
    final navigationBarStyles = _navigationBarStyles(navigationBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(navigationBars: navigationBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationBars: navigationBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation bar style changed: $navigationBarStyle", [PackageFeatures.theme]);
  }

  /// [changeNavigationDrawerStyle] is a function that is used to change the navigation drawer style of the app.
  static void changeNavigationDrawerStyle({required NavigationDrawerModel navigationDrawerStyle}) {
    final navigationDrawerStyles = _navigationDrawerStyles(navigationDrawerStyle);
    var newThemeModel = _componentThemesModel?.copyWith(navigationDrawers: navigationDrawerStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, navigationDrawers: navigationDrawerStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Navigation drawer style changed: $navigationDrawerStyle", [PackageFeatures.theme]);
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static void changeProgressIndicatorStyle({required ProgressIndicatorModel progressIndicatorStyle}) {
    final progressIndicatorStyles = _progressIndicatorStyles(progressIndicatorStyle);
    var newThemeModel = _componentThemesModel?.copyWith(progressIndicators: progressIndicatorStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, progressIndicators: progressIndicatorStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Progress indicator style changed: $progressIndicatorStyle", [PackageFeatures.theme]);
  }

  /// [changeSearchBarStyle] is a function that is used to change the search bar style of the app.
  static void changeSearchBarStyle({required SearchBarModel searchBarStyle}) {
    final searchBarStyles = _searchBarStyles(searchBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(searchBars: searchBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, searchBars: searchBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Search bar style changed: $searchBarStyle", [PackageFeatures.theme]);
  }

  /// [changeSearchViewStyle] is a function that is used to change the search view style of the app.
  static void changeSearchViewStyle({required SearchViewModel searchViewStyle}) {
    final searchViewStyles = _searchViewStyles(searchViewStyle);
    var newThemeModel = _componentThemesModel?.copyWith(searchViews: searchViewStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, searchViews: searchViewStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Search view style changed: $searchViewStyle", [PackageFeatures.theme]);
  }

  /// [changeTabBarStyle] is a function that is used to change the tab bar style of the app.
  static void changeTabBarStyle({required TabBarModel tabBarStyle}) {
    final tabBarStyles = _tabBarStyles(tabBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(tabBars: tabBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel.id, tabBars: tabBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Tab bar style changed: $tabBarStyle", [PackageFeatures.theme]);
  }

  /// [saveJsonToFile] is a function that is used to save the json to a file.
  static void saveJsonToFile() {
    // Convert theme model to JSON
    final baseThemeJson = jsonEncode(_baseThemeModel.toJson());
    final componentThemesJson = jsonEncode(_componentThemesModel?.toJson());

    // Create a zip archive
    final archive = Archive()
      ..addFile(ArchiveFile('base_theme.json', baseThemeJson.length, baseThemeJson.codeUnits))
      ..addFile(ArchiveFile('component_themes.json', componentThemesJson.length, componentThemesJson.codeUnits));

    // Convert the archive to a byte list
    final zipBytes = ZipEncoder().encode(archive);
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

  static Map<String, ColorSchemes> _themeColorStringStyles(ColorModel colorModel, bool isDark) {
    final colorStyles = _baseThemeModel.colors;
    colorStyles[styleType] = _themeColorStringSchemes(colorModel, isDark);
    return colorStyles;
  }

  static ColorSchemes _themeColorStringSchemes(ColorModel colorModel, bool isDark) {
    var colorSchemes = _baseThemeModel.colors[styleType]!; // ?? ColorSchemes.defaultSchemes();
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

  static Map<String, TextTypes>? _textStyleStrings(TextType textType, TextStyleSizes textStyle) {
    final textStyles = _baseThemeModel.textStyles ?? {};
    textStyles[styleType] = _textTypes(textType, textStyle);
    return textStyles;
  }

  static TextTypes _textTypes(TextType textType, TextStyleSizes textStyle) {
    var textTypes = _baseThemeModel.textStyles?[styleType] ?? const TextTypes();
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

  static void _changeButtonStyleModel({required ButtonStyleModelType buttonType, required ButtonStyleModel buttonStyle}) {
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
        final elevatedButtonStyle = _componentThemesModel?.elevatedButtons ?? {styleType: buttonStyle};
        elevatedButtonStyle[styleType] = buttonStyle;
        newComponentThemesModel = _componentThemesModel!.copyWith(elevatedButtons: elevatedButtonStyle);
        _themeStore.changeComponentThemesModel(newComponentThemesModel);
        return;
      case ButtonStyleModelType.outlined:
        final outlinedButtonStyle = _outlinedButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(outlinedButtons: outlinedButtonStyle);
        break;
      case ButtonStyleModelType.text:
        final textButtonStyle = _textButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(textButtons: textButtonStyle);
        break;
      case ButtonStyleModelType.icon:
        final iconButtonStyle = _iconButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(iconButtons: iconButtonStyle); // Todo: Fix typo
        break;
      case ButtonStyleModelType.filled:
        final filledButtonStyle = _filledButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(filledButtons: filledButtonStyle);
        break;
      case ButtonStyleModelType.menu:
        final menuButtonStyle = _menuButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(menuButtons: menuButtonStyle);
        break;
      case ButtonStyleModelType.segmented:
        final segmentedButtonStyle = _segmentedButtons(buttonStyle);
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
    final elevatedButtonStyle = _componentThemesModel?.elevatedButtons ?? {styleType: buttonStyle};
    elevatedButtonStyle[styleType] = buttonStyle;
    return elevatedButtonStyle;
  }

  static Map<String, ButtonStyleModel> _filledButtons(ButtonStyleModel buttonStyle) {
    final filledButtonStyle = _componentThemesModel?.filledButtons ?? {styleType: buttonStyle};
    filledButtonStyle[styleType] = buttonStyle;
    return filledButtonStyle;
  }

  static Map<String, ButtonStyleModel> _outlinedButtons(ButtonStyleModel buttonStyle) {
    final outlinedButtonStyle = _componentThemesModel?.outlinedButtons ?? {styleType: buttonStyle};
    outlinedButtonStyle[styleType] = buttonStyle;
    return outlinedButtonStyle;
  }

  static Map<String, ButtonStyleModel> _menuButtons(ButtonStyleModel buttonStyle) {
    final menuButtonStyle = _componentThemesModel?.menuButtons ?? {styleType: buttonStyle};
    menuButtonStyle[styleType] = buttonStyle;
    return menuButtonStyle;
  }

  static Map<String, ButtonStyleModel> _textButtons(ButtonStyleModel buttonStyle) {
    final textButtonStyle = _componentThemesModel?.textButtons ?? {styleType: buttonStyle};
    textButtonStyle[styleType] = buttonStyle;
    return textButtonStyle;
  }

  static Map<String, ToggleButtonModel> _toggleButtons(ToggleButtonModel buttonStyle) {
    final toggleButtonStyle = _componentThemesModel?.toggleButtons ?? {styleType: buttonStyle};
    toggleButtonStyle[styleType] = buttonStyle;
    return toggleButtonStyle;
  }

  static Map<String, ButtonStyleModel> _iconButtons(ButtonStyleModel buttonStyle) {
    final iconButtonStyle = _componentThemesModel?.iconButtons ?? {styleType: buttonStyle};
    iconButtonStyle[styleType] = buttonStyle;
    return iconButtonStyle;
  }

  static Map<String, FloatingActionButtonModel> _floatingActionButton(FloatingActionButtonModel buttonStyle) {
    final floatingActionButtonStyle = _componentThemesModel?.floatingActionButtons ?? {styleType: buttonStyle};
    floatingActionButtonStyle[styleType] = buttonStyle;
    return floatingActionButtonStyle;
  }

  static Map<String, ButtonStyleModel> _segmentedButtons(ButtonStyleModel buttonStyle) {
    final segmentedButtonStyle = _componentThemesModel?.segmentedButtons ?? {styleType: buttonStyle};
    segmentedButtonStyle[styleType] = buttonStyle;
    return segmentedButtonStyle;
  }

  static Map<String, CheckboxModel>? _checkboxes(CheckboxModel checkboxStyle) {
    final checkboxStyles = _componentThemesModel?.checkboxes ?? {styleType: checkboxStyle};
    checkboxStyles[styleType] = checkboxStyle;
    return checkboxStyles;
  }

  static Map<String, RadioModel>? _radios(RadioModel radioStyle) {
    final radioStyles = _componentThemesModel?.radios ?? {styleType: radioStyle};
    radioStyles[styleType] = radioStyle;
    return radioStyles;
  }

  static Map<String, InputDecorationModel>? _inputDecorations(InputDecorationModel inputDecorationStyle) {
    final inputDecorationStyles = _componentThemesModel?.inputDecorations ?? {styleType: inputDecorationStyle};
    inputDecorationStyles[styleType] = inputDecorationStyle;
    return inputDecorationStyles;
  }

  static Map<String, BoxDecorationModel>? _boxDecorations(BoxDecorationModel boxDecorationStyle) {
    final boxDecorationStyles = _componentThemesModel?.boxDecorations ?? {styleType: boxDecorationStyle};
    boxDecorationStyles[styleType] = boxDecorationStyle;
    return boxDecorationStyles;
  }

  static Map<String, CardModel>? _cardStyles(CardModel cardStyle) {
    final cardStyles = _componentThemesModel?.cards ?? {styleType: cardStyle};
    cardStyles[styleType] = cardStyle;
    return cardStyles;
  }

  static Map<String, SnackbarModel>? _snackbarStyles(SnackbarModel snackbarStyle) {
    final snackbarStyles = _componentThemesModel?.snackbars ?? {styleType: snackbarStyle};
    snackbarStyles[styleType] = snackbarStyle;
    return snackbarStyles;
  }

  static Map<String, BadgeModel>? _badgeStyles(BadgeModel badgeStyle) {
    final badgeStyles = _componentThemesModel?.badges ?? {styleType: badgeStyle};
    badgeStyles[styleType] = badgeStyle;
    return badgeStyles;
  }

  static Map<String, BottomAppbarModel>? _bottomAppbarStyles(BottomAppbarModel bottomAppbarStyle) {
    final bottomAppbarStyles = _componentThemesModel?.bottomAppbars ?? {styleType: bottomAppbarStyle};
    bottomAppbarStyles[styleType] = bottomAppbarStyle;
    return bottomAppbarStyles;
  }

  static Map<String, DropdownModel>? _dropdownStyles(DropdownModel dropdownStyle) {
    final dropdownStyles = _componentThemesModel?.dropdowns ?? {styleType: dropdownStyle};
    dropdownStyles[styleType] = dropdownStyle;
    return dropdownStyles;
  }

  static Map<String, ChipModel>? _chipStyles(ChipModel chipStyle) {
    final chipStyles = _componentThemesModel?.chips ?? {styleType: chipStyle};
    chipStyles[styleType] = chipStyle;
    return chipStyles;
  }

  static Map<String, DialogModel>? _dialogStyles(DialogModel dialogStyle) {
    final dialogStyles = _componentThemesModel?.dialogs ?? {styleType: dialogStyle};
    dialogStyles[styleType] = dialogStyle;
    return dialogStyles;
  }

  static Map<String, PopupMenuModel>? _popupMenuStyles(PopupMenuModel popupMenuStyle) {
    final popupMenuStyles = _componentThemesModel?.popupMenus ?? {styleType: popupMenuStyle};
    popupMenuStyles[styleType] = popupMenuStyle;
    return popupMenuStyles;
  }

  static Map<String, SliderModel>? _sliderStyles(SliderModel sliderStyle) {
    final sliderStyles = _componentThemesModel?.sliders ?? {styleType: sliderStyle};
    sliderStyles[styleType] = sliderStyle;
    return sliderStyles;
  }

  static Map<String, ScrollbarModel>? _scrollbarStyles(ScrollbarModel scrollbarStyle) {
    final scrollbarStyles = _componentThemesModel?.scrollbars ?? {styleType: scrollbarStyle};
    scrollbarStyles[styleType] = scrollbarStyle;
    return scrollbarStyles;
  }

  static Map<String, TooltipModel>? _tooltipStyles(TooltipModel tooltipStyle) {
    final tooltipStyles = _componentThemesModel?.tooltips ?? {styleType: tooltipStyle};
    tooltipStyles[styleType] = tooltipStyle;
    return tooltipStyles;
  }

  static Map<String, NavigationRailModel>? _navigationRailStyles(NavigationRailModel navigationRailStyle) {
    final navigationRailStyles = _componentThemesModel?.navigationRails ?? {styleType: navigationRailStyle};
    navigationRailStyles[styleType] = navigationRailStyle;
    return navigationRailStyles;
  }

  static Map<String, SwitchModel>? _switchStyles(SwitchModel switchStyle) {
    final switchStyles = _componentThemesModel?.switches ?? {styleType: switchStyle};
    switchStyles[styleType] = switchStyle;
    return switchStyles;
  }

  static Map<String, DrawerModel>? _drawerStyles(DrawerModel drawerStyle) {
    final drawerStyles = _componentThemesModel?.drawers ?? {styleType: drawerStyle};
    drawerStyles[styleType] = drawerStyle;
    return drawerStyles;
  }

  static Map<String, ListTileModel>? _listTileStyles(ListTileModel listTileStyle) {
    final listTileStyles = _componentThemesModel?.listTiles ?? {styleType: listTileStyle};
    listTileStyles[styleType] = listTileStyle;
    return listTileStyles;
  }

  static Map<String, MenuStyleModel>? _menuStyles(MenuStyleModel menuStyle) {
    final menuStyles = _componentThemesModel?.menus ?? {styleType: menuStyle};
    menuStyles[styleType] = menuStyle;
    return menuStyles;
  }

  static Map<String, MenuBarModel>? _menuBarStyles(MenuBarModel menuBarStyle) {
    final menuBarStyles = _componentThemesModel?.menuBars ?? {styleType: menuBarStyle};
    menuBarStyles[styleType] = menuBarStyle;
    return menuBarStyles;
  }

  static Map<String, NavigationBarModel>? _navigationBarStyles(NavigationBarModel navigationBarStyle) {
    final navigationBarStyles = _componentThemesModel?.navigationBars ?? {styleType: navigationBarStyle};
    navigationBarStyles[styleType] = navigationBarStyle;
    return navigationBarStyles;
  }

  static Map<String, NavigationDrawerModel>? _navigationDrawerStyles(NavigationDrawerModel navigationDrawerStyle) {
    final navigationDrawerStyles = _componentThemesModel?.navigationDrawers ?? {styleType: navigationDrawerStyle};
    navigationDrawerStyles[styleType] = navigationDrawerStyle;
    return navigationDrawerStyles;
  }

  static Map<String, ProgressIndicatorModel>? _progressIndicatorStyles(ProgressIndicatorModel progressIndicatorStyle) {
    final progressIndicatorStyles = _componentThemesModel?.progressIndicators ?? {styleType: progressIndicatorStyle};
    progressIndicatorStyles[styleType] = progressIndicatorStyle;
    return progressIndicatorStyles;
  }

  static Map<String, SearchBarModel>? _searchBarStyles(SearchBarModel searchBarStyle) {
    final searchBarStyles = _componentThemesModel?.searchBars ?? {styleType: searchBarStyle};
    searchBarStyles[styleType] = searchBarStyle;
    return searchBarStyles;
  }

  static Map<String, SearchViewModel>? _searchViewStyles(SearchViewModel searchViewStyle) {
    final searchViewStyles = _componentThemesModel?.searchViews ?? {styleType: searchViewStyle};
    searchViewStyles[styleType] = searchViewStyle;
    return searchViewStyles;
  }

  static Map<String, TabBarModel>? _tabBarStyles(TabBarModel tabBarStyle) {
    final tabBarStyles = _componentThemesModel?.tabBars ?? {styleType: tabBarStyle};
    tabBarStyles[styleType] = tabBarStyle;
    return tabBarStyles;
  }
}
