import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
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
import "package:theme/data/models/tooltips/tooltip_model.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/helpers/type_comparison.dart";
import "package:utilities/logger/logger.dart";

part "theme_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.camelCase)
class BaseThemeModel with BaseThemeModelMappable {
  final String id;
  final String? name;
  final Map<String, ColorSchemesModel> colors;
  final Map<String, TextTypesModel>? textStyles;

  const BaseThemeModel({
    required this.id,
    this.name,
    required this.colors,
    this.textStyles,
  });

  static const fromMap = BaseThemeModelMapper.fromMap;
  static const fromJson = BaseThemeModelMapper.fromJson;
}

@MappableClass(ignoreNull: false)
class ComponentThemesModel with ComponentThemesModelMappable {
  final String id;
  final String? name;
  final Map<String, ButtonModel>? elevatedButtons;
  final Map<String, ButtonModel>? filledButtons;
  final Map<String, ButtonModel>? outlinedButtons;
  final Map<String, ButtonModel>? textButtons;
  final Map<String, ToggleButtonModel>? toggleButtons;
  final Map<String, ButtonModel>? iconButtons;
  final Map<String, FloatingActionButtonModel>? floatingActionButtons;
  final Map<String, ButtonModel>? menuButtons;
  final Map<String, ButtonModel>? segmentedButtons;
  final Map<String, InputDecorationModel>? inputDecorations;
  final Map<String, BoxDecorationModel>? boxDecorations;
  final Map<String, CardModel>? cards;
  final Map<String, SnackbarModel>? snackbars;
  final Map<String, BadgeModel>? badges;
  final Map<String, AppbarModel>? appbars;
  final Map<String, BottomAppbarModel>? bottomAppbars;
  final Map<String, DropdownModel>? dropdowns;
  final Map<String, ChipModel>? chips;
  final Map<String, DialogModel>? dialogs;
  final Map<String, PopupMenuModel>? popupMenus;
  final Map<String, SliderModel>? sliders;
  final Map<String, ScrollbarModel>? scrollbars;
  final Map<String, TooltipModel>? tooltips;
  final Map<String, NavigationRailModel>? navigationRails;
  final Map<String, CheckboxModel>? checkboxes;
  final Map<String, RadioModel>? radios;
  final Map<String, SwitchModel>? switches;
  final Map<String, DrawerModel>? drawers;
  final Map<String, ListTileModel>? listTiles;
  final Map<String, MenuStyleModel>? menus;
  final Map<String, MenuBarModel>? menuBars;
  final Map<String, NavigationBarModel>? navigationBars;
  final Map<String, NavigationDrawerModel>? navigationDrawers;
  final Map<String, ProgressIndicatorModel>? progressIndicators;
  final Map<String, SearchBarModel>? searchBars;
  final Map<String, SearchViewModel>? searchViews;
  final Map<String, TabBarModel>? tabBars;

  const ComponentThemesModel({
    required this.id,
    this.name,
    this.elevatedButtons = const {primaryStyle: ButtonModel.empty},
    this.filledButtons = const {primaryStyle: ButtonModel.empty},
    this.outlinedButtons = const {primaryStyle: ButtonModel.empty},
    this.textButtons = const {primaryStyle: ButtonModel.empty},
    this.toggleButtons = const {primaryStyle: ToggleButtonModel()},
    this.iconButtons = const {primaryStyle: ButtonModel.empty},
    this.floatingActionButtons = const {primaryStyle: FloatingActionButtonModel()},
    this.menuButtons = const {primaryStyle: ButtonModel.empty},
    this.segmentedButtons = const {primaryStyle: ButtonModel.empty},
    this.inputDecorations = const {primaryStyle: InputDecorationModel()},
    this.boxDecorations = const {primaryStyle: BoxDecorationModel()},
    this.cards = const {primaryStyle: CardModel()},
    this.snackbars = const {primaryStyle: SnackbarModel()},
    this.badges = const {primaryStyle: BadgeModel()},
    this.appbars = const {primaryStyle: AppbarModel()},
    this.bottomAppbars = const {primaryStyle: BottomAppbarModel()},
    this.dropdowns = const {primaryStyle: DropdownModel()},
    this.chips = const {primaryStyle: ChipModel()},
    this.dialogs = const {primaryStyle: DialogModel()},
    this.popupMenus = const {primaryStyle: PopupMenuModel()},
    this.sliders = const {primaryStyle: SliderModel()},
    this.scrollbars = const {primaryStyle: ScrollbarModel()},
    this.tooltips = const {primaryStyle: TooltipModel()},
    this.navigationRails = const {primaryStyle: NavigationRailModel()},
    this.checkboxes = const {primaryStyle: CheckboxModel()},
    this.radios = const {primaryStyle: RadioModel()},
    this.switches = const {primaryStyle: SwitchModel()},
    this.drawers = const {primaryStyle: DrawerModel()},
    this.listTiles = const {primaryStyle: ListTileModel()},
    this.menus = const {primaryStyle: MenuStyleModel()},
    this.menuBars = const {primaryStyle: MenuBarModel()},
    this.navigationBars = const {primaryStyle: NavigationBarModel()},
    this.navigationDrawers = const {primaryStyle: NavigationDrawerModel()},
    this.progressIndicators = const {primaryStyle: ProgressIndicatorModel()},
    this.searchBars = const {primaryStyle: SearchBarModel()},
    this.searchViews = const {primaryStyle: SearchViewModel()},
    this.tabBars = const {primaryStyle: TabBarModel()},
  });

  static const fromMap = ComponentThemesModelMapper.fromMap;
  static const fromJson = ComponentThemesModelMapper.fromJson;

  T? getComponentThemeFromStyleType<T>(String styleType) {
    if (isSameType<T, ThemeData>()) {
      return ThemeData(
        elevatedButtonTheme: elevatedButtons?[styleType]?.toElevatedButtonThemeData(),
        outlinedButtonTheme: outlinedButtons?[styleType]?.toOutlinedButtonThemeData(),
        textButtonTheme: textButtons?[styleType]?.toTextButtonThemeData(),
        iconButtonTheme: iconButtons?[styleType]?.toIconButtonThemeData(),
        filledButtonTheme: filledButtons?[styleType]?.toFilledButtonThemeData(),
        menuButtonTheme: menuButtons?[styleType]?.toMenuButtonThemeData(),
        segmentedButtonTheme: segmentedButtons?[styleType]?.toSegmentedButtonThemeData(),
        toggleButtonsTheme: toggleButtons?[styleType]?.asToggleButtonThemeData(),
        floatingActionButtonTheme: floatingActionButtons?[styleType]?.asFloatingActionButtonThemeData(),
      ) as T;
    } else if (isSameType<T, InputDecorationTheme>()) {
      return inputDecorations?[styleType]?.asInputDecorationTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, BoxDecoration>()) {
      return boxDecorations?[styleType]?.asBoxDecoration(styleTypeName: styleType) as T;
    } else if (isSameType<T, CardTheme>()) {
      return cards?[styleType]?.asCardTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, SnackBarThemeData>()) {
      return snackbars?[styleType]?.asSnackBarThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, BadgeThemeData>()) {
      return badges?[styleType]?.asBadgeThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, AppBarTheme>()) {
      return appbars?[styleType]?.asAppBarTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, BottomAppBarTheme>()) {
      return bottomAppbars?[styleType]?.asBottomAppBarTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, DropdownMenuThemeData>()) {
      return dropdowns?[styleType]?.asDropdownMenuThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, ChipThemeData>()) {
      final chipTheme = chips?[styleType]?.asChipThemeData(styleTypeName: styleType) as T;
      AppLogger.print("Getting chip theme: $chipTheme", [ThemeLoggers.chips]);
      return chipTheme;
    } else if (isSameType<T, DialogTheme>()) {
      return dialogs?[styleType]?.asDialogTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, PopupMenuThemeData>()) {
      return popupMenus?[styleType]?.asPopupMenuThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, SliderThemeData>()) {
      return sliders?[styleType]?.asSliderThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, ScrollbarThemeData>()) {
      return scrollbars?[styleType]?.asScrollbarThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, TooltipThemeData>()) {
      return tooltips?[styleType]?.asTooltipThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, TooltipThemeData>()) {
      return tooltips?[styleType]?.asTooltipThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, NavigationRailThemeData>()) {
      return navigationRails?[styleType]?.asNavigationRailThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, CheckboxThemeData>()) {
      return checkboxes?[styleType]?.asCheckboxThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, RadioThemeData>()) {
      return radios?[styleType]?.asRadioThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, SwitchThemeData>()) {
      return switches?[styleType]?.asSwitchThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, DrawerThemeData>()) {
      return drawers?[styleType]?.asDrawerThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, ListTileThemeData>()) {
      return listTiles?[styleType]?.asListTileThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, MenuStyle>()) {
      return menus?[styleType]?.asMenuStyle(styleTypeName: styleType) as T;
    } else if (isSameType<T, MenuBarThemeData>()) {
      return menuBars?[styleType]?.asMenuBarThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, NavigationBarThemeData>()) {
      return navigationBars?[styleType]?.asNavigationBarThemeData(styleTypeName: styleType) as T;
    } else {
      return null;
    }
  }
}
