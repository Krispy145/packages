import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
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
import "package:theme/data/models/colors/color_schemes.dart";
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
import "package:theme/data/models/text/text_types.dart";
import "package:theme/data/models/tooltips/tooltip_model.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/helpers/type_comparison.dart";
import "package:utilities/logger/logger.dart";

part "theme.freezed.dart";
part "theme.g.dart";

/// [ComponentThemesModel] is a wrapper for [ColorSchemes] and [TextTypes] that allows you to use [ColorSchemes] and [TextTypes] to
/// create a ThemeData object.

@unfreezed
abstract class ComponentThemesModel with _$ComponentThemesModel {
  /// [ComponentThemesModel] constructor
  factory ComponentThemesModel({
    required final String id,
    String? name,
    Map<String, ButtonModel>? elevatedButtons,
    Map<String, ButtonModel>? filledButtons,
    Map<String, ButtonModel>? outlinedButtons,
    Map<String, ButtonModel>? textButtons,
    Map<String, ToggleButtonModel>? toggleButtons,
    Map<String, ButtonModel>? iconButtons,
    Map<String, FloatingActionButtonModel>? floatingActionButtons,
    Map<String, ButtonModel>? menuButtons,
    Map<String, ButtonModel>? segmentedButtons,
    Map<String, InputDecorationModel>? inputDecorations,
    Map<String, BoxDecorationModel>? boxDecorations,
    Map<String, CardModel>? cards,
    Map<String, SnackbarModel>? snackbars,
    Map<String, BadgeModel>? badges,
    Map<String, AppbarModel>? appbars,
    Map<String, BottomAppbarModel>? bottomAppbars,
    Map<String, DropdownModel>? dropdowns,
    Map<String, ChipModel>? chips,
    Map<String, DialogModel>? dialogs,
    Map<String, PopupMenuModel>? popupMenus,
    Map<String, SliderModel>? sliders,
    Map<String, ScrollbarModel>? scrollbars,
    Map<String, TooltipModel>? tooltips,
    Map<String, NavigationRailModel>? navigationRails,
    Map<String, CheckboxModel>? checkboxes,
    Map<String, RadioModel>? radios,
    Map<String, SwitchModel>? switches,
    Map<String, DrawerModel>? drawers,
    Map<String, ListTileModel>? listTiles,
    Map<String, MenuStyleModel>? menus,
    Map<String, MenuBarModel>? menuBars,
    Map<String, NavigationBarModel>? navigationBars,
    Map<String, NavigationDrawerModel>? navigationDrawers,
    Map<String, ProgressIndicatorModel>? progressIndicators,
    Map<String, SearchBarModel>? searchBars,
    Map<String, SearchViewModel>? searchViews,
    Map<String, TabBarModel>? tabBars,
  }) = _ComponentThemesModel;
  ComponentThemesModel._();

  T? getComponentThemeFromStyleType<T>(String styleType) {
    print("Made it here");
    if (isSameType<T, ThemeData>()) {
      return ThemeData(
        elevatedButtonTheme:
            elevatedButtons?[styleType]?.toElevatedButtonThemeData(),
        outlinedButtonTheme:
            outlinedButtons?[styleType]?.toOutlinedButtonThemeData(),
        textButtonTheme: textButtons?[styleType]?.toTextButtonThemeData(),
        iconButtonTheme: iconButtons?[styleType]?.toIconButtonThemeData(),
        filledButtonTheme: filledButtons?[styleType]?.toFilledButtonThemeData(),
        menuButtonTheme: menuButtons?[styleType]?.toMenuButtonThemeData(),
        segmentedButtonTheme:
            segmentedButtons?[styleType]?.toSegmentedButtonThemeData(),
        toggleButtonsTheme:
            toggleButtons?[styleType]?.asToggleButtonThemeData(),
        floatingActionButtonTheme: floatingActionButtons?[styleType]
            ?.asFloatingActionButtonThemeData(),
      ) as T;
    } else if (isSameType<T, InputDecorationTheme>()) {
      return inputDecorations?[styleType]
          ?.asInputDecorationTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, BoxDecoration>()) {
      return boxDecorations?[styleType]
          ?.asBoxDecoration(styleTypeName: styleType) as T;
    } else if (isSameType<T, CardTheme>()) {
      return cards?[styleType]?.asCardTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, SnackBarThemeData>()) {
      return snackbars?[styleType]
          ?.asSnackBarThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, BadgeThemeData>()) {
      return badges?[styleType]?.asBadgeThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, AppBarTheme>()) {
      return appbars?[styleType]?.asAppBarTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, BottomAppBarTheme>()) {
      return bottomAppbars?[styleType]
          ?.asBottomAppBarTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, DropdownMenuThemeData>()) {
      return dropdowns?[styleType]
          ?.asDropdownMenuThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, ChipThemeData>()) {
      final chipTheme =
          chips?[styleType]?.asChipThemeData(styleTypeName: styleType) as T;
      AppLogger.print("Getting chip theme: $chipTheme", [ThemeLoggers.chips]);
      return chipTheme;
    } else if (isSameType<T, DialogTheme>()) {
      return dialogs?[styleType]?.asDialogTheme(styleTypeName: styleType) as T;
    } else if (isSameType<T, PopupMenuThemeData>()) {
      return popupMenus?[styleType]
          ?.asPopupMenuThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, SliderThemeData>()) {
      return sliders?[styleType]?.asSliderThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, ScrollbarThemeData>()) {
      return scrollbars?[styleType]
          ?.asScrollbarThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, TooltipThemeData>()) {
      return tooltips?[styleType]?.asTooltipThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, TooltipThemeData>()) {
      return tooltips?[styleType]?.asTooltipThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, NavigationRailThemeData>()) {
      return navigationRails?[styleType]
          ?.asNavigationRailThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, CheckboxThemeData>()) {
      return checkboxes?[styleType]
          ?.asCheckboxThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, RadioThemeData>()) {
      return radios?[styleType]?.asRadioThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, SwitchThemeData>()) {
      return switches?[styleType]?.asSwitchThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, DrawerThemeData>()) {
      return drawers?[styleType]?.asDrawerThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, ListTileThemeData>()) {
      return listTiles?[styleType]
          ?.asListTileThemeData(styleTypeName: styleType) as T;
    } else if (isSameType<T, MenuStyle>()) {
      return menus?[styleType]?.asMenuStyle(styleTypeName: styleType) as T;
    } else if (isSameType<T, MenuBarThemeData>()) {
      return menuBars?[styleType]?.asMenuBarThemeData(styleTypeName: styleType)
          as T;
    } else if (isSameType<T, NavigationBarThemeData>()) {
      return navigationBars?[styleType]
          ?.asNavigationBarThemeData(styleTypeName: styleType) as T;
    } else {
      return null;
    }
  }

  /// [ComponentThemesModel.fromJson] is a factory method that allows you to create a [ComponentThemesModel] from a JSON file.
  factory ComponentThemesModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentThemesModelFromJson(json);
}

@unfreezed
abstract class BaseThemeModel with _$BaseThemeModel {
  /// [BaseThemeModel] constructor
  factory BaseThemeModel({
    required final String id,
    String? name,
    required Map<String, ColorSchemes> colors,
    Map<String, TextTypes>? textStyles,
  }) = _BaseThemeModel;
  BaseThemeModel._();

  /// [BaseThemeModel.fromJson] is a factory method that allows you to create a [BaseThemeModel] from a JSON file.
  factory BaseThemeModel.fromJson(Map<String, dynamic> json) =>
      _$BaseThemeModelFromJson(json);
}
