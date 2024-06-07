import "dart:convert";

import "package:archive/archive.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:forms/presentation/maps/store.dart";
import "package:get_it/get_it.dart";
import "package:mobx/mobx.dart";
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
import "package:theme/data/models/text/text_style_sizes_model.dart";
import "package:theme/data/models/text/text_types_model.dart";
import "package:theme/data/models/theme/theme_model.dart";
import "package:theme/data/models/tooltips/tooltip_model.dart";
import "package:theme/presentation/changer/view.dart";
import "package:theme/presentation/components/colors/view.dart";
import "package:theme/presentation/components/options.dart";
import "package:theme/presentation/components/textStyles/view.dart";
import "package:theme/presentation/panel/base_view.dart";
import "package:theme/utils/loggers.dart";
import "package:universal_html/html.dart" as html;
import "package:utilities/logger/logger.dart";

// TODO: Move to relevant place

/// [ThemeChanger] is a class that is used to change the theme of the app.
class ThemeChanger {
  /// [_themeStore] is a getter that returns the [ThemeStateStore] instance.
  static ThemeStateStore get _themeStore => GetIt.instance.get<ThemeStateStore>();
  static BaseThemeModel? get _baseThemeModel => _themeStore.baseThemeModel;
  static ComponentThemesModel? get _componentThemesModel => _themeStore.componentThemesModel;
  static final String styleType = _themeStore.styleType;

  static Future<void> currentThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeChangerView(),
    );
  }

  /// [changeBaseThemeModel] is a function that is used to change the theme of the app.
  static void changeBaseThemeModel({required BaseThemeModel model}) {
    _themeStore.changeBaseThemeModel(model);
    AppLogger.print("Base Theme changed: $model", [ThemeLoggers.changer]);
  }

  /// [changeComponentThemesModel] is a function that is used to change the theme of the app.
  static void changeComponentThemesModel({
    required ComponentThemesModel model,
  }) {
    _themeStore.changeComponentThemesModel(model);
    AppLogger.print("Component Theme changed: $model", [ThemeLoggers.changer]);
  }

  static void changeCurrentThemeStyle({
    required ColorModel colorModel,
  }) {
    if (_themeStore.isDark) {
      changeDarkThemeStyle(colorModel: colorModel);
      AppLogger.print(
        "Dark theme changed: $colorModel",
        [ThemeLoggers.changer],
      );
    } else {
      changeLightThemeStyle(colorModel: colorModel);
      AppLogger.print(
        "Light theme changed: $colorModel",
        [ThemeLoggers.changer],
      );
    }
  }

  static Future<void> currentColorThemeChanger({
    required BuildContext context,
  }) {
    return showModalBottomSheet(
      barrierColor: Colors.transparent,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => ColorsView(),
    );
  }

  /// [changeLightThemeStyle] is a function that is used to change the light theme of the app.
  static void changeLightThemeStyle({
    required ColorModel colorModel,
  }) {
    final themeColorStringStyles = _themeColorStringStyles(colorModel, false);
    if (themeColorStringStyles == null) return;
    final newThemeModel = _baseThemeModel?.copyWith(colors: themeColorStringStyles);
    if (newThemeModel != null) {
      _themeStore.changeBaseThemeModel(newThemeModel);
      AppLogger.print(
        "Light theme changed: $colorModel",
        [ThemeLoggers.changer],
      );
    }
  }

  /// [changeDarkThemeStyle] is a function that is used to change the dark theme of the app.
  static void changeDarkThemeStyle({
    required ColorModel colorModel,
  }) {
    final themeColorStringStyles = _themeColorStringStyles(colorModel, true);
    if (themeColorStringStyles == null) return;
    final newThemeModel = _baseThemeModel?.copyWith(colors: themeColorStringStyles);
    if (newThemeModel != null) {
      _themeStore.changeBaseThemeModel(newThemeModel);
      AppLogger.print(
        "Dark theme changed: $colorModel",
        [ThemeLoggers.changer],
      );
    }
  }

  static Future<void> currentTextStylesThemeChanger({
    required BuildContext context,
  }) {
    if (_baseThemeModel == null) {
      return Future.value();
    }
    return showModalBottomSheet(
      context: context,
      builder: (context) => TextStyleView(
        onTextTypeChanged: (newTextType) => changeBaseThemeModel(
          model: _baseThemeModel!.copyWith(
            textStyles: {styleType: newTextType},
          ),
        ),
      ),
    );
  }

  /// [changeTextTypeStyle] is a function that is used to change the text style of the app.
  static void changeTextTypeStyle({
    required TextType textType,
    required TextStyleSizesModel textStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeTextTypeStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final textStyles = _textStyleStrings(textType, textStyle);
    final newThemeModel = _baseThemeModel!.copyWith(textStyles: textStyles);
    _themeStore.changeBaseThemeModel(newThemeModel);
    AppLogger.print("Text style changed: $textStyle", [ThemeLoggers.changer]);
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
    final Map<String, dynamic> componentThemeAsMap;
    if (currentComponentTheme != null) {
      componentThemeAsMap = convertComponentThemeToMap(currentComponentTheme);
    } else {
      componentThemeAsMap = convertComponentThemeToMap(convertComponentThemeFromMap({}));
    }

    final mergedMap = defaultComponentTheme != null
        ? {
            ...convertComponentThemeToMap(defaultComponentTheme),
            ...componentThemeAsMap,
          }
        : componentThemeAsMap;

    final formsMapStore = FormsMapStore(
      onValueChanged: (newMap) {
        onUpdateComponentTheme(convertComponentThemeFromMap(newMap));
      },
      value: ObservableMap<String, dynamic>.of(mergedMap),
    );
    return showModalBottomSheet(
      context: context,
      builder: (context) => ThemeComponentEditor(
        title: componentOption.name,
        store: formsMapStore,
        headerBuilder: headerBuilder,
      ),
    );
  }

  /// [changeButtonStyle] is a function that is used to change the button style of the app
  /// T can equal [ButtonModel], [ToggleButtonModel], [FloatingActionButtonModel].
  static void changeButtonStyle<T>({
    required ButtonModelType buttonType,
    required T buttonStyle,
  }) {
    // TODO: Tidy this
    if (T.toString() == "ButtonStyleModel" || T.toString() == "ButtonStyleModel?") {
      _changeButtonStyleModel(
        buttonType: buttonType,
        buttonStyle: buttonStyle as ButtonModel,
      );
    } else if (T.toString() == "ToggleButtonModel" || T.toString() == "ToggleButtonModel?") {
      changeToggleButtonStyle(buttonStyle: buttonStyle as ToggleButtonModel);
    } else if (T.toString() == "FloatingActionButtonModel" || T.toString() == "FloatingActionButtonModel?") {
      changeFloatingActionButtonStyle(
        buttonStyle: buttonStyle as FloatingActionButtonModel,
      );
    }
    AppLogger.print(
      "Button style changed: $buttonStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeToggleButtonStyle] is a function that is used to change the toggle button style of the app.
  static void changeToggleButtonStyle({
    required ToggleButtonModel buttonStyle,
  }) {
    final toggleButtonStyle = _toggleButtons(buttonStyle);
    var newComponentThemesModel = _componentThemesModel?.copyWith(toggleButtons: toggleButtonStyle);
    newComponentThemesModel ??= ComponentThemesModel(
      id: primaryThemeId,
      toggleButtons: toggleButtonStyle,
    );
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print(
      "Toggle button style changed: $buttonStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeFloatingActionButtonStyle] is a function that is used to change the floating action button style of the app.
  static void changeFloatingActionButtonStyle({
    required FloatingActionButtonModel buttonStyle,
  }) {
    final floatingActionButtonStyle = _floatingActionButton(buttonStyle);
    var newComponentThemesModel = _componentThemesModel?.copyWith(
      floatingActionButtons: floatingActionButtonStyle,
    );
    newComponentThemesModel ??= ComponentThemesModel(
      id: primaryThemeId,
      floatingActionButtons: floatingActionButtonStyle,
    );
    _themeStore.changeComponentThemesModel(newComponentThemesModel);
    AppLogger.print(
      "Floating action button style changed: $buttonStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeCheckboxStyle] is a function that is used to change the checkbox style of the app.
  static void changeCheckboxStyle({required CheckboxModel checkboxStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeCheckboxStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final checkboxStyles = _checkboxes(checkboxStyle);
    var newThemeModel = _componentThemesModel?.copyWith(checkboxes: checkboxStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      checkboxes: checkboxStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Checkbox style changed: $checkboxStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeRadioStyle] is a function that is used to change the radio style of the app.
  static void changeRadioStyle({required RadioModel radioStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeRadioStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final radioStyles = _radios(radioStyle);
    var newThemeModel = _componentThemesModel?.copyWith(radios: radioStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, radios: radioStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Radio style changed: $radioStyle", [ThemeLoggers.changer]);
  }

  /// [changeInputDecorationStyle] is a function that is used to change the input decoration style of the app.
  static void changeInputDecorationStyle({
    required InputDecorationModel inputDecorationStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeInputDecorationStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final inputDecorationStyles = _inputDecorations(inputDecorationStyle);
    var newThemeModel = _componentThemesModel?.copyWith(
      inputDecorations: inputDecorationStyles,
    );
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      inputDecorations: inputDecorationStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Input decoration style changed: $inputDecorationStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeBoxDecorationStyle] is a function that is used to change the box decoration style of the app.
  static void changeBoxDecorationStyle({
    required BoxDecorationModel boxDecorationStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeBoxDecorationStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final boxDecorationStyles = _boxDecorations(boxDecorationStyle);
    var newThemeModel = _componentThemesModel?.copyWith(boxDecorations: boxDecorationStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      boxDecorations: boxDecorationStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Box decoration style changed: $boxDecorationStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeCardStyle] is a function that is used to change the card style of the app.
  static void changeCardStyle({required CardModel cardStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeCardStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final cardStyles = _cardStyles(cardStyle);
    var newThemeModel = _componentThemesModel?.copyWith(cards: cardStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, cards: cardStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Card style changed: $cardStyle", [ThemeLoggers.changer]);
  }

  /// [changeSnackbarStyle] is a function that is used to change the snackbar style of the app.
  static void changeSnackbarStyle({required SnackbarModel snackbarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeSnackbarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final snackbarStyles = _snackbarStyles(snackbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(snackbars: snackbarStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      snackbars: snackbarStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Snackbar style changed: $snackbarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeBadgeStyle] is a function that is used to change the badge style of the app.
  static void changeBadgeStyle({required BadgeModel badgeStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeBadgeStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final badgeStyles = _badgeStyles(badgeStyle);
    var newThemeModel = _componentThemesModel?.copyWith(badges: badgeStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, badges: badgeStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Badge style changed: $badgeStyle", [ThemeLoggers.changer]);
  }

  /// [changeAppbarStyle] is a function that is used to change the appbar style of the app.
  static void changeAppbarStyle({required AppbarModel appbarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeAppbarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final appbarStyles = _componentThemesModel?.appbars ?? {styleType: appbarStyle};
    appbarStyles[styleType] = appbarStyle;
    var newThemeModel = _componentThemesModel?.copyWith(appbars: appbarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, appbars: appbarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Appbar style changed: $newThemeModel",
      [ThemeLoggers.changer],
    );
  }

  /// [changeBottomAppbarStyle] is a function that is used to change the bottom appbar style of the app.
  static void changeBottomAppbarStyle({
    required BottomAppbarModel bottomAppbarStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeBottomAppbarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final bottomAppbarStyles = _bottomAppbarStyles(bottomAppbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(bottomAppbars: bottomAppbarStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      bottomAppbars: bottomAppbarStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Bottom appbar style changed: $bottomAppbarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeDropdownStyle] is a function that is used to change the dropdown style of the app.
  static void changeDropdownStyle({required DropdownModel dropdownStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeDropdownStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final dropdownStyles = _dropdownStyles(dropdownStyle);
    var newThemeModel = _componentThemesModel?.copyWith(dropdowns: dropdownStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      dropdowns: dropdownStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Dropdown style changed: $dropdownStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeChipStyle] is a function that is used to change the chip style of the app.
  static void changeChipStyle({required ChipModel chipStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeChipStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final chipStyles = _chipStyles(chipStyle);
    var newThemeModel = _componentThemesModel?.copyWith(chips: chipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, chips: chipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Chip style changed (theme store): ${_themeStore.componentThemesModel?.chips}",
      [ThemeLoggers.changer],
    );
  }

  /// [changeDialogStyle] is a function that is used to change the dialog style of the app.
  static void changeDialogStyle({required DialogModel dialogStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeDialogStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final dialogStyles = _dialogStyles(dialogStyle);
    var newThemeModel = _componentThemesModel?.copyWith(dialogs: dialogStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, dialogs: dialogStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Dialog style changed: $dialogStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static void changePopupMenuStyle({required PopupMenuModel popupMenuStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changePopupMenuStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final popupMenuStyles = _popupMenuStyles(popupMenuStyle);
    var newThemeModel = _componentThemesModel?.copyWith(popupMenus: popupMenuStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      popupMenus: popupMenuStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Popup menu style changed: $popupMenuStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeSliderStyle] is a function that is used to change the slider style of the app.
  static void changeSliderStyle({required SliderModel sliderStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeSliderStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final sliderStyles = _sliderStyles(sliderStyle);
    var newThemeModel = _componentThemesModel?.copyWith(sliders: sliderStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, sliders: sliderStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Slider style changed: $sliderStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeScrollbarStyle] is a function that is used to change the scrollbar style of the app.
  static void changeScrollbarStyle({required ScrollbarModel scrollbarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeScrollbarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final scrollbarStyles = _scrollbarStyles(scrollbarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(scrollbars: scrollbarStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      scrollbars: scrollbarStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Scrollbar style changed: $scrollbarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeTooltipStyle] is a function that is used to change the tooltip style of the app.
  static void changeTooltipStyle({required TooltipModel tooltipStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeTooltipStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final tooltipStyles = _tooltipStyles(tooltipStyle);
    var newThemeModel = _componentThemesModel?.copyWith(tooltips: tooltipStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, tooltips: tooltipStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Tooltip style changed: $tooltipStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeNavigationRailStyle] is a function that is used to change the navigation rail style of the app.
  static void changeNavigationRailStyle({
    required NavigationRailModel navigationRailStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeNavigationRailStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final navigationRailStyles = _navigationRailStyles(navigationRailStyle);
    var newThemeModel = _componentThemesModel?.copyWith(navigationRails: navigationRailStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      navigationRails: navigationRailStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Navigation rail style changed: $navigationRailStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeSwitchStyle({required SwitchModel switchStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeSwitchStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final switchStyles = _switchStyles(switchStyle);
    var newThemeModel = _componentThemesModel?.copyWith(switches: switchStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, switches: switchStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Switch style changed: $switchStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeDrawerStyle({required DrawerModel drawerStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeDrawerStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final drawerStyles = _drawerStyles(drawerStyle);
    var newThemeModel = _componentThemesModel?.copyWith(drawers: drawerStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, drawers: drawerStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Drawer style changed: $drawerStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeListTileStyle({required ListTileModel listTileStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeListTileStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final listTileStyles = _listTileStyles(listTileStyle);
    var newThemeModel = _componentThemesModel?.copyWith(listTiles: listTileStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      listTiles: listTileStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "List tile style changed: $listTileStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeMenuStyle] is a function that is used to change the menu style of the app.
  static void changeMenuStyle({required MenuStyleModel menuStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeMenuStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final menuStyles = _menuStyles(menuStyle);
    var newThemeModel = _componentThemesModel?.copyWith(menus: menuStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, menus: menuStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print("Menu style changed: $menuStyle", [ThemeLoggers.changer]);
  }

  /// [changeMenuBarStyle] is a function that is used to change the menu bar style of the app.
  static void changeMenuBarStyle({required MenuBarModel menuBarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeMenuBarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final menuBarStyles = _menuBarStyles(menuBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(menuBars: menuBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, menuBars: menuBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Menu bar style changed: $menuBarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeNavigationBarStyle] is a function that is used to change the navigation bar style of the app.
  static void changeNavigationBarStyle({
    required NavigationBarModel navigationBarStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeNavigationBarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final navigationBarStyles = _navigationBarStyles(navigationBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(navigationBars: navigationBarStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      navigationBars: navigationBarStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Navigation bar style changed: $navigationBarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeNavigationDrawerStyle] is a function that is used to change the navigation drawer style of the app.
  static void changeNavigationDrawerStyle({
    required NavigationDrawerModel navigationDrawerStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeNavigationDrawerStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final navigationDrawerStyles = _navigationDrawerStyles(navigationDrawerStyle);
    var newThemeModel = _componentThemesModel?.copyWith(
      navigationDrawers: navigationDrawerStyles,
    );
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      navigationDrawers: navigationDrawerStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Navigation drawer style changed: $navigationDrawerStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changePopupMenuStyle] is a function that is used to change the popup menu style of the app.
  static void changeProgressIndicatorStyle({
    required ProgressIndicatorModel progressIndicatorStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeProgressIndicatorStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final progressIndicatorStyles = _progressIndicatorStyles(progressIndicatorStyle);
    var newThemeModel = _componentThemesModel?.copyWith(
      progressIndicators: progressIndicatorStyles,
    );
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      progressIndicators: progressIndicatorStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Progress indicator style changed: $progressIndicatorStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeSearchBarStyle] is a function that is used to change the search bar style of the app.
  static void changeSearchBarStyle({required SearchBarModel searchBarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeSearchBarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final searchBarStyles = _searchBarStyles(searchBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(searchBars: searchBarStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      searchBars: searchBarStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Search bar style changed: $searchBarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeSearchViewStyle] is a function that is used to change the search view style of the app.
  static void changeSearchViewStyle({
    required SearchViewModel searchViewStyle,
  }) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeSearchViewStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final searchViewStyles = _searchViewStyles(searchViewStyle);
    var newThemeModel = _componentThemesModel?.copyWith(searchViews: searchViewStyles);
    newThemeModel ??= ComponentThemesModel(
      id: _baseThemeModel!.id,
      searchViews: searchViewStyles,
    );
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Search view style changed: $searchViewStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [changeTabBarStyle] is a function that is used to change the tab bar style of the app.
  static void changeTabBarStyle({required TabBarModel tabBarStyle}) {
    if (_baseThemeModel == null) {
      AppLogger.print(
        "Base theme model is null in changeTabBarStyle",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    final tabBarStyles = _tabBarStyles(tabBarStyle);
    var newThemeModel = _componentThemesModel?.copyWith(tabBars: tabBarStyles);
    newThemeModel ??= ComponentThemesModel(id: _baseThemeModel!.id, tabBars: tabBarStyles);
    _themeStore.changeComponentThemesModel(newThemeModel);
    AppLogger.print(
      "Tab bar style changed: $tabBarStyle",
      [ThemeLoggers.changer],
    );
  }

  /// [saveJsonToFile] is a function that is used to save the json to a file.
  static void saveJsonToFile() {
    // Convert theme model to JSON
    final baseThemeJson = jsonEncode(_baseThemeModel?.toJson());
    final componentThemesJson = jsonEncode(_componentThemesModel?.toJson());

    // Create a zip archive
    final archive = Archive()
      ..addFile(
        ArchiveFile(
          "base_theme.json",
          baseThemeJson.length,
          baseThemeJson.codeUnits,
        ),
      )
      ..addFile(
        ArchiveFile(
          "component_themes.json",
          componentThemesJson.length,
          componentThemesJson.codeUnits,
        ),
      );

    // Convert the archive to a byte list
    final zipBytes = ZipEncoder().encode(archive);
    if (zipBytes == null) return;

    // Create a Blob from the zip byte list
    final blob = html.Blob([Uint8List.fromList(zipBytes)]);

    // Create download link for the zip file
    final anchor = html.AnchorElement(href: html.Url.createObjectUrlFromBlob(blob))
      ..style.display = "none"
      ..download = "themes.zip";

    // Add the link to the body
    html.document.body?.children.add(anchor);

    // Trigger download
    anchor.click();

    // Clean up
    html.document.body?.children.remove(anchor);
    html.Url.revokeObjectUrl(anchor.href!);
  }

  static void updateThemeInRepository() {
    try {
      _themeStore.repository?.updateTheme(_baseThemeModel!);
      _themeStore.repository?.updateComponentTheme(_componentThemesModel!);
    } catch (e) {
      AppLogger.print(
        "Error updating theme in repository: $e",
        [ThemeLoggers.changer],
        type: LoggerType.error,
      );
    }
  }

  static Map<String, ColorSchemesModel>? _themeColorStringStyles(
    ColorModel colorModel,
    bool isDark,
  ) {
    final colorStyles = _baseThemeModel?.colors;
    colorStyles?[styleType] = _themeColorStringSchemes(colorModel, isDark);
    return colorStyles;
  }

  static ColorSchemesModel _themeColorStringSchemes(
    ColorModel colorModel,
    bool isDark,
  ) {
    var colorSchemes = _baseThemeModel?.colors[styleType] ?? ColorSchemesModel.defaultSchemes();
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

  static Map<String, TextTypesModel>? _textStyleStrings(
    TextType textType,
    TextStyleSizesModel textStyle,
  ) {
    final textStyles = _baseThemeModel?.textStyles ?? {};
    textStyles[styleType] = _textTypes(textType, textStyle);
    return textStyles;
  }

  static TextTypesModel _textTypes(TextType textType, TextStyleSizesModel textStyle) {
    var textTypes = _baseThemeModel?.textStyles?[styleType] ?? const TextTypesModel();
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

  static void _changeButtonStyleModel({
    required ButtonModelType buttonType,
    required ButtonModel buttonStyle,
  }) {
    ComponentThemesModel? newComponentThemesModel;
    if (_componentThemesModel == null) {
      AppLogger.print(
        "Component themes model is null in _changeButtonStyleModel",
        [ThemeLoggers.changer],
        type: LoggerType.warning,
      );
      return;
    }
    switch (buttonType) {
      case ButtonModelType.elevated:
        final elevatedButtonStyle = _elevatedButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(elevatedButtons: elevatedButtonStyle);
        break;
      case ButtonModelType.outlined:
        final outlinedButtonStyle = _outlinedButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(outlinedButtons: outlinedButtonStyle);
        break;
      case ButtonModelType.text:
        final textButtonStyle = _textButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(textButtons: textButtonStyle);
        break;
      case ButtonModelType.icon:
        final iconButtonStyle = _iconButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(iconButtons: iconButtonStyle);
        break;
      case ButtonModelType.filled:
        final filledButtonStyle = _filledButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(filledButtons: filledButtonStyle);
        break;
      case ButtonModelType.menu:
        final menuButtonStyle = _menuButtons(buttonStyle);
        newComponentThemesModel = _componentThemesModel!.copyWith(menuButtons: menuButtonStyle);
        break;
      case ButtonModelType.segmented:
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

  static Map<String, ButtonModel> _elevatedButtons(ButtonModel buttonStyle) {
    final elevatedButtonStyle = _componentThemesModel?.elevatedButtons ?? {styleType: buttonStyle};
    elevatedButtonStyle[styleType] = buttonStyle;
    return elevatedButtonStyle;
  }

  static Map<String, ButtonModel> _filledButtons(ButtonModel buttonStyle) {
    final filledButtonStyle = _componentThemesModel?.filledButtons ?? {styleType: buttonStyle};
    filledButtonStyle[styleType] = buttonStyle;
    return filledButtonStyle;
  }

  static Map<String, ButtonModel> _outlinedButtons(ButtonModel buttonStyle) {
    final outlinedButtonStyle = _componentThemesModel?.outlinedButtons ?? {styleType: buttonStyle};
    outlinedButtonStyle[styleType] = buttonStyle;
    return outlinedButtonStyle;
  }

  static Map<String, ButtonModel> _menuButtons(ButtonModel buttonStyle) {
    final menuButtonStyle = _componentThemesModel?.menuButtons ?? {styleType: buttonStyle};
    menuButtonStyle[styleType] = buttonStyle;
    return menuButtonStyle;
  }

  static Map<String, ButtonModel> _textButtons(ButtonModel buttonStyle) {
    final textButtonStyle = _componentThemesModel?.textButtons ?? {styleType: buttonStyle};
    textButtonStyle[styleType] = buttonStyle;
    return textButtonStyle;
  }

  static Map<String, ToggleButtonModel> _toggleButtons(
    ToggleButtonModel buttonStyle,
  ) {
    final toggleButtonStyle = _componentThemesModel?.toggleButtons ?? {styleType: buttonStyle};
    toggleButtonStyle[styleType] = buttonStyle;
    return toggleButtonStyle;
  }

  static Map<String, ButtonModel> _iconButtons(ButtonModel buttonStyle) {
    final iconButtonStyle = _componentThemesModel?.iconButtons ?? {styleType: buttonStyle};
    iconButtonStyle[styleType] = buttonStyle;
    return iconButtonStyle;
  }

  static Map<String, FloatingActionButtonModel> _floatingActionButton(
    FloatingActionButtonModel buttonStyle,
  ) {
    final floatingActionButtonStyle = _componentThemesModel?.floatingActionButtons ?? {styleType: buttonStyle};
    floatingActionButtonStyle[styleType] = buttonStyle;
    return floatingActionButtonStyle;
  }

  static Map<String, ButtonModel> _segmentedButtons(ButtonModel buttonStyle) {
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

  static Map<String, InputDecorationModel>? _inputDecorations(
    InputDecorationModel inputDecorationStyle,
  ) {
    final inputDecorationStyles = _componentThemesModel?.inputDecorations ?? {styleType: inputDecorationStyle};
    inputDecorationStyles[styleType] = inputDecorationStyle;
    return inputDecorationStyles;
  }

  static Map<String, BoxDecorationModel>? _boxDecorations(
    BoxDecorationModel boxDecorationStyle,
  ) {
    final boxDecorationStyles = _componentThemesModel?.boxDecorations ?? {styleType: boxDecorationStyle};
    boxDecorationStyles[styleType] = boxDecorationStyle;
    return boxDecorationStyles;
  }

  static Map<String, CardModel>? _cardStyles(CardModel cardStyle) {
    final cardStyles = _componentThemesModel?.cards ?? {styleType: cardStyle};
    cardStyles[styleType] = cardStyle;
    return cardStyles;
  }

  static Map<String, SnackbarModel>? _snackbarStyles(
    SnackbarModel snackbarStyle,
  ) {
    final snackbarStyles = _componentThemesModel?.snackbars ?? {styleType: snackbarStyle};
    snackbarStyles[styleType] = snackbarStyle;
    return snackbarStyles;
  }

  static Map<String, BadgeModel>? _badgeStyles(BadgeModel badgeStyle) {
    final badgeStyles = _componentThemesModel?.badges ?? {styleType: badgeStyle};
    badgeStyles[styleType] = badgeStyle;
    return badgeStyles;
  }

  static Map<String, BottomAppbarModel>? _bottomAppbarStyles(
    BottomAppbarModel bottomAppbarStyle,
  ) {
    final bottomAppbarStyles = _componentThemesModel?.bottomAppbars ?? {styleType: bottomAppbarStyle};
    bottomAppbarStyles[styleType] = bottomAppbarStyle;
    return bottomAppbarStyles;
  }

  static Map<String, DropdownModel>? _dropdownStyles(
    DropdownModel dropdownStyle,
  ) {
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

  static Map<String, PopupMenuModel>? _popupMenuStyles(
    PopupMenuModel popupMenuStyle,
  ) {
    final popupMenuStyles = _componentThemesModel?.popupMenus ?? {styleType: popupMenuStyle};
    popupMenuStyles[styleType] = popupMenuStyle;
    return popupMenuStyles;
  }

  static Map<String, SliderModel>? _sliderStyles(SliderModel sliderStyle) {
    final sliderStyles = _componentThemesModel?.sliders ?? {styleType: sliderStyle};
    sliderStyles[styleType] = sliderStyle;
    return sliderStyles;
  }

  static Map<String, ScrollbarModel>? _scrollbarStyles(
    ScrollbarModel scrollbarStyle,
  ) {
    final scrollbarStyles = _componentThemesModel?.scrollbars ?? {styleType: scrollbarStyle};
    scrollbarStyles[styleType] = scrollbarStyle;
    return scrollbarStyles;
  }

  static Map<String, TooltipModel>? _tooltipStyles(TooltipModel tooltipStyle) {
    final tooltipStyles = _componentThemesModel?.tooltips ?? {styleType: tooltipStyle};
    tooltipStyles[styleType] = tooltipStyle;
    return tooltipStyles;
  }

  static Map<String, NavigationRailModel>? _navigationRailStyles(
    NavigationRailModel navigationRailStyle,
  ) {
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

  static Map<String, ListTileModel>? _listTileStyles(
    ListTileModel listTileStyle,
  ) {
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

  static Map<String, NavigationBarModel>? _navigationBarStyles(
    NavigationBarModel navigationBarStyle,
  ) {
    final navigationBarStyles = _componentThemesModel?.navigationBars ?? {styleType: navigationBarStyle};
    navigationBarStyles[styleType] = navigationBarStyle;
    return navigationBarStyles;
  }

  static Map<String, NavigationDrawerModel>? _navigationDrawerStyles(
    NavigationDrawerModel navigationDrawerStyle,
  ) {
    final navigationDrawerStyles = _componentThemesModel?.navigationDrawers ?? {styleType: navigationDrawerStyle};
    navigationDrawerStyles[styleType] = navigationDrawerStyle;
    return navigationDrawerStyles;
  }

  static Map<String, ProgressIndicatorModel>? _progressIndicatorStyles(
    ProgressIndicatorModel progressIndicatorStyle,
  ) {
    final progressIndicatorStyles = _componentThemesModel?.progressIndicators ?? {styleType: progressIndicatorStyle};
    progressIndicatorStyles[styleType] = progressIndicatorStyle;
    return progressIndicatorStyles;
  }

  static Map<String, SearchBarModel>? _searchBarStyles(
    SearchBarModel searchBarStyle,
  ) {
    final searchBarStyles = _componentThemesModel?.searchBars ?? {styleType: searchBarStyle};
    searchBarStyles[styleType] = searchBarStyle;
    return searchBarStyles;
  }

  static Map<String, SearchViewModel>? _searchViewStyles(
    SearchViewModel searchViewStyle,
  ) {
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
