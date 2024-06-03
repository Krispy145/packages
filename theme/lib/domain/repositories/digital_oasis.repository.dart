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
import "package:theme/data/models/text/text_style_model.dart";
import "package:theme/data/models/theme/theme_model.dart";
import "package:theme/data/models/tooltips/tooltip_model.dart";
import "package:theme/data/sources/digital_oasis/_source.dart";

import "/data/repositories/_repositories.dart";
import "base.repository.dart";

/// [DORepository] extends the [BaseThemeRepository] class used for fetching Themes data from Digital Oasis database
/// Currently retrieving data from `Supabase`
class DORepository extends BaseThemeRepository {
  /// [baseThemeDataSource] is the [DODataSource] that will be used to fetch the [BaseThemeModel] data.
  final DODataSource<BaseThemeModel> baseThemeDataSource = DataRepositories.instance.digitalOasis.baseThemesDataSource;

  /// [componentsThemesDataSource] is the [DODataSource] that will be used to fetch the [ComponentThemesModel] data.
  final DODataSource<ComponentThemesModel?> componentsThemesDataSource = DataRepositories.instance.digitalOasis.componentsThemesDataSource;

  /// [colorsDataSource] is the [DODataSource] that will be used to fetch the [ColorModel] data.
  final DODataSource<ColorModel> colorsDataSource = DataRepositories.instance.digitalOasis.colorsDataSource;

  /// [textStylesDataSource] is the [DODataSource] that will be used to fetch the [TextStyleModel] data.
  final DODataSource<TextStyleModel> textStylesDataSource = DataRepositories.instance.digitalOasis.textStylesDataSource;

  /// [buttonsDataSource] is the [DODataSource] that will be used to fetch the [ButtonModel] data.
  final DODataSource<ButtonModel?> buttonsDataSource = DataRepositories.instance.digitalOasis.buttonsDataSource;

  /// [floatingActionButtonsDataSource] is the [DODataSource] that will be used to fetch the [FloatingActionButtonModel] data.
  final DODataSource<FloatingActionButtonModel?> floatingActionButtonsDataSource = DataRepositories.instance.digitalOasis.floatingActionButtonsDataSource;

  /// [toggleButtonsDataSource] is the [DODataSource] that will be used to fetch the [ToggleButtonModel] data.
  final DODataSource<ToggleButtonModel?> toggleButtonsDataSource = DataRepositories.instance.digitalOasis.toggleButtonsDataSource;

  /// [inputDecorationsDataSource] is the [DODataSource] that will be used to fetch the [InputDecorationModel] data.
  final DODataSource<InputDecorationModel?> inputDecorationsDataSource = DataRepositories.instance.digitalOasis.inputDecorationsDataSource;

  /// [boxDecorationsDataSource] is the [DODataSource] that will be used to fetch the [BoxDecorationModel] data.
  final DODataSource<BoxDecorationModel?> boxDecorationsDataSource = DataRepositories.instance.digitalOasis.boxDecorationsDataSource;

  /// [cardsDataSource] is the [DODataSource] that will be used to fetch the [CardModel] data.
  final DODataSource<CardModel?> cardsDataSource = DataRepositories.instance.digitalOasis.cardsDataSource;

  /// [snackbarsDataSource] is the [DODataSource] that will be used to fetch the [SnackbarModel] data.
  final DODataSource<SnackbarModel?> snackbarsDataSource = DataRepositories.instance.digitalOasis.snackbarsDataSource;

  /// [badgesDataSource] is the [DODataSource] that will be used to fetch the [BadgeModel] data.
  final DODataSource<BadgeModel?> badgesDataSource = DataRepositories.instance.digitalOasis.badgesDataSource;

  /// [appbarsDataSource] is the [DODataSource] that will be used to fetch the [AppbarModel] data.
  final DODataSource<AppbarModel?> appbarsDataSource = DataRepositories.instance.digitalOasis.appbarsDataSource;

  /// [bottomAppbarsDataSource] is the [DODataSource] that will be used to fetch the [BottomAppbarModel] data.
  final DODataSource<BottomAppbarModel?> bottomAppbarsDataSource = DataRepositories.instance.digitalOasis.bottomAppbarsDataSource;

  /// [dropdownsDataSource] is the [DODataSource] that will be used to fetch the [DropdownModel] data.
  final DODataSource<DropdownModel?> dropdownsDataSource = DataRepositories.instance.digitalOasis.dropdownsDataSource;

  /// [chipsDataSource] is the [DODataSource] that will be used to fetch the [ChipModel] data.
  final DODataSource<ChipModel?> chipsDataSource = DataRepositories.instance.digitalOasis.chipsDataSource;

  /// [dialogsDataSource] is the [DODataSource] that will be used to fetch the [DialogModel] data.
  final DODataSource<DialogModel?> dialogsDataSource = DataRepositories.instance.digitalOasis.dialogsDataSource;

  /// [popupMenusDataSource] is the [DODataSource] that will be used to fetch the [PopupMenuModel] data.
  final DODataSource<PopupMenuModel?> popupMenusDataSource = DataRepositories.instance.digitalOasis.popupMenusDataSource;

  /// [slidersDataSource] is the [DODataSource] that will be used to fetch the [SliderModel] data.
  final DODataSource<SliderModel?> slidersDataSource = DataRepositories.instance.digitalOasis.slidersDataSource;

  /// [scrollbarsDataSource] is the [DODataSource] that will be used to fetch the [ScrollbarModel] data.
  final DODataSource<ScrollbarModel?> scrollbarsDataSource = DataRepositories.instance.digitalOasis.scrollbarsDataSource;

  /// [tooltipsDataSource] is the [DODataSource] that will be used to fetch the [TooltipModel] data.
  final DODataSource<TooltipModel?> tooltipsDataSource = DataRepositories.instance.digitalOasis.tooltipsDataSource;

  /// [navigationRailsDataSource] is the [DODataSource] that will be used to fetch the [NavigationRailModel] data.
  final DODataSource<NavigationRailModel?> navigationRailsDataSource = DataRepositories.instance.digitalOasis.navigationRailsDataSource;

  /// [checkboxesDataSource] is the [DODataSource] that will be used to fetch the [CheckboxModel] data.
  final DODataSource<CheckboxModel?> checkboxesDataSource = DataRepositories.instance.digitalOasis.checkboxesDataSource;

  /// [radiosDataSource] is the [DODataSource] that will be used to fetch the [RadioModel] data.
  final DODataSource<RadioModel?> radiosDataSource = DataRepositories.instance.digitalOasis.radiosDataSource;

  /// [switchesDataSource] is the [DODataSource] that will be used to fetch the [SwitchModel] data.
  final DODataSource<SwitchModel?> switchesDataSource = DataRepositories.instance.digitalOasis.switchesDataSource;

  /// [drawersDataSource] is the [DODataSource] that will be used to fetch the [DrawerModel] data.
  final DODataSource<DrawerModel?> drawersDataSource = DataRepositories.instance.digitalOasis.drawersDataSource;

  /// [listTilesDataSource] is the [DODataSource] that will be used to fetch the [ListTileModel] data.
  final DODataSource<ListTileModel?> listTilesDataSource = DataRepositories.instance.digitalOasis.listTilesDataSource;

  /// [menuStylesDataSource] is the [DODataSource] that will be used to fetch the [MenuStyleModel] data.
  final DODataSource<MenuStyleModel?> menuStylesDataSource = DataRepositories.instance.digitalOasis.menuStylesDataSource;

  /// [menuBarsDataSource] is the [DODataSource] that will be used to fetch the [MenuBarModel] data.
  final DODataSource<MenuBarModel?> menuBarsDataSource = DataRepositories.instance.digitalOasis.menuBarsDataSource;

  /// [navigationBarsDataSource] is the [DODataSource] that will be used to fetch the [NavigationBarModel] data.
  final DODataSource<NavigationBarModel?> navigationBarsDataSource = DataRepositories.instance.digitalOasis.navigationBarsDataSource;

  /// [navigationDrawersDataSource] is the [DODataSource] that will be used to fetch the [NavigationDrawerModel] data.
  final DODataSource<NavigationDrawerModel?> navigationDrawersDataSource = DataRepositories.instance.digitalOasis.navigationDrawersDataSource;

  /// [progressIndicatorsDataSource] is the [DODataSource] that will be used to fetch the [ProgressIndicatorModel] data.
  final DODataSource<ProgressIndicatorModel?> progressIndicatorsDataSource = DataRepositories.instance.digitalOasis.progressIndicatorsDataSource;

  /// [searchBarsDataSource] is the [DODataSource] that will be used to fetch the [SearchBarModel] data.
  final DODataSource<SearchBarModel?> searchBarsDataSource = DataRepositories.instance.digitalOasis.searchBarsDataSource;

  /// [searchViewsDataSource] is the [DODataSource] that will be used to fetch the [SearchViewModel] data.
  final DODataSource<SearchViewModel?> searchViewsDataSource = DataRepositories.instance.digitalOasis.searchViewsDataSource;

  /// [tabBarStylesDataSource] is the [DODataSource] that will be used to fetch the [TabBarModel] data.
  final DODataSource<TabBarModel?> tabBarStylesDataSource = DataRepositories.instance.digitalOasis.tabBarStylesDataSource;

  /// [DORepository] constructor.
  DORepository();

  /// [fetchTheme] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<BaseThemeModel?>? fetchTheme({required String id}) {
    return baseThemeDataSource.get(id);
  }

  @override
  Future<void>? addTheme(BaseThemeModel theme) {
    return baseThemeDataSource.add(theme);
  }

  @override
  Future<void>? deleteTheme(String id) {
    return baseThemeDataSource.delete(id);
  }

  @override
  Future<void>? updateTheme(BaseThemeModel theme) {
    return baseThemeDataSource.update(theme.id, theme);
  }

  @override
  Future<void>? addComponentTheme(ComponentThemesModel theme) {
    return componentsThemesDataSource.add(theme);
  }

  @override
  Future<void>? deleteComponentTheme(String id) {
    return componentsThemesDataSource.delete(id);
  }

  @override
  Future<void>? updateComponentTheme(ComponentThemesModel theme) {
    return componentsThemesDataSource.update(theme.id, theme);
  }

  /// [fetchComponentsTheme] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<ComponentThemesModel?>? fetchComponentsTheme({
    required String id,
  }) async {
    final theme = await componentsThemesDataSource.get(id);
    return theme ?? ComponentThemesModel(id: id);
  }

  /// [fetchThemes] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<List<BaseThemeModel?>> fetchThemes() async {
    final baseThemes = await baseThemeDataSource.getAll();
    return baseThemes;
  }

  /// [fetchComponentThemes] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<List<ComponentThemesModel?>> fetchComponentThemes() async {
    return componentsThemesDataSource.getAll();
  }
}
