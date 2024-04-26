import 'package:flutter/material.dart';
import 'package:theme/app/app.dart';
import 'package:theme/data/models/appbars/appbar_model.dart';
import 'package:theme/data/models/appbars/bottom_appbar_model.dart';
import 'package:theme/data/models/badges/badge_model.dart';
import 'package:theme/data/models/box_decorations/box_decoration_model.dart';
import 'package:theme/data/models/buttons/button_model.dart';
import 'package:theme/data/models/buttons/floating_action_button_model.dart';
import 'package:theme/data/models/buttons/toggle_button_model.dart';
import 'package:theme/data/models/cards/card_model.dart';
import 'package:theme/data/models/checkboxes/checkbox_model.dart';
import 'package:theme/data/models/chips/chip_model.dart';
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
import 'package:theme/data/models/tooltips/tooltip_model.dart';
import 'package:theme/presentation/changer/changer.dart';

enum ChangerOptions {
  colors,
  textStyles,
  filledButtons,
  elevatedButtons,
  segmentedButtons,
  outlinedButtons,
  textButtons,
  iconButtons,
  menuButtons,
  toggleButtons,
  floatingActionButtons,
  checkboxes,
  radios,
  inputDecorations,
  boxDecorations,
  cards,
  snackbars,
  badges,
  appbars,
  bottomAppbars,
  dropdowns,
  chips,
  dialogs,
  popupMenus,
  sliders,
  scrollbars,
  tooltips,
  navigationRails,
  switches,
  drawers,
  listTiles,
  menuStyles,
  menuBars,
  navigationBars,
  navigationDrawers,
  progressIndicators,
  searchBars,
  searchViews,
  tabBars;

  Icon get icon {
    switch (this) {
      case ChangerOptions.colors:
        return const Icon(Icons.color_lens);
      case ChangerOptions.textStyles:
        return const Icon(Icons.text_fields);
      case ChangerOptions.filledButtons:
      case ChangerOptions.elevatedButtons:
      case ChangerOptions.segmentedButtons:
      case ChangerOptions.outlinedButtons:
      case ChangerOptions.textButtons:
      case ChangerOptions.iconButtons:
      case ChangerOptions.menuButtons:
        return const Icon(Icons.radio_button_checked);
      case ChangerOptions.toggleButtons:
        return const Icon(Icons.toggle_on);
      case ChangerOptions.floatingActionButtons:
        return const Icon(Icons.add);
      case ChangerOptions.checkboxes:
        return const Icon(Icons.check_box);
      case ChangerOptions.radios:
        return const Icon(Icons.radio_button_checked);
      case ChangerOptions.inputDecorations:
        return const Icon(Icons.input);
      case ChangerOptions.boxDecorations:
        return const Icon(Icons.border_all);
      case ChangerOptions.cards:
        return const Icon(Icons.credit_card);
      case ChangerOptions.snackbars:
        return const Icon(Icons.message);
      case ChangerOptions.badges:
        return const Icon(Icons.star);
      case ChangerOptions.appbars:
        return const Icon(Icons.menu);
      case ChangerOptions.bottomAppbars:
        return const Icon(Icons.menu);
      case ChangerOptions.dropdowns:
        return const Icon(Icons.arrow_drop_down);
      case ChangerOptions.chips:
        return const Icon(Icons.label);
      case ChangerOptions.dialogs:
        return const Icon(Icons.message);
      case ChangerOptions.popupMenus:
        return const Icon(Icons.menu);
      case ChangerOptions.sliders:
        return const Icon(Icons.tune);
      case ChangerOptions.scrollbars:
        return const Icon(Icons.tune);
      case ChangerOptions.tooltips:
        return const Icon(Icons.info);
      case ChangerOptions.navigationRails:
        return const Icon(Icons.menu);
      case ChangerOptions.switches:
        return const Icon(Icons.toggle_on);
      case ChangerOptions.drawers:
        return const Icon(Icons.menu);
      case ChangerOptions.listTiles:
        return const Icon(Icons.list);
      case ChangerOptions.menuStyles:
        return const Icon(Icons.menu);
      case ChangerOptions.menuBars:
        return const Icon(Icons.menu);
      case ChangerOptions.navigationBars:
        return const Icon(Icons.menu);
      case ChangerOptions.navigationDrawers:
        return const Icon(Icons.menu);
      case ChangerOptions.progressIndicators:
        return const Icon(Icons.refresh);
      case ChangerOptions.searchBars:
        return const Icon(Icons.search);
      case ChangerOptions.searchViews:
        return const Icon(Icons.search);
      case ChangerOptions.tabBars:
        return const Icon(Icons.tab);
    }
  }

  void Function() navigateTo(BuildContext context) {
    switch (this) {
      case ChangerOptions.colors:
        return () => ThemeChanger.currentColorThemeChanger(context: context);
      case ChangerOptions.textStyles:
        return () => ThemeChanger.currentTextStylesThemeChanger(context: context);
      case ChangerOptions.filledButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.filledButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.filled),
              headerBuilder: (context) => FilledButton(onPressed: () {}, child: const Text("Filled Button")),
              defaultComponentTheme: null,
            );
      case ChangerOptions.elevatedButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.elevatedButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.elevated),
              headerBuilder: (context) => ElevatedButton(onPressed: () {}, child: const Text("Elevated Button")),
              defaultComponentTheme: null,
            );
      case ChangerOptions.segmentedButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.segmentedButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.segmented),
              headerBuilder: (context) => SegmentedButton(
                selected: const {1},
                segments: const [
                  ButtonSegment(label: Text("Segment 1"), value: 1),
                  ButtonSegment(label: Text("Segment 2"), value: 2),
                ],
              ),
              defaultComponentTheme: null,
            );
      case ChangerOptions.outlinedButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.outlinedButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.outlined),
              headerBuilder: (context) => OutlinedButton(onPressed: () {}, child: const Text("Outlined Button")),
              defaultComponentTheme: null,
            );
      case ChangerOptions.textButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.textButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.text),
              headerBuilder: (context) => TextButton(onPressed: () {}, child: const Text("Text Button")),
              defaultComponentTheme: null,
            );
      case ChangerOptions.iconButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.iconButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.icon),
              headerBuilder: (context) => IconButton(icon: const Icon(Icons.star), onPressed: () {}),
              defaultComponentTheme: null,
            );
      case ChangerOptions.menuButtons:
        return () => ThemeChanger.componentThemeChanger<ButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ButtonStyleModel(),
              currentComponentTheme: AppTheme.menuButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeButtonStyle(buttonStyle: newTheme, buttonType: ButtonModelType.menu),
              headerBuilder: (context) => MenuItemButton(onPressed: () {}, child: const Text("Menu Item Button")),
              defaultComponentTheme: ButtonModel(),
            );
      case ChangerOptions.toggleButtons:
        return () => ThemeChanger.componentThemeChanger<ToggleButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ToggleButtonModel.defaultToggleButtonStyle(),
              currentComponentTheme: AppTheme.toggleButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ToggleButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeToggleButtonStyle(buttonStyle: newTheme),
              headerBuilder: (context) => ToggleButtons(
                isSelected: const [true, false],
                children: const [
                  Text("Option 1"),
                  Text("Option 2"),
                ],
              ),
              defaultComponentTheme: null,
            );
      case ChangerOptions.floatingActionButtons:
        return () => ThemeChanger.componentThemeChanger<FloatingActionButtonModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: FloatingActionButtonModel.defaultFloatingActionButtonStyle(),
              currentComponentTheme: AppTheme.floatingActionButtonStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: FloatingActionButtonModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeFloatingActionButtonStyle(buttonStyle: newTheme),
              headerBuilder: (context) => FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
              defaultComponentTheme: null,
            );
      case ChangerOptions.checkboxes:
        return () => ThemeChanger.componentThemeChanger<CheckboxModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: CheckboxModel.defaultCheckboxModel(),
              currentComponentTheme: AppTheme.checkboxStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: CheckboxModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeCheckboxStyle(checkboxStyle: newTheme),
              headerBuilder: (context) => Checkbox(value: true, onChanged: (value) {}),
              defaultComponentTheme: const CheckboxModel(),
            );
      case ChangerOptions.radios:
        return () => ThemeChanger.componentThemeChanger<RadioModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: RadioModel.defaultRadioModel(),
              currentComponentTheme: AppTheme.radioStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: RadioModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeRadioStyle(radioStyle: newTheme),
              headerBuilder: (context) => Radio(groupValue: true, value: true, onChanged: (value) {}),
              defaultComponentTheme: null,
            );
      case ChangerOptions.inputDecorations:
        return () => ThemeChanger.componentThemeChanger<InputDecorationModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: InputDecorationModel.defaultInputDecorationModel(),
              currentComponentTheme: AppTheme.inputDecorationStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: InputDecorationModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeInputDecorationStyle(inputDecorationStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.boxDecorations:
        return () => ThemeChanger.componentThemeChanger<BoxDecorationModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: BoxDecorationModel.defaultBoxDecorationModel(),
              currentComponentTheme: AppTheme.boxDecorationStyle(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: BoxDecorationModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeBoxDecorationStyle(boxDecorationStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.cards:
        return () => ThemeChanger.componentThemeChanger<CardModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: CardModel.defaultCardModel(),
              currentComponentTheme: AppTheme.cardStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: CardModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeCardStyle(cardStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.snackbars:
        return () => ThemeChanger.componentThemeChanger<SnackbarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: SnackbarModel.defaultSnackbarModel(),
              currentComponentTheme: AppTheme.snackbarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: SnackbarModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeSnackbarStyle(snackbarStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.badges:
        return () => ThemeChanger.componentThemeChanger<BadgeModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: BadgeModel.defaultBadgeModel(),
              currentComponentTheme: AppTheme.badgeStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: BadgeModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeBadgeStyle(badgeStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.appbars:
        return () => ThemeChanger.componentThemeChanger<AppbarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: AppbarModel.defaultAppbarModel(),
              currentComponentTheme: AppTheme.appbarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: AppbarModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeAppbarStyle(appbarStyle: newTheme),
              defaultComponentTheme: null,
              headerBuilder: (context) => AppBar(title: const Text("Appbar Styles")),
            );
      case ChangerOptions.bottomAppbars:
        return () => ThemeChanger.componentThemeChanger<BottomAppbarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: BottomAppbarModel.defaultBottomAppbarModel(),
              currentComponentTheme: AppTheme.bottomAppbarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: BottomAppbarModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeBottomAppbarStyle(bottomAppbarStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.dropdowns:
        return () => ThemeChanger.componentThemeChanger<DropdownModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: DropdownModel.defaultDropdownModel(),
              currentComponentTheme: AppTheme.dropdownStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: DropdownModel.fromJson,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeDropdownStyle(dropdownStyle: newTheme),
              defaultComponentTheme: null,
            );
      case ChangerOptions.chips:
        return () => ThemeChanger.componentThemeChanger<ChipModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ChipModel.defaultChipModel(),
              currentComponentTheme: AppTheme.chipStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ChipModel.fromJson,
              onUpdateComponentTheme: (newTheme) {
                ThemeChanger.changeChipStyle(chipStyle: newTheme);
              },
              defaultComponentTheme: null,
              headerBuilder: (context) => Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilterChip(label: const Text("FILTER"), onSelected: (_) {}),
                      const ChoiceChip(label: Text("TRUE"), selected: true),
                      const ChoiceChip(label: Text("FALSE"), selected: false),
                      const ActionChip(label: Text("ACTION")),
                    ],
                  ),
                ),
              ),
            );
      case ChangerOptions.dialogs:
        return () => ThemeChanger.componentThemeChanger<DialogModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: DialogModel.defaultDialogModel(),
              currentComponentTheme: AppTheme.dialogStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: DialogModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeDialogStyle(dialogStyle: newTheme),
            );
      case ChangerOptions.popupMenus:
        return () => ThemeChanger.componentThemeChanger<PopupMenuModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: PopupMenuModel.defaultPopupMenuModel(),
              currentComponentTheme: AppTheme.popupMenuStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: PopupMenuModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changePopupMenuStyle(popupMenuStyle: newTheme),
            );
      case ChangerOptions.sliders:
        return () => ThemeChanger.componentThemeChanger<SliderModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: SliderModel.defaultSliderModel(),
              currentComponentTheme: AppTheme.sliderStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: SliderModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeSliderStyle(sliderStyle: newTheme),
            );
      case ChangerOptions.scrollbars:
        return () => ThemeChanger.componentThemeChanger<ScrollbarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ScrollbarModel.defaultScrollbarModel(),
              currentComponentTheme: AppTheme.scrollbarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ScrollbarModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeScrollbarStyle(scrollbarStyle: newTheme),
            );
      case ChangerOptions.tooltips:
        return () => ThemeChanger.componentThemeChanger<TooltipModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: TooltipModel.defaultTooltipModel(),
              currentComponentTheme: AppTheme.tooltipStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: TooltipModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeTooltipStyle(tooltipStyle: newTheme),
            );
      case ChangerOptions.navigationRails:
        return () => ThemeChanger.componentThemeChanger<NavigationRailModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: NavigationRailModel.defaultNavigationRailModel(),
              currentComponentTheme: AppTheme.navigationRailStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: NavigationRailModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeNavigationRailStyle(navigationRailStyle: newTheme),
            );
      case ChangerOptions.switches:
        return () => ThemeChanger.componentThemeChanger<SwitchModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: SwitchModel.defaultSwitchModel(),
              currentComponentTheme: AppTheme.switchStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: SwitchModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeSwitchStyle(switchStyle: newTheme),
            );
      case ChangerOptions.drawers:
        return () => ThemeChanger.componentThemeChanger<DrawerModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: DrawerModel.defaultDrawerModel(),
              currentComponentTheme: AppTheme.drawerStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: DrawerModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeDrawerStyle(drawerStyle: newTheme),
            );
      case ChangerOptions.listTiles:
        return () => ThemeChanger.componentThemeChanger<ListTileModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ListTileModel.defaultListTileModel(),
              currentComponentTheme: AppTheme.listTileStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ListTileModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeListTileStyle(listTileStyle: newTheme),
            );
      case ChangerOptions.menuStyles:
        return () => ThemeChanger.componentThemeChanger<MenuStyleModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: MenuModel.defaultMenuModel(),
              currentComponentTheme: AppTheme.menuStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: MenuStyleModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeMenuStyle(menuStyle: newTheme),
            );
      case ChangerOptions.menuBars:
        return () => ThemeChanger.componentThemeChanger<MenuBarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: MenuBarModel.defaultMenuBarModel(),
              currentComponentTheme: AppTheme.menuBarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: MenuBarModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeMenuBarStyle(menuBarStyle: newTheme),
            );
      case ChangerOptions.navigationBars:
        return () => ThemeChanger.componentThemeChanger<NavigationBarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: NavigationBarModel.defaultNavigationBarModel(),
              currentComponentTheme: AppTheme.navigationBarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: NavigationBarModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeNavigationBarStyle(navigationBarStyle: newTheme),
            );
      case ChangerOptions.navigationDrawers:
        return () => ThemeChanger.componentThemeChanger<NavigationDrawerModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: NavigationDrawerModel.defaultNavigationDrawerModel(),
              currentComponentTheme: AppTheme.navigationDrawerStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: NavigationDrawerModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeNavigationDrawerStyle(navigationDrawerStyle: newTheme),
            );
      case ChangerOptions.progressIndicators:
        return () => ThemeChanger.componentThemeChanger<ProgressIndicatorModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: ProgressIndicatorModel.defaultProgressIndicatorModel(),
              currentComponentTheme: AppTheme.progressIndicatorStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: ProgressIndicatorModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeProgressIndicatorStyle(progressIndicatorStyle: newTheme),
            );
      case ChangerOptions.searchBars:
        return () => ThemeChanger.componentThemeChanger<SearchBarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: SearchBarModel.defaultSearchBarModel(),
              currentComponentTheme: AppTheme.searchBarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: SearchBarModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeSearchBarStyle(searchBarStyle: newTheme),
            );
      case ChangerOptions.searchViews:
        return () => ThemeChanger.componentThemeChanger<SearchViewModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: SearchViewModel.defaultSearchViewModel(),
              currentComponentTheme: AppTheme.searchViewStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: SearchViewModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeSearchViewStyle(searchViewStyle: newTheme),
            );
      case ChangerOptions.tabBars:
        return () => ThemeChanger.componentThemeChanger<TabBarModel>(
              componentOption: this,
              context: context,
              // defaultComponentTheme: TabBarModel.defaultTabBarModel(),
              currentComponentTheme: AppTheme.tabBarStyles(),
              convertComponentThemeToMap: (data) => data.toJson(),
              convertComponentThemeFromMap: TabBarModel.fromJson,
              defaultComponentTheme: null,
              onUpdateComponentTheme: (newTheme) => ThemeChanger.changeTabBarStyle(tabBarStyle: newTheme),
            );
    }
  }
}
