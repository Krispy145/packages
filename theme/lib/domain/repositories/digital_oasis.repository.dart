import 'package:theme/data/models/appbars/appbar_model.dart';
import 'package:theme/data/models/appbars/bottom_appbar_model.dart';
import 'package:theme/data/models/badges/badge_model.dart';
import 'package:theme/data/models/box_decorations/box_decoration_model.dart';
import 'package:theme/data/models/buttons/button_style_model.dart';
import 'package:theme/data/models/buttons/floating_action_button_model.dart';
import 'package:theme/data/models/buttons/toggle_button_model.dart';
import 'package:theme/data/models/cards/card_model.dart';
import 'package:theme/data/models/checkboxes/checkbox_model.dart';
import 'package:theme/data/models/chips/chip_model.dart';
import 'package:theme/data/models/colors/color_model.dart';
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
import 'package:theme/data/models/text/text_style_model.dart';
import 'package:theme/data/models/theme/theme.dart';
import 'package:theme/data/models/tooltips/tooltip_model.dart';
import 'package:theme/data/sources/digital_oasis/_source.dart';

import '/data/repositories/_repositories.dart';
import 'base.repository.dart';

/// [DigitalOasisRepository] extends the [BaseThemeRepository] class used for fetching Themes data fro Digital Oasis database
/// Currently retrieving data from `Supabase`
class DigitalOasisRepository extends BaseThemeRepository {
  /// [baseThemeDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [BaseThemeModel] data.
  final DigitalOasisDataSource<BaseThemeModel> baseThemeDataSource = DataRepositories.instance.digitalOasis.baseThemesDataSource;

  /// [componentsThemesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ComponentThemesModel] data.
  final DigitalOasisDataSource<ComponentThemesModel?> componentsThemesDataSource = DataRepositories.instance.digitalOasis.componentsThemesDataSource;

  /// [colorsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ColorModel] data.
  final DigitalOasisDataSource<ColorModel> colorsDataSource = DataRepositories.instance.digitalOasis.colorsDataSource;

  /// [textStylesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [TextStyleModel] data.
  final DigitalOasisDataSource<TextStyleModel> textStylesDataSource = DataRepositories.instance.digitalOasis.textStylesDataSource;

  /// [buttonsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ButtonStyleModel] data.
  final DigitalOasisDataSource<ButtonStyleModel?> buttonsDataSource = DataRepositories.instance.digitalOasis.buttonsDataSource;

  /// [floatingActionButtonsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [FloatingActionButtonModel] data.
  final DigitalOasisDataSource<FloatingActionButtonModel?> floatingActionButtonsDataSource = DataRepositories.instance.digitalOasis.floatingActionButtonsDataSource;

  /// [toggleButtonsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ToggleButtonModel] data.
  final DigitalOasisDataSource<ToggleButtonModel?> toggleButtonsDataSource = DataRepositories.instance.digitalOasis.toggleButtonsDataSource;

  /// [inputDecorationsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [InputDecorationModel] data.
  final DigitalOasisDataSource<InputDecorationModel?> inputDecorationsDataSource = DataRepositories.instance.digitalOasis.inputDecorationsDataSource;

  /// [boxDecorationsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [BoxDecorationModel] data.
  final DigitalOasisDataSource<BoxDecorationModel?> boxDecorationsDataSource = DataRepositories.instance.digitalOasis.boxDecorationsDataSource;

  /// [cardsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [CardModel] data.
  final DigitalOasisDataSource<CardModel?> cardsDataSource = DataRepositories.instance.digitalOasis.cardsDataSource;

  /// [snackbarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [SnackbarModel] data.
  final DigitalOasisDataSource<SnackbarModel?> snackbarsDataSource = DataRepositories.instance.digitalOasis.snackbarsDataSource;

  /// [badgesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [BadgeModel] data.
  final DigitalOasisDataSource<BadgeModel?> badgesDataSource = DataRepositories.instance.digitalOasis.badgesDataSource;

  /// [appbarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [AppbarModel] data.
  final DigitalOasisDataSource<AppbarModel?> appbarsDataSource = DataRepositories.instance.digitalOasis.appbarsDataSource;

  /// [bottomAppbarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [BottomAppbarModel] data.
  final DigitalOasisDataSource<BottomAppbarModel?> bottomAppbarsDataSource = DataRepositories.instance.digitalOasis.bottomAppbarsDataSource;

  /// [dropdownsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [DropdownModel] data.
  final DigitalOasisDataSource<DropdownModel?> dropdownsDataSource = DataRepositories.instance.digitalOasis.dropdownsDataSource;

  /// [chipsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ChipModel] data.
  final DigitalOasisDataSource<ChipModel?> chipsDataSource = DataRepositories.instance.digitalOasis.chipsDataSource;

  /// [dialogsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [DialogModel] data.
  final DigitalOasisDataSource<DialogModel?> dialogsDataSource = DataRepositories.instance.digitalOasis.dialogsDataSource;

  /// [popupMenusDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [PopupMenuModel] data.
  final DigitalOasisDataSource<PopupMenuModel?> popupMenusDataSource = DataRepositories.instance.digitalOasis.popupMenusDataSource;

  /// [slidersDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [SliderModel] data.
  final DigitalOasisDataSource<SliderModel?> slidersDataSource = DataRepositories.instance.digitalOasis.slidersDataSource;

  /// [scrollbarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ScrollbarModel] data.
  final DigitalOasisDataSource<ScrollbarModel?> scrollbarsDataSource = DataRepositories.instance.digitalOasis.scrollbarsDataSource;

  /// [tooltipsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [TooltipModel] data.
  final DigitalOasisDataSource<TooltipModel?> tooltipsDataSource = DataRepositories.instance.digitalOasis.tooltipsDataSource;

  /// [navigationRailsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [NavigationRailModel] data.
  final DigitalOasisDataSource<NavigationRailModel?> navigationRailsDataSource = DataRepositories.instance.digitalOasis.navigationRailsDataSource;

  /// [checkboxesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [CheckboxModel] data.
  final DigitalOasisDataSource<CheckboxModel?> checkboxesDataSource = DataRepositories.instance.digitalOasis.checkboxesDataSource;

  /// [radiosDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [RadioModel] data.
  final DigitalOasisDataSource<RadioModel?> radiosDataSource = DataRepositories.instance.digitalOasis.radiosDataSource;

  /// [switchesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [SwitchModel] data.
  final DigitalOasisDataSource<SwitchModel?> switchesDataSource = DataRepositories.instance.digitalOasis.switchesDataSource;

  /// [drawersDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [DrawerModel] data.
  final DigitalOasisDataSource<DrawerModel?> drawersDataSource = DataRepositories.instance.digitalOasis.drawersDataSource;

  /// [listTilesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ListTileModel] data.
  final DigitalOasisDataSource<ListTileModel?> listTilesDataSource = DataRepositories.instance.digitalOasis.listTilesDataSource;

  /// [menuStylesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [MenuModel] data.
  final DigitalOasisDataSource<MenuModel?> menuStylesDataSource = DataRepositories.instance.digitalOasis.menuStylesDataSource;

  /// [menuBarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [MenuBarModel] data.
  final DigitalOasisDataSource<MenuBarModel?> menuBarsDataSource = DataRepositories.instance.digitalOasis.menuBarsDataSource;

  /// [navigationBarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [NavigationBarModel] data.
  final DigitalOasisDataSource<NavigationBarModel?> navigationBarsDataSource = DataRepositories.instance.digitalOasis.navigationBarsDataSource;

  /// [navigationDrawersDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [NavigationDrawerModel] data.
  final DigitalOasisDataSource<NavigationDrawerModel?> navigationDrawersDataSource = DataRepositories.instance.digitalOasis.navigationDrawersDataSource;

  /// [progressIndicatorsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [ProgressIndicatorModel] data.
  final DigitalOasisDataSource<ProgressIndicatorModel?> progressIndicatorsDataSource = DataRepositories.instance.digitalOasis.progressIndicatorsDataSource;

  /// [searchBarsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [SearchBarModel] data.
  final DigitalOasisDataSource<SearchBarModel?> searchBarsDataSource = DataRepositories.instance.digitalOasis.searchBarsDataSource;

  /// [searchViewsDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [SearchViewModel] data.
  final DigitalOasisDataSource<SearchViewModel?> searchViewsDataSource = DataRepositories.instance.digitalOasis.searchViewsDataSource;

  /// [tabBarStylesDataSource] is the [DigitalOasisDataSource] that will be used to fetch the [TabBarModel] data.
  final DigitalOasisDataSource<TabBarModel?> tabBarStylesDataSource = DataRepositories.instance.digitalOasis.tabBarStylesDataSource;

  /// [DigitalOasisRepository] constructor.
  DigitalOasisRepository();

  /// [fetchTheme] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<BaseThemeModel> fetchTheme({required String id}) async {
    final result = await baseThemeDataSource.get(id);
    return result!;
  }

  /// [fetchComponentsTheme] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<ComponentThemesModel?> fetchComponentsTheme({required String id}) {
    return componentsThemesDataSource.get(id);
  }

  /// [fetchThemes] is the method that will be used to fetch the [BaseThemeModel] data.
  @override
  Future<List<BaseThemeModel?>> fetchThemes() {
    return baseThemeDataSource.getAll();
  }

  /// [fetchComponentThemes] is the method that will be used to fetch the [ComponentThemesModel] data.
  @override
  Future<List<ComponentThemesModel?>> fetchComponentThemes() {
    return componentsThemesDataSource.getAll();
  }
}
